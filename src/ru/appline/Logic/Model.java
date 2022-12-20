package ru.appline.Logic;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class Model implements Serializable {

    private static final Model instance = new Model();
    private final Map<Integer, User> model;

    public static Model getInstance(){
        return instance;

    }

    private Model(){
        model = new HashMap<>();

        model.put(1, new User("Oleg", "Nikiforov", 45000));
        model.put(2, new User("Navruz", "Kaziakhmedov", 100000));
        model.put(3, new User("Ivan", "Korotkov", 30000));
    }

    public void add(User user, int id){
        model.put(id, user);
    }

    public Map<Integer, User> delete (int id){
        model.remove(id);
        return model;
    }

    public void put (User user, int id, User newUser){
        model.replace(id, user, newUser);
    }

    public Map<Integer, User> getFromList(){
        return model;
    }

}
