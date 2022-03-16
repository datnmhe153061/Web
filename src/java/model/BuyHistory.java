/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
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
public class BuyHistory {
    private int id;
    private int productid;
    private String productname;
    private int quantity;
    private int productprice;
    private int accountid;
    private Date Date;
    private String recipient;
    private String phone;
    private String address;
    private String note;
}
