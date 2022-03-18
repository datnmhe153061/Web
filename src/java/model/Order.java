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
public class Order {
    private int id;
    private Account account;
    private Ship ship;
    private Date createdate;
    private boolean status;
}
