<?php

namespace App\Repository;

use App\Entity\Runes;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Runes|null find($id, $lockMode = null, $lockVersion = null)
 * @method Runes|null findOneBy(array $criteria, array $orderBy = null)
 * @method Runes[]    findAll()
 * @method Runes[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RunesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Runes::class);
    }

    // /**
    //  * @return Runes[] Returns an array of Runes objects
    //  */

    public function getRuneById($id)
    {
        $request = "SELECT r.nom, r.image, r.description, tr.nom AS type_rune, cr.nom AS categorie_rune, cr.image AS categorie_image, cr.description AS categorie_description FROM runes r
        LEFT JOIN type_rune tr ON r.id_type = tr.id
        LEFT JOIN categorie_rune cr ON r.id_categorie = cr.id
        WHERE r.id = :id";

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
    public function findOneBySomeField($value): ?Runes
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
