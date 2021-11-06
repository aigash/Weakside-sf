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
        $rawSql = " SELECT os.*, p.*, p2.id as my_character_id, p2.name as my_character_name, p2.cooldown as my_cooldown, couleur,
        (SELECT GROUP_CONCAT(JSON_OBJECT('nom', i.nom,
                                         'type', (CASE
                                                  WHEN i.id = b.item1 THEN 'item1'
                                                  WHEN i.id = b.item2 THEN 'item2'
                                                  WHEN i.id = b.item3 THEN 'item3'
                                                  WHEN i.id = b.item4 THEN 'item4'
                                                  WHEN i.id = b.item5 THEN 'item5'
                                                  WHEN i.id = b.item6 THEN 'item6'
                                                  WHEN i.id = b.situationnel1 THEN 'situationnel1'
                                                  WHEN i.id = b.situationnel2 THEN 'situationnel2'
                                                  WHEN i.id = b.situationnel3 THEN 'situationnel3'
                                                  WHEN i.id = b.situationnel4 THEN 'situationnel4'
                                                  WHEN i.id = b.situationnel5 THEN 'situationnel5'
                                                  END),
                                         'image', i.image)) 
         FROM items i WHERE i.id IN (b.item1, b.item2, b.item3, b.item4, b.item5, b.item6, 
                                       b.situationnel1, b.situationnel2, b.situationnel3, b.situationnel4, b.situationnel5)) 
        as items_json,
        (SELECT GROUP_CONCAT(JSON_OBJECT('nom', r.nom,
                                         'type', (CASE
                                                  WHEN r.id = sr.keystone THEN 'rune1'
                                                  WHEN r.id = sr.rune1 THEN 'rune2'
                                                  WHEN r.id = sr.rune2 THEN 'rune3'
                                                  WHEN r.id = sr.rune3 THEN 'rune4'
                                                  WHEN r.id = sr.rune4 THEN 'rune5'
                                                  WHEN r.id = sr.rune5 THEN 'rune6'
                                                  WHEN r.id = sr.annexe1 THEN 'rune7'
                                                  WHEN r.id = sr.annexe2 THEN 'rune8'
                                                  WHEN r.id = sr.annexe3 THEN 'rune9'
                                                  END),
                                         'image', r.image,
                                         'categorie_nom', cr.nom,
                                         'categorie_image', cr.image))
         FROM runes r 
         LEFT JOIN categorie_rune cr ON cr.id = r.id_categorie
         WHERE r.id IN (sr.keystone, sr.rune1, sr.rune2, sr.rune3, sr.rune4, sr.rune5, sr.annexe1, sr.annexe2, sr.annexe3)) 
         as runes
        FROM other_stuff os 
        INNER JOIN personnages p ON p.id = os.id_character 
        INNER JOIN personnages p2 ON p2.id = os.id_my_character 
        INNER JOIN difficulty_index di ON di.id = os.difficulty
        INNER JOIN builds b ON b.id = os.id_build
        INNER JOIN set_runes sr ON sr.id = os.id_setrunes
        WHERE os.id_my_character = :idm AND os.id_character = :ide ";

        $params = array(
            "idm" => $idM,
            "ide" => $idE
        );

        $stmt = $this->getEntityManager()->getConnection()->prepare($rawSql);
        $stmt->execute($params);

        return $stmt->fetch();
    }

    public function reverseMatchup($idE)
    {
        $rawSql = 'SELECT os.*, p.*, p2.name as enemy_name, p2.id as enemy_id, couleur, level, di.id as difid FROM other_stuff os
        INNER JOIN personnages p on p.id = os.id_my_character
        INNER JOIN personnages p2 on p2.id = os.id_character
        INNER JOIN difficulty_index di on di.id = os.difficulty
        WHERE os.id_character = :ide AND os.id_my_character IN ("Akali", "Camille", "Fiora", "Irelia", "Quinn", "Riven") ORDER BY di.id ';

        $params = array(
            "ide" => $idE
        );

        $stmt = $this->getEntityManager()->getConnection()->prepare($rawSql);
        $stmt->execute($params);

        return $stmt->fetchAll();
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
