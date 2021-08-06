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
public class Request {
    private int id;
    private String department;
    private String studentID;
    private String title;
    private String content;
    private boolean state;
    private String dateCreated;
    private String dateClosed;
    private String solved;
    private String attached;
    private String solution;
    private String name;
    
    public Request(){
        
    }
    public Request(int id, String department, String studentID, String title, String content, boolean state, String dateCreated, String dateClosed, String solved, String attached, String solution, String name) {
        this.id = id;
        this.department = department;
        this.studentID = studentID;
        this.title = title;
        this.content = content;
        this.state = state;
        this.dateCreated = dateCreated;
        this.dateClosed = dateClosed;
        this.solved = solved;
        this.attached = attached;
        this.solution = solution;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public String getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getDateClosed() {
        return dateClosed;
    }

    public void setDateClosed(String dateClosed) {
        this.dateClosed = dateClosed;
    }

    public String getSolved() {
        return solved;
    }

    public void setSolved(String solved) {
        this.solved = solved;
    }

    public String getAttached() {
        return attached;
    }

    public void setAttached(String attached) {
        this.attached = attached;
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    @Override
    public String toString() {
        return "Request{" + "id=" + id + ", department=" + department + ", studentID=" + studentID + ", title=" + title + ", content=" + content + ", state=" + state + ", dateCreated=" + dateCreated + ", dateClosed=" + dateClosed + ", solved=" + solved + ", attached=" + attached + ", solution=" + solution + ", name=" + name + '}';
    }
       
}
