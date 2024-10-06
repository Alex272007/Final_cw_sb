import controller.AnimalController;
import model.AnimalRegistry;
import view.AnimalView;


public class Main {
    public static void main(String[] args) {
        AnimalRegistry registry = new AnimalRegistry();
        AnimalView view = new AnimalView();
        AnimalController controller = new AnimalController(registry, view);

        // Запуск программы
        controller.run();
    }
}
