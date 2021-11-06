<?php

namespace App\Controller;

use App\Repository\PersonnagesRepository;
use App\Repository\OtherStuffRepository;
use ArrayObject;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

include '../public/fonctions.php';

class MatchupsController extends AbstractController
{
    #[Route('/matchup{idM},{idE}', name: 'matchup', methods: ['GET', 'HEAD'])]
    public function matchups(OtherStuffRepository $otherStuffRepository, $idM, $idE): Response
    {
        // utilisation de la fonction apiRequest pour envoyer une requête à l'API afin d'avoir toutes les informations concernant les champions désirés sous forme de json
        $my_champ_data = json_decode(apiRequest("http://ddragon.leagueoflegends.com/cdn/11.22.1/data/fr_FR/champion/$idM.json"), true);
        $enemy_champ_data = json_decode(apiRequest("http://ddragon.leagueoflegends.com/cdn/11.22.1/data/fr_FR/champion/$idE.json"), true);
        // on stocke la partie du tableau qui nous intéresse de manière à pouvoir l'adapter à n'importe quel champion
        $my_champ = $my_champ_data['data']["$idM"];
        $enemy_champ = $enemy_champ_data['data']["$idE"];

        // on fait appel à la méthode finMatchup pour envoyer une query a la bdd et récupérer les info du matchup
        $matchups = $otherStuffRepository->findMatchup($idM, $idE);
        $matchups['runes'] = json_decode('[' . $matchups['runes'] . ']', true);
        $matchups['items_json'] = json_decode('[' . $matchups['items_json'] . ']', true);

        // on utilise la fonction record_sort afin de trier les items et les runes dans le bon ordre
        $items = record_sort($matchups['items_json'], "type");
        $runes = record_sort($matchups['runes'], "type");

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

        dump($reverses);

        return $this->render('matchups/reverse.html.twig', [
            'reverses' => $reverses,
            'champ' => $champ,
            'idE' => $idE
        ]);
    }
}
