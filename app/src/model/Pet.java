package model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Pet extends Animal {

    public Pet(String name, LocalDate birthDate) {
        super(name, birthDate);

        for (String command : getBasCommands()) {
            addCommand(command);
        }
    }

    @Override
    public List<String> getBasCommands() {
        List<String> basCommands = new ArrayList<>();
        return basCommands;
    }
    @Override
    public String getType() {
        return "Домашнее";
    }
}