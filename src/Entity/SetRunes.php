<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SetRunes
 *
 * @ORM\Table(name="set_runes", indexes={@ORM\Index(name="rune3", columns={"rune3"}), @ORM\Index(name="rune5", columns={"rune5"}), @ORM\Index(name="annexe2", columns={"annexe2"}), @ORM\Index(name="arbre_secondaire", columns={"arbre_secondaire"}), @ORM\Index(name="rune1", columns={"rune1"}), @ORM\Index(name="rune4", columns={"rune4"}), @ORM\Index(name="annexe1", columns={"annexe1"}), @ORM\Index(name="annexe3", columns={"annexe3"}), @ORM\Index(name="arbre_principal", columns={"arbre_principal"}), @ORM\Index(name="keystone", columns={"keystone"}), @ORM\Index(name="rune2", columns={"rune2"})})
 * @ORM\Entity(repositoryClass="App\Repository\SetRunesRepository")
 */
class SetRunes
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
     * @var \CategorieRune
     *
     * @ORM\ManyToOne(targetEntity="CategorieRune")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="arbre_principal", referencedColumnName="id")
     * })
     */
    private $arbrePrincipal;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="annexe2", referencedColumnName="id")
     * })
     */
    private $annexe2;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="annexe3", referencedColumnName="id")
     * })
     */
    private $annexe3;

    /**
     * @var \CategorieRune
     *
     * @ORM\ManyToOne(targetEntity="CategorieRune")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="arbre_secondaire", referencedColumnName="id")
     * })
     */
    private $arbreSecondaire;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="keystone", referencedColumnName="id")
     * })
     */
    private $keystone;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="rune1", referencedColumnName="id")
     * })
     */
    private $rune1;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="rune2", referencedColumnName="id")
     * })
     */
    private $rune2;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="rune3", referencedColumnName="id")
     * })
     */
    private $rune3;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="rune4", referencedColumnName="id")
     * })
     */
    private $rune4;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="rune5", referencedColumnName="id")
     * })
     */
    private $rune5;

    /**
     * @var \Runes
     *
     * @ORM\ManyToOne(targetEntity="Runes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="annexe1", referencedColumnName="id")
     * })
     */
    private $annexe1;

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

    public function getArbrePrincipal(): ?CategorieRune
    {
        return $this->arbrePrincipal;
    }

    public function setArbrePrincipal(?CategorieRune $arbrePrincipal): self
    {
        $this->arbrePrincipal = $arbrePrincipal;

        return $this;
    }

    public function getAnnexe2(): ?Runes
    {
        return $this->annexe2;
    }

    public function setAnnexe2(?Runes $annexe2): self
    {
        $this->annexe2 = $annexe2;

        return $this;
    }

    public function getAnnexe3(): ?Runes
    {
        return $this->annexe3;
    }

    public function setAnnexe3(?Runes $annexe3): self
    {
        $this->annexe3 = $annexe3;

        return $this;
    }

    public function getArbreSecondaire(): ?CategorieRune
    {
        return $this->arbreSecondaire;
    }

    public function setArbreSecondaire(?CategorieRune $arbreSecondaire): self
    {
        $this->arbreSecondaire = $arbreSecondaire;

        return $this;
    }

    public function getKeystone(): ?Runes
    {
        return $this->keystone;
    }

    public function setKeystone(?Runes $keystone): self
    {
        $this->keystone = $keystone;

        return $this;
    }

    public function getRune1(): ?Runes
    {
        return $this->rune1;
    }

    public function setRune1(?Runes $rune1): self
    {
        $this->rune1 = $rune1;

        return $this;
    }

    public function getRune2(): ?Runes
    {
        return $this->rune2;
    }

    public function setRune2(?Runes $rune2): self
    {
        $this->rune2 = $rune2;

        return $this;
    }

    public function getRune3(): ?Runes
    {
        return $this->rune3;
    }

    public function setRune3(?Runes $rune3): self
    {
        $this->rune3 = $rune3;

        return $this;
    }

    public function getRune4(): ?Runes
    {
        return $this->rune4;
    }

    public function setRune4(?Runes $rune4): self
    {
        $this->rune4 = $rune4;

        return $this;
    }

    public function getRune5(): ?Runes
    {
        return $this->rune5;
    }

    public function setRune5(?Runes $rune5): self
    {
        $this->rune5 = $rune5;

        return $this;
    }

    public function getAnnexe1(): ?Runes
    {
        return $this->annexe1;
    }

    public function setAnnexe1(?Runes $annexe1): self
    {
        $this->annexe1 = $annexe1;

        return $this;
    }
}
