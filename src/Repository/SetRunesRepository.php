<?php

namespace App\Repository;

use App\Entity\SetRunes;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method SetRunes|null find($id, $lockMode = null, $lockVersion = null)
 * @method SetRunes|null findOneBy(array $criteria, array $orderBy = null)
 * @method SetRunes[]    findAll()
 * @method SetRunes[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SetRunesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SetRunes::class);
    }

    // /**
    //  * @return SetRunes[] Returns an array of SetRunes objects
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
    public function findOneBySomeField($value): ?SetRunes
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
