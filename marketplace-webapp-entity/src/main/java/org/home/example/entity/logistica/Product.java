package org.home.example.entity.logistica;

public class Product {
    private int id;
    private String name;
    private int stock;
    private double precio;

    public Product(){
        this(0,"",0,0);
    }
    public Product(int id, String name, int stock, double precio) {
        this.id = id;
        this.name = name;
        this.stock = stock;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", stock=" + stock +
                ", precio=" + precio +
                '}';
    }
}