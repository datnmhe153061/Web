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
public class Category {
    private int id;
    private String name;
    private int parentid;
    private Date date;
    private boolean status;
    
}
