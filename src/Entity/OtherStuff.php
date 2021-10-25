<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * OtherStuff
 *
 * @ORM\Table(name="other_stuff", indexes={@ORM\Index(name="id_character", columns={"id_character"}), @ORM\Index(name="id_build", columns={"id_build"}), @ORM\Index(name="id_my_character", columns={"id_my_character"}), @ORM\Index(name="difficulty", columns={"difficulty"}), @ORM\Index(name="id_setrunes", columns={"id_setrunes"})})
 * @ORM\Entity(repositoryClass="App\Repository\OtherStuffRepository")
 */
class OtherStuff
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
     * @ORM\Column(name="runes", type="string", length=255, nullable=false)
     */
    private $runes;

    /**
     * @var string
     *
     * @ORM\Column(name="item_path", type="string", length=255, nullable=false)
     */
    private $itemPath;

    /**
     * @var string
     *
     * @ORM\Column(name="tips", type="text", length=65535, nullable=false)
     */
    private $tips;

    /**
     * @var string|null
     *
     * @ORM\Column(name="parry", type="text", length=65535, nullable=true)
     */
    private $parry;

    /**
     * @var string|null
     *
     * @ORM\Column(name="wave", type="text", length=65535, nullable=true)
     */
    private $wave;

    /**
     * @var string|null
     *
     * @ORM\Column(name="teamfight_split", type="string", length=255, nullable=true)
     */
    private $teamfightSplit;

    /**
     * @var \DifficultyIndex
     *
     * @ORM\ManyToOne(targetEntity="DifficultyIndex")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="difficulty", referencedColumnName="id")
     * })
     */
    private $difficulty;

    /**
     * @var \Personnages
     *
     * @ORM\ManyToOne(targetEntity="Personnages")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_my_character", referencedColumnName="id")
     * })
     */
    private $idMyCharacter;

    /**
     * @var \Personnages
     *
     * @ORM\ManyToOne(targetEntity="Personnages")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_character", referencedColumnName="id")
     * })
     */
    private $idCharacter;

    /**
     * @var \Builds
     *
     * @ORM\ManyToOne(targetEntity="Builds")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_build", referencedColumnName="id")
     * })
     */
    private $idBuild;

    /**
     * @var \SetRunes
     *
     * @ORM\ManyToOne(targetEntity="SetRunes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_setrunes", referencedColumnName="id")
     * })
     */
    private $idSetrunes;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getRunes(): ?string
    {
        return $this->runes;
    }

    public function setRunes(string $runes): self
    {
        $this->runes = $runes;

        return $this;
    }

    public function getItemPath(): ?string
    {
        return $this->itemPath;
    }

    public function setItemPath(string $itemPath): self
    {
        $this->itemPath = $itemPath;

        return $this;
    }

    public function getTips(): ?string
    {
        return $this->tips;
    }

    public function setTips(string $tips): self
    {
        $this->tips = $tips;

        return $this;
    }

    public function getParry(): ?string
    {
        return $this->parry;
    }

    public function setParry(?string $parry): self
    {
        $this->parry = $parry;

        return $this;
    }

    public function getWave(): ?string
    {
        return $this->wave;
    }

    public function setWave(?string $wave): self
    {
        $this->wave = $wave;

        return $this;
    }

    public function getTeamfightSplit(): ?string
    {
        return $this->teamfightSplit;
    }

    public function setTeamfightSplit(?string $teamfightSplit): self
    {
        $this->teamfightSplit = $teamfightSplit;

        return $this;
    }

    public function getDifficulty(): ?DifficultyIndex
    {
        return $this->difficulty;
    }

    public function setDifficulty(?DifficultyIndex $difficulty): self
    {
        $this->difficulty = $difficulty;

        return $this;
    }

    public function getIdMyCharacter(): ?Personnages
    {
        return $this->idMyCharacter;
    }

    public function setIdMyCharacter(?Personnages $idMyCharacter): self
    {
        $this->idMyCharacter = $idMyCharacter;

        return $this;
    }

    public function getIdCharacter(): ?Personnages
    {
        return $this->idCharacter;
    }

    public function setIdCharacter(?Personnages $idCharacter): self
    {
        $this->idCharacter = $idCharacter;

        return $this;
    }

    public function getIdBuild(): ?Builds
    {
        return $this->idBuild;
    }

    public function setIdBuild(?Builds $idBuild): self
    {
        $this->idBuild = $idBuild;

        return $this;
    }

    public function getIdSetrunes(): ?SetRunes
    {
        return $this->idSetrunes;
    }

    public function setIdSetrunes(?SetRunes $idSetrunes): self
    {
        $this->idSetrunes = $idSetrunes;

        return $this;
    }
}
