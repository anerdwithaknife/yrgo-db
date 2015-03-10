<?php

require_once 'inheritance-animal.php';

interface AttackableInterface {
    public function setHP($hp);
    public function getHP();
    public function getName();
    public function isDead();
}


abstract class Character implements AttackableInterface {
    protected $name;
    protected $hp;

    function __construct($name, $hp) {
        $this->hp = $hp;
        $this->name = $name;
    }

    function setName($name) {
        $this->name = $name;
    }

    function getName() {
        return $this->name;
    }

    function setHP($hp) {
        $this->hp = $hp;
    }

    function getHP() {
        return $this->hp;
    }

    function isDead() {
        return ($this->hp <= 0);
    }

    private function showWinner($winner) {
        echo $winner->getName().' wins with '.$winner->getHP().' HP left!';
    }

    function attack(AttackableInterface $antagonist) {
        echo $this->getName() . ' ('.$this->getHP().' HP) vs ' . $antagonist->getName() . '<br>';
        while (true) {
            $damage = rand(0,10);
            //$antagonist->hp -= $damage;
            $antagonist->setHP( $antagonist->getHP() - $damage );
            if ($antagonist->isDead()) {
                $this->showWinner($this);
                return;
            }

            $damage = rand(0,10);
            //$this->hp -= $damage;
            $this->setHP( $this->getHP() - $damage );
            if ($this->isDead()) {
                $this->showWinner($antagonist);
                return;
            }
        }
    }
}

class Enemy extends Character {
    function getName() {
        return $this->name;
    }
}

class Player extends Character {
    function getName() {
        return $this->name . " (player) " ;
    }

}


class KillerDog extends Dog implements AttackableInterface {
    private $hp = 100;

    public function setHP($hp) {
        $this->hp = $hp;
    }
    public function getHP() {
        return $this->hp;
    }
    public function getName() {
        return 'Fido';
    }
    public function isDead() {
        return ($this->hp <= 0);
    }
}

