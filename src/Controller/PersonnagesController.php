<?php

namespace App\Controller;

use App\Repository\PersonnagesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PersonnagesController extends AbstractController
{
    #[Route('/selection', name: 'selection')]
    public function selectChamp(PersonnagesRepository $personnagesRepository): Response
    {
        $selectChamp = $personnagesRepository->findBy(
            ['id' => ["Akali", "Camille", "Fiora", "Irelia", "Quinn", "Riven"]]
        );

        return $this->render('matchups/selection.html.twig', [
            'selectChamp' => $selectChamp
        ]);
    }

    #[Route('/adversaires', name: 'reverse')]
    public function adversairesReverse(PersonnagesRepository $personnagesRepository): Response
    {
        $adversairesR = $personnagesRepository->findAll();

        return $this->render('matchups/adversaires.html.twig', [
            'adversairesR' => $adversairesR,
        ]);
    }

    #[Route('/adversaires{id}', name: 'adversairesChamp', methods: ['GET', 'HEAD'])]
    public function adversaires(PersonnagesRepository $personnagesRepository, $id): Response
    {
        $adversaires = $personnagesRepository->findByNot($id);

        return $this->render('matchups/adversaires.html.twig', [
            'adversaires' => $adversaires,
            'id' => $id
        ]);
    }

    /*#[Route('/reverse{idE}', name: 'reversechamp', methods: ['GET', 'HEAD'])]
    public function reverseChamp(PersonnagesRepository $personnagesRepository, $idE): Response
    {
        $champ = $personnagesRepository->findOneBy(
            ['id' => $idE]
        );

        return $this->render('matchups/reverse.html.twig', [
            'champ' => $champ
        ]);
    }*/
}
