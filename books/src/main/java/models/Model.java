package models;
import entities.Book;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Model {
    private static Model instance = new Model();

    private List<Book> model;

    public static Model getInstance() {
        return instance;
    }

    private Model() {
        model = new ArrayList<>();
    }

    public void add(Book book) {
        model.add(book);
    }

    public List<String> list() {
        return model.stream()
                .map(Book::getTitle)
                .collect(Collectors.toList());
    }
}