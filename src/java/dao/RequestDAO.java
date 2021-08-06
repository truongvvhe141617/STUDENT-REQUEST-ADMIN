/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Department;
import model.Request;
import model.RequestList;

/**
 *
 * @author Vuong Van Truong
 */
public class RequestDAO {

    public List<Department> getDepart() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            List<Department> list = new ArrayList<>();
            String query = "SELECT [id]\n"
                    + "      ,[departmentName]\n"
                    + "  FROM [StudentRequest].[dbo].[department]";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Department s = new Department(rs.getInt("id"),
                        rs.getString("departmentName")
                        );

                list.add(s);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } 
    }

    public Account checkLogin(String username, String password) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "SELECT [id]\n"
                    + "      ,[username]\n"
                    + "      ,[password]\n"
                    + "  FROM [StudentRequest].[dbo].[Account] where username =? and password =?";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account s = new Account(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"));
                return s;
            }
        } catch (Exception e) {
            throw e;
        } 
        return null;
    }

    public List<RequestList> count(String date) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            List<RequestList> list = new ArrayList<>();
            String query = "select department, count(*) as num from Request where date_created = ? GROUP BY department";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            rs = ps.executeQuery();
            while (rs.next()) {
                RequestList s = new RequestList(rs.getInt("num"),
                        rs.getString("department"));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } 
    }
   
    public List<RequestList> count2day(String fromdate, String todate) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            List<RequestList> list = new ArrayList<>();
            String query = "select department, count(*) as num from Request where date_created <= ? and date_created >= ? GROUP BY department";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fromdate);
            ps.setString(2, todate);
            rs = ps.executeQuery();
            while (rs.next()) {
                RequestList s = new RequestList(rs.getInt("num"),
                        rs.getString("department"));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } 
    }

    public List<Request> getAll() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            List<Request> list = new ArrayList<>();
            String query = "Select * from Request";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
                Request s = new Request(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        sp.format(rs.getDate(7)),
                        sp.format(rs.getDate(8)),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12));

                list.add(s);
            }
            return list;
        } catch (Exception e) {
            throw e;
        }
    }
  
     public Request getOne(String id) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "Select * from Request where id = ?";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
                Request s = new Request(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        sp.format(rs.getDate(7)),
                        sp.format(rs.getDate(8)),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12));
                return s;
            }
        } catch (Exception e) {
            throw e;
        } 
        return null;
    }
 public List<Request> getAllbyDate(String date) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            List<Request> list = new ArrayList<>();
            String query = "Select * from Request where date_created >= ?";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            rs = ps.executeQuery();
            while (rs.next()) {
                SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
                Request s = new Request(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        sp.format(rs.getDate(7)),
                        sp.format(rs.getDate(8)),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12));

                list.add(s);
            }
            return list;
        } catch (Exception e) {
            throw e;
        }
    }


    public List<Request> search( String title, String depart) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            List<Request> list = new ArrayList<>();
            String query = "Select * from Request where  title like ? and department = ?";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
         
            ps.setString(1, "%" + title + "%");
            ps.setString(2, depart);
            rs = ps.executeQuery();
            while (rs.next()) {
                SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
                Request s = new Request(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        sp.format(rs.getDate(7)),
                        sp.format(rs.getDate(8)),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12));

                list.add(s);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } 
    }

    public void update(String id, Boolean state,String dateClosed,String solved,String solution){
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "Update Request\n" +
            "Set req_state = ?,date_closed = ?,\n" +
            "solved = ?,solution =? where id = ?";
            conn = db.getConnection();
            ps   = conn.prepareStatement(query);
            ps.setBoolean(1, state);
            ps.setString(2,dateClosed);
            ps.setString(3, solved);
            ps.setString(4, solution);
            ps.setString(5, id);
            ps.executeUpdate();      
        } catch (Exception e) {
        }
    }
 public static void main(String[] args) throws Exception  {
        RequestDAO dao = new RequestDAO();
        
//        dao.update("9",false, "2021-08-19", "LongVDH1235", "check mark1235");
//        Request s = dao.getOne("9");
//        System.out.println(s);
          List<Request> l = dao.getAllbyDate("2021-08-02");
          for (Request request : l) {
              System.out.println(request);
     }

    }
   
    
}
