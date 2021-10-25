<?php

namespace App\Repository;

use App\Entity\Personnages;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Personnages|null find($id, $lockMode = null, $lockVersion = null)
 * @method Personnages|null findOneBy(array $criteria, array $orderBy = null)
 * @method Personnages[]    findAll()
 * @method Personnages[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PersonnagesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Personnages::class);
    }

    public function findByNot($id)
    {
        $qb = $this->createQueryBuilder('u');
        $qb->where('u.id != :identifier')
            ->setParameter(':identifier', $id);

        return $qb->getQuery()
            ->getResult();
    }

    // /**
    //  * @return Personnages[] Returns an array of Personnages objects
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
    public function findOneBySomeField($value): ?Personnages
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
