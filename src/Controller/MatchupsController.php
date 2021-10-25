<?php

namespace App\Controller;

use App\Repository\PersonnagesRepository;
use App\Repository\OtherStuffRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MatchupsController extends AbstractController
{
    #[Route('/matchup{idM},{idE}', name: 'matchup', methods: ['GET', 'HEAD'])]
    public function matchups(OtherStuffRepository $otherStuffRepository, $idM, $idE): Response
    {
        $matchups = $otherStuffRepository->findMatchup($idM, $idE);

        return $this->render('matchups/matchup.html.twig', [
            'matchups' => $matchups
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
