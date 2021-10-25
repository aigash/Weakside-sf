<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Builds
 *
 * @ORM\Table(name="builds", indexes={@ORM\Index(name="item6", columns={"item6"}), @ORM\Index(name="situationnel2", columns={"situationnel2"}), @ORM\Index(name="situationnel4", columns={"situationnel4"}), @ORM\Index(name="item2", columns={"item2"}), @ORM\Index(name="item4", columns={"item4"}), @ORM\Index(name="item5", columns={"item5"}), @ORM\Index(name="situationnel1", columns={"situationnel1"}), @ORM\Index(name="situationnel3", columns={"situationnel3"}), @ORM\Index(name="situationnel5", columns={"situationnel5"}), @ORM\Index(name="item1", columns={"item1"}), @ORM\Index(name="item3", columns={"item3"})})
 * @ORM\Entity(repositoryClass="App\Repository\BuildsRepository")
 */
class Builds
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nom", type="string", length=255, nullable=false)
     */
    private $nom;

    /**
     * @var string|null
     *
     * @ORM\Column(name="commentaire", type="text", length=65535, nullable=true)
     */
    private $commentaire;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="item1", referencedColumnName="id")
     * })
     */
    private $item1;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="situationnel4", referencedColumnName="id")
     * })
     */
    private $situationnel4;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="situationnel5", referencedColumnName="id")
     * })
     */
    private $situationnel5;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="item2", referencedColumnName="id")
     * })
     */
    private $item2;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="item3", referencedColumnName="id")
     * })
     */
    private $item3;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="item4", referencedColumnName="id")
     * })
     */
    private $item4;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="item5", referencedColumnName="id")
     * })
     */
    private $item5;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="item6", referencedColumnName="id")
     * })
     */
    private $item6;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="situationnel1", referencedColumnName="id")
     * })
     */
    private $situationnel1;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="situationnel2", referencedColumnName="id")
     * })
     */
    private $situationnel2;

    /**
     * @var \Items
     *
     * @ORM\ManyToOne(targetEntity="Items")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="situationnel3", referencedColumnName="id")
     * })
     */
    private $situationnel3;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getCommentaire(): ?string
    {
        return $this->commentaire;
    }

    public function setCommentaire(?string $commentaire): self
    {
        $this->commentaire = $commentaire;

        return $this;
    }

    public function getItem1(): ?Items
    {
        return $this->item1;
    }

    public function setItem1(?Items $item1): self
    {
        $this->item1 = $item1;

        return $this;
    }

    public function getSituationnel4(): ?Items
    {
        return $this->situationnel4;
    }

    public function setSituationnel4(?Items $situationnel4): self
    {
        $this->situationnel4 = $situationnel4;

        return $this;
    }

    public function getSituationnel5(): ?Items
    {
        return $this->situationnel5;
    }

    public function setSituationnel5(?Items $situationnel5): self
    {
        $this->situationnel5 = $situationnel5;

        return $this;
    }

    public function getItem2(): ?Items
    {
        return $this->item2;
    }

    public function setItem2(?Items $item2): self
    {
        $this->item2 = $item2;

        return $this;
    }

    public function getItem3(): ?Items
    {
        return $this->item3;
    }

    public function setItem3(?Items $item3): self
    {
        $this->item3 = $item3;

        return $this;
    }

    public function getItem4(): ?Items
    {
        return $this->item4;
    }

    public function setItem4(?Items $item4): self
    {
        $this->item4 = $item4;

        return $this;
    }

    public function getItem5(): ?Items
    {
        return $this->item5;
    }

    public function setItem5(?Items $item5): self
    {
        $this->item5 = $item5;

        return $this;
    }

    public function getItem6(): ?Items
    {
        return $this->item6;
    }

    public function setItem6(?Items $item6): self
    {
        $this->item6 = $item6;

        return $this;
    }

    public function getSituationnel1(): ?Items
    {
        return $this->situationnel1;
    }

    public function setSituationnel1(?Items $situationnel1): self
    {
        $this->situationnel1 = $situationnel1;

        return $this;
    }

    public function getSituationnel2(): ?Items
    {
        return $this->situationnel2;
    }

    public function setSituationnel2(?Items $situationnel2): self
    {
        $this->situationnel2 = $situationnel2;

        return $this;
    }

    public function getSituationnel3(): ?Items
    {
        return $this->situationnel3;
    }

    public function setSituationnel3(?Items $situationnel3): self
    {
        $this->situationnel3 = $situationnel3;

        return $this;
    }
}
