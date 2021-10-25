<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Personnages
 *
 * @ORM\Table(name="personnages")
 * @ORM\Entity(repositoryClass="App\Repository\PersonnagesRepository")
 */
class Personnages
{
    /**
     * @var string
     *
     * @ORM\Column(name="id", type="string", length=255, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var int
     *
     * @ORM\Column(name="state", type="integer", nullable=false)
     */
    private $state;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="cooldown", type="string", length=255, nullable=false)
     */
    private $cooldown;

    public function getId(): ?string
    {
        return $this->id;
    }

    public function getState(): ?int
    {
        return $this->state;
    }

    public function setState(int $state): self
    {
        $this->state = $state;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getCooldown(): ?string
    {
        return $this->cooldown;
    }

    public function setCooldown(string $cooldown): self
    {
        $this->cooldown = $cooldown;

        return $this;
    }
}
