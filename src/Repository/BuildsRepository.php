<?php

namespace App\Repository;

use App\Entity\Builds;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Builds|null find($id, $lockMode = null, $lockVersion = null)
 * @method Builds|null findOneBy(array $criteria, array $orderBy = null)
 * @method Builds[]    findAll()
 * @method Builds[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BuildsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Builds::class);
    }

    // /**
    //  * @return Builds[] Returns an array of Builds objects
    //  */
    public function getBuildById($id)
    {
        $request = "SELECT * FROM builds
        WHERE id = :id";

        $params = array(
            "id" => $id
        );

        $rsl = $this->getEntityManager()->getConnection()->prepare($request);
        $rsl->executeQuery($params);

        return $rsl->fetch();
    }
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
    public function findOneBySomeField($value): ?Builds
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
