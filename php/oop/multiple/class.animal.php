<?php

abstract class Animal {
    protected $legs;
    protected $sound;

    public function makeSound() {
        echo strtoupper($this->sound);
    }    

    public function setLegs($legs) {
        if ((int)$legs < 0) 
            return;

        $this->legs = $legs;
    }

    public function getLegs() {
        return $this->legs;
    }
}

class Dog extends Animal {
    protected $legs = 4;
    protected $sound = 'voff';
}

class Bird extends Animal {
    protected $legs = 2;
    protected $sound = 'squak';
}

class Eagle extends Bird {
    protected $sound = 'majestic squak';
}

class Crow extends Bird {
}

