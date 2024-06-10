package org.example.demo1.service;

import org.example.demo1.model.MenuItem;
import org.example.demo1.repository.MenuItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuService {

    @Autowired
    private MenuItemRepository menuItemRepository;

    public List<MenuItem> getAllMenuItems() {
        return menuItemRepository.findAll();
    }

    public MenuItem getMenuItemById(Long id) {
        return menuItemRepository.findById(id).orElse(null);
    }

    public MenuItem saveMenuItem(MenuItem menuItem) {
        return menuItemRepository.save(menuItem);
    }

    public void deleteMenuItem(Long id) {
        menuItemRepository.deleteById(id);
    }

    public List<MenuItem> getMenuItemsByRestaurantId(Long restaurantId) {
        System.out.println("Fetching menu items for restaurant ID: " + restaurantId);
        List<MenuItem> items = menuItemRepository.findByRestaurantId(restaurantId);
        System.out.println("Menu items from repository: " + items);
        return items;
    }
}
