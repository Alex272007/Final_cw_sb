package controller;

import model.Animal;
import model.AnimalRegistry;
import model.Counter;
import view.AnimalView;

import java.util.List;

public class AnimalController {

    private AnimalRegistry registry;
    private AnimalView view;

    public AnimalController(AnimalRegistry registry, AnimalView view) {
        this.registry = registry;
        this.view = view;
    }

    public void run() {
        boolean exit = false;

        while (!exit) {
            int choice = view.displayMenu();

            switch (choice) {
                case 1:
                    view.showAnimals(registry.getAnimals());
                    break;
                case 2:
                    try (Counter counter = new Counter()) {
                        Animal newAnimal = view.inputNewAnimal();
                        if (newAnimal != null) {
                            registry.addAnimal(newAnimal);
                            counter.add();
                            view.showSuccess("Добавлено новое живонтое");
                        } else {
                        view.showError("Не удалось добавить животное");
                        }
                    } catch (Exception e) {
                        view.showError("Ошибка: " + e.getMessage());
                    }
                    break;
                case 3:
                    int id = view.inputAnimalId();
                    Animal animal = registry.findAnimalById(id);
                    if (animal != null) {
                        view.showCommands(animal);
                    } else {
                        view.showError("Животное не найдено");
                    }
                    break;
                case 4:
                    id = view.inputAnimalId();
                    animal = registry.findAnimalById(id);
                    if (animal != null) {
                        String newCommand = view.inputNewCommand();
                        animal.addCommand(newCommand);
                        view.showSuccess("Команда добавлена");
                    } else {
                        view.showError("Животное не найдено");
                    }
                    break;
                case 5:
                    id = view.inputAnimalId();
                    boolean isRemoved = registry.removeAnimalById(id);
                    if (isRemoved) {
                        view.showSuccess("Животное удалено");
                    } else {
                        view.showError("Животное с таким ID не найдено");
                    }
                    break;
                case 6:
                    System.out.println("Введите тип животных для вывода (1 - Домашние, 2 - Вьючные):");
                    int typeChoice = Integer.parseInt(view.scanner.nextLine());
                    List<Animal> filteredAnimals = registry.getAnimalsByType((typeChoice == 1) ? "Домашнее" : "Вьючное");
                    view.showAnimalsByType(filteredAnimals);
                    break;
                case 7:
                    exit = true;
                    view.showSuccess("Выйти");
                    break;
                default:
                    view.showError("Неверный ввод");
            }
        }
    }
}


