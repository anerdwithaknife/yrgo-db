<?php

/**
 * Interface for defining a recipe object
 */
interface RecipeInterface {
    public function getName();
    public function getIngredients();
    public function getCookingTime();
}

/**
 * Food factory used to cook any recipe compliant with RecipeInterface
 */
class FoodFactory {
    private $recipe;
    private $startTime;

    // Type hinted so it only accepts RecipeInterface implementations
    function cook(RecipeInterface $recipe) {
        $this->recipe = $recipe;
        $this->startTime = time();
    }

    function stopOven() {
        $timeLeft = $this->timeLeft();

        if ($timeLeft > 2) 
            echo "The {$this->recipe->getName()} are not done";
        else if ($timeLeft < -2)
            echo "The {$this->recipe->getName()} are burnt";
        else
            echo "The {$this->recipe->getName()} came out perfect";
    }

    private function timeLeft() {
        $timePassed = time() - $this->startTime;
        return $this->recipe->getCookingTime() - $timePassed;
    }
}

/**
 * Scrambled eggs using RecipeInterface, no inheritance
 */
class ScrambledEggs implements RecipeInterface {
    public function getName() {
        return 'Scrambled Eggs';
    }

    public function getIngredients() {
        return ['eggs', 'salt', 'cream', 'butter'];
    }

    public function getCookingTime() {
        return 3;
    }
}

/**
 * Pancakes using RecipeInterface (no inheritance)
 */
class Pancakes implements RecipeInterface {
    public function getName() {
        return 'Pancakes';
    }

    public function getIngredients() {
        return ['milk', 'flour', 'baking powder', 'salt', 'white sugar', 'egg', 'melted butter'];
    }

    public function getCookingTime() {
        return 5;
    }
}

