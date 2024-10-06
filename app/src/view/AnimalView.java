package view;

import model.Animal;
import model.PackAnimal;
import model.Pet;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;
import java.util.Scanner;


public class AnimalView {

    public Scanner scanner;

    public AnimalView() {
        this.scanner = new Scanner(System.in);
    }


    public int displayMenu() {
        System.out.println("\nМеню:");
        System.out.println("1. Показать всех животных");
        System.out.println("2. Добавить новое животное");
        System.out.println("3. Увидеть список команд");
        System.out.println("4. Обучить новое животное командам");
        System.out.println("5. Удалить животное");
        System.out.println("6. Вывести животных по типу");
        System.out.println("7. Выйти");
        System.out.print("Выберите опцию: ");

        return Integer.parseInt(scanner.nextLine());
    }

    public Animal inputNewAnimal() {
        try {
            System.out.println("Введите тип животного (1 - Домашнее, 2 - Вьючное):");
            int type = Integer.parseInt(scanner.nextLine());

            System.out.println("Введите название животного:");
            String name = scanner.nextLine();

            System.out.println("Введите дату рождения (в формате YYYY-MM-DD):");
            String birthDateString = scanner.nextLine();
            LocalDate birthDate = LocalDate.parse(birthDateString, DateTimeFormatter.ofPattern("yyyy-MM-dd"));

            if (name.isEmpty()) {
                System.out.println("Поле не заполнено!");
                return null;
            }

            if (type == 1) {
                return new Pet(name, birthDate);
            } else if (type == 2) {
                return new PackAnimal(name, birthDate);
            } else {
                System.out.println("Неверный тип животного");
                return null;
            }
        } catch (DateTimeParseException e) {
            System.out.println("Ошибка: неверный формат даты рождения.");
            return null;
        }
    }

    public void showAnimals(List<Animal> animals) {
        if (animals.isEmpty()) {
            System.out.println("Нет зарегистрированных животных");
        } else {
            for (Animal animal : animals) {
                System.out.println("ID: " + animal.getId() + ", Животное: " + animal.getName() + " (Дата рождения: " + animal.getBirthDate() + ")");
            }
        }
    }

    public int inputAnimalId() {
        System.out.println("Введите ID животного:");
        return scanner.nextInt();
    }

    public String inputNewCommand() {
        System.out.println("Введите новую команду:");
        scanner.nextLine();
        return scanner.nextLine();
    }

    public void showCommands(Animal animal) {
        System.out.println("Команды: " + animal.getCommands());
    }

    public void showError(String message) {
        System.out.println("Ошибка: " + message);
    }

    public void showSuccess(String message) {
        System.out.println(message);
    }

    public void showAnimalsByType(List<Animal> animals) {
        if (animals.isEmpty()) {
            System.out.println("Животные не найдены");
        } else {
            showAnimals(animals);
        }
    }
}

