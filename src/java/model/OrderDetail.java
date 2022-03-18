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
public class OrderDetail {
    private int id;
    private Product product;
    private Order order;
    private int quantity;
}
