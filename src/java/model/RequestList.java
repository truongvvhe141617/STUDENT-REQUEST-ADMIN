/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Vuong Van Truong
 */
public class RequestList {
    private int num;
    private String department;

    public RequestList(int num, String department) {
        this.num = num;
        this.department = department;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Override
    public String toString() {
        return "RequestList{" + "num=" + num + ", department=" + department + '}';
    }
    
    
}
