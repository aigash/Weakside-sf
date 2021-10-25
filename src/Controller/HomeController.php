<?php

namespace App\Controller;

use App\Repository\NewsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'default')]
    #[Route('/home', name: 'home')]
    public function index(NewsRepository $newsRepository): Response
    {
        $News = [];
        $News = $newsRepository->findAll();

        return $this->render('home/index.html.twig', [
            'news' => $News
        ]);
    }
}
