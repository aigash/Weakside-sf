<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Runes
 *
 * @ORM\Table(name="runes", indexes={@ORM\Index(name="id_type", columns={"id_type"}), @ORM\Index(name="id_categorie", columns={"id_categorie"})})
 * @ORM\Entity(repositoryClass="App\Repository\RunesRepository")
 */
class Runes
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
     * @var string
     *
     * @ORM\Column(name="image", type="string", length=255, nullable=false)
     */
    private $image;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="text", length=65535, nullable=true)
     */
    private $description;

    /**
     * @var \CategorieRune
     *
     * @ORM\ManyToOne(targetEntity="CategorieRune")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_categorie", referencedColumnName="id")
     * })
     */
    private $idCategorie;

    /**
     * @var \TypeRune
     *
     * @ORM\ManyToOne(targetEntity="TypeRune")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_type", referencedColumnName="id")
     * })
     */
    private $idType;

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

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getIdCategorie(): ?CategorieRune
    {
        return $this->idCategorie;
    }

    public function setIdCategorie(?CategorieRune $idCategorie): self
    {
        $this->idCategorie = $idCategorie;

        return $this;
    }

    public function getIdType(): ?TypeRune
    {
        return $this->idType;
    }

    public function setIdType(?TypeRune $idType): self
    {
        $this->idType = $idType;

        return $this;
    }
}
