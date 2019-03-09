package edu.wctc.model;

import java.util.ArrayList;
import java.util.List;

public class ItemCatalog {
    private List<Item> itemCatalog = new ArrayList<>();
    private int nextProductNumber;

    public ItemCatalog() {
        nextProductNumber = 1;
        itemCatalog.add(new Item(nextProductNumber++,"thing 1",1.00,true,"A thing","images/thing1.png"));
        itemCatalog.add(new Item(nextProductNumber++,"thing 2",2.00,true,"Another thing","images/thing2.png"));
        itemCatalog.add(new Item(nextProductNumber++,"thing 3",3.00,false,"A un-featured thing","images/thing3.png"));

    }

    public List<Item> getItemCatalog() {
        return itemCatalog;
    }

    public List<Item> getFeaturedItemCatalog() {
        List<Item> item = new ArrayList<>();

        for(Item i: itemCatalog) {
            if (i.isFeatured()) {
                item.add(i);
            }
        }
        return item;
    }
    public Item getSingleItem(int itemNum) {
        Item item=null;

        for(Item i: itemCatalog) {
            if (i.getProductNumer() == itemNum) {
                return i;
            }
        }
        return item;
    }
}
