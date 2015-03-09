<?php

abstract class Character {
    protected $name;
    public $hp;

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

    function isDead() {
        return ($this->hp <= 0);
    }

    function attack(Character $antagonist) {
        while (true) {
            $damage = rand(0,10);
            $antagonist->hp -= $damage;
            if ($antagonist->isDead()) {
                echo $this->getName().' wins!';
                return;
            }

            $damage = rand(0,10);
            $this->hp -= $damage;
            if ($this->isDead()) {
                echo $antagonist->getName().' wins!';
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

$p = new Player("Julien", 100);
$e = new Enemy("Molgan", 100);

echo $p->getName() . ' vs ' . $e->getName() . '<br>';
$p->attack($e);


