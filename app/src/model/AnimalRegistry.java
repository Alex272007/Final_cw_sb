package model;

import java.util.ArrayList;
import java.util.List;

// Класс для управления животными
public class AnimalRegistry {
    private List<Animal> animals;

    public AnimalRegistry() {
        this.animals = new ArrayList<>();
    }

    public void addAnimal(Animal animal) {
        animals.add(animal);
    }

    public List<Animal> getAnimals() {
        return animals;
    }

    public Animal findAnimalById(int id) {
        for (Animal animal : animals) {
            if (animal.getId() == id) {
                return animal;
            }
        }
        return null;
    }

    public List<Animal> getAnimalsByType(String type) {
        List<Animal> filteredAnimals = new ArrayList<>();
        for (Animal animal : animals) {
            if (animal.getType().equals(type)) {
                filteredAnimals.add(animal);
            }
        }
        return filteredAnimals;
    }

    //Метод для удаления животного по id
    public boolean removeAnimalById(int id) {
        Animal animalToRemove = findAnimalById(id);
        if (animalToRemove != null) {
            animals.remove(animalToRemove);
            return true;
        }
        return false;
    }
}