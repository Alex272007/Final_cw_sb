package model;

public class Counter implements AutoCloseable {
    private int count;
    private boolean isClosed = false;

    public Counter() {
        count = 0;
    }

    public void add() throws Exception {
        if (isClosed) {
            throw new Exception("Счётчик уже закрыт!");
        }
        count++;
    }

    public int getCount() {
        return count;
    }

    @Override
    public void close() throws Exception {
        if (!isClosed) {
            isClosed = true;
            System.out.println("Счётчик закрыт");
        }
    }
}
