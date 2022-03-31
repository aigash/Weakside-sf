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

    #[Route('/mentions', name: 'mentions')]
    public function mentions(): Response
    {
        return $this->render('mentions/mentions.html.twig', []);
    }

    #[Route('/about', name: 'about')]
    public function about(): Response
    {
        return $this->render('about/about.html.twig', []);
    }
}
