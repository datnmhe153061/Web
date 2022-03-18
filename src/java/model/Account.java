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
public class Account {
    private int id;
    private String name;
    private String username;
    private String password;
    private boolean seller;
    private boolean admin;
    private String email;
    private String phone;
    private String address;
}
