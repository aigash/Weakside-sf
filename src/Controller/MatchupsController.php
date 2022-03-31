<?php

namespace App\Controller;

use App\Repository\BuildsRepository;
use App\Repository\ItemsRepository;
use App\Repository\PersonnagesRepository;
use App\Repository\OtherStuffRepository;
use App\Repository\RunesRepository;
use App\Repository\SetRunesRepository;
use ArrayObject;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

include '../public/fonctions.php';

class MatchupsController extends AbstractController
{
    #[Route('/matchup{idM},{idE}', name: 'matchup', methods: ['GET', 'HEAD'])]
    public function matchups(OtherStuffRepository $otherStuffRepository, SetRunesRepository $setRunesRepository, RunesRepository $runesRepository, BuildsRepository $buildsRepository, ItemsRepository $itemsRepository, $idM, $idE): Response
    {
        // utilisation de la fonction apiRequest pour envoyer une requête à l'API afin d'avoir toutes les informations concernant les champions désirés sous forme de json
        $my_champ_data = json_decode(apiRequest("http://ddragon.leagueoflegends.com/cdn/11.22.1/data/fr_FR/champion/$idM.json"), true);
        $enemy_champ_data = json_decode(apiRequest("http://ddragon.leagueoflegends.com/cdn/11.22.1/data/fr_FR/champion/$idE.json"), true);

        // on stocke la partie du tableau qui nous intéresse de manière à pouvoir l'adapter à n'importe quel champion
        $my_champ = $my_champ_data['data']["$idM"];
        $enemy_champ = $enemy_champ_data['data']["$idE"];

        // on fait appel à la méthode finMatchup pour récupérer les infos du matchup
        $matchups = $otherStuffRepository->findMatchup($idM, $idE);

        // on récupère le set de runes correspondant au matchup
        $set_runes = $setRunesRepository->getSetRunesById($matchups['id_setrunes']);

        // on récupère l'id de chaque runes dans un tableau
        $id_runes = array($set_runes['keystone'], $set_runes['rune1'], $set_runes['rune2'], $set_runes['rune3'], $set_runes['rune4'], $set_runes['rune5'], $set_runes['annexe1'], $set_runes['annexe2'], $set_runes['annexe3']);
        $runes = array();
        // on ajoute les infos de chaque runes dans le tableau $runes
        foreach ($id_runes as $id_rune) {
            array_push($runes, $runesRepository->getRuneById($id_rune));
        }

        // même principe que pour les runes
        $build = $buildsRepository->getBuildById($matchups['id_build']);
        $id_items = array($build['item1'], $build['item2'], $build['item3'], $build['item4'], $build['item5'], $build['item6'], $build['situationnel1'], $build['situationnel2'], $build['situationnel3'], $build['situationnel4'], $build['situationnel5']);
        $items = array();
        foreach ($id_items as $id_item) {
            array_push($items, $itemsRepository->getitemById($id_item));
        }

        return $this->render('matchups/matchup.html.twig', [
            'matchups' => $matchups,
            'items' => $items,
            'runes' => $runes,
            'my_champ' => $my_champ,
            'enemy_champ' => $enemy_champ
        ]);
    }

    #[Route('/reverse{idE}', name: 'reversematchup', methods: ['GET', 'HEAD'])]
    public function reverses(OtherStuffRepository $otherStuffRepository, PersonnagesRepository $personnagesRepository, $idE): Response
    {
        $champ = $personnagesRepository->findOneBy(
            ['id' => $idE]
        );
        $reverses = $otherStuffRepository->reverseMatchup($idE);
        //dump($reverses);

        return $this->render('matchups/reverse.html.twig', [
            'reverses' => $reverses,
            'champ' => $champ,
            'idE' => $idE
        ]);
    }
}
