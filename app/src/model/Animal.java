package model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public abstract class Animal {
    private static int idCounter = 0;
    private int id;
    private String name;
    private LocalDate birthDate;
    private List<String> commands;

    public Animal(String name, LocalDate birthDate) {
        this.id = ++idCounter; // ID увеличивается при каждом создании животного
        this.name = name;
        this.birthDate = birthDate;
        this.commands = new ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public List<String> getCommands() {
        return commands;
    }

    public void addCommand(String command) {
        commands.add(command);
    }

    public abstract List<String> getBasCommands();
    public abstract String getType();
}

