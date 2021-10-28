<?php

namespace App\Controller;

use App\Repository\PersonnagesRepository;
use App\Repository\OtherStuffRepository;
use ArrayObject;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MatchupsController extends AbstractController
{
    #[Route('/matchup{idM},{idE}', name: 'matchup', methods: ['GET', 'HEAD'])]
    public function matchups(OtherStuffRepository $otherStuffRepository, $idM, $idE): Response
    {
        $matchups = $otherStuffRepository->findMatchup($idM, $idE);
        $matchups['runes'] = json_decode('[' . $matchups['runes'] . ']', true);
        $matchups['items_json'] = json_decode('[' . $matchups['items_json'] . ']', true);

        function record_sort($records, $field, $reverse = false)
        {
            $hash = array();

            foreach ($records as $key => $record) {
                $hash[$record[$field] . $key] = $record;
            }

            ($reverse) ? krsort($hash) : ksort($hash);

            $records = array();

            foreach ($hash as $record) {
                $records[] = $record;
            }

            return $records;
        }

        $items = record_sort($matchups['items_json'], "type");
        $runes = record_sort($matchups['runes'], "type");

        return $this->render('matchups/matchup.html.twig', [
            'matchups' => $matchups,
            'items' => $items,
            'runes' => $runes
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
