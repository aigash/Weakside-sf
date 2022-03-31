<?php

namespace App\Repository;

use App\Entity\Personnages;
use App\Entity\DifficultyIndex;
use App\Entity\OtherStuff;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method OtherStuff|null find($id, $lockMode = null, $lockVersion = null)
 * @method OtherStuff|null findOneBy(array $criteria, array $orderBy = null)
 * @method OtherStuff[]    findAll()
 * @method OtherStuff[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class OtherStuffRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, OtherStuff::class);
    }

    public function findMatchup($idM, $idE)
    {
        $request = " SELECT os.*, p.*, p2.id as my_character_id, p2.name as my_character_name, p2.cooldown as my_cooldown, couleur FROM other_stuff os 
        LEFT JOIN personnages p ON p.id = os.id_character 
        LEFT JOIN personnages p2 ON p2.id = os.id_my_character 
        LEFT JOIN difficulty_index di ON di.id = os.difficulty
        LEFT JOIN builds b ON b.id = os.id_build
        LEFT JOIN set_runes sr ON sr.id = os.id_setrunes
        WHERE os.id_my_character = :idm 
        AND os.id_character = :ide ";

        $params = array(
            "idm" => $idM,
            "ide" => $idE
        );

        $rsl = $this->getEntityManager()->getConnection()->prepare($request);
        $rsl->executeQuery($params);

        return $rsl->fetch();
    }

    public function reverseMatchup($idE)
    {
        $request = 'SELECT os.*, p.*, p2.name as enemy_name, p2.id as enemy_id, couleur, level, di.id as difid FROM other_stuff os
        LEFT JOIN personnages p on p.id = os.id_my_character
        LEFT JOIN personnages p2 on p2.id = os.id_character
        LEFT JOIN difficulty_index di on di.id = os.difficulty
        WHERE os.id_character = :ide 
        AND os.id_my_character IN ("Akali", "Camille", "Fiora", "Irelia", "Quinn", "Riven") 
        ORDER BY di.id ';

        $params = array(
            "ide" => $idE
        );

        $rsl = $this->getEntityManager()->getConnection()->prepare($request);
        $rsl->executeQuery($params);

        return $rsl->fetchAll();
    }

    // /**
    //  * @return OtherStuff[] Returns an array of OtherStuff objects
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
    public function findOneBySomeField($value): ?OtherStuff
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
