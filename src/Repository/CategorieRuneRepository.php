<?php

namespace App\Repository;

use App\Entity\CategorieRune;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method CategorieRune|null find($id, $lockMode = null, $lockVersion = null)
 * @method CategorieRune|null findOneBy(array $criteria, array $orderBy = null)
 * @method CategorieRune[]    findAll()
 * @method CategorieRune[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CategorieRuneRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CategorieRune::class);
    }

    // /**
    //  * @return CategorieRune[] Returns an array of CategorieRune objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('u.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?CategorieRune
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
