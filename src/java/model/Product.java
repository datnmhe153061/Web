/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Laptop88
 */
@Builder
@Getter
@Setter
public class Product {
    private int id;
    private String name;
    private int price;
    private int promotionprice;
    private String description;
    private int quantity;
    private int listproduct_id;
    private String brand;
    private String image;
}
