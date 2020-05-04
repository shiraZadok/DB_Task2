
import java.sql.*;
import java.util.Scanner;
public class Macabi{
    public static void main(String[] args){
    	doctor_queue();
    	update_insert_time_of_patsient();
    }
    
    public static void doctor_queue(){
    	try{
            Class.forName("com.mysql.jdbc.Driver");
            try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/macabi", "root", "shsz1997")){
                Statement stmt = con.createStatement();
                Scanner myObj = new Scanner(System.in);
                String id_doctor;
                System.out.println("Enter id_doctor"); 
                id_doctor = myObj.nextLine(); 
                System.out.println("Your Patients queue is below");
                System.out.println("-------------------------------------------------");
                ResultSet rs = stmt.executeQuery("call my_queue("+id_doctor+");");
                int numOfColumns = rs.getMetaData().getColumnCount();
                while (rs.next()){
                    for (int col = 1; col <= numOfColumns; col++){
                        System.out.print(rs.getString(col) + " ");
                    }
                    System.out.println();
                }
                System.out.println("-------------------------------------------------");
            }} catch (Exception ex){ex.printStackTrace();}
    	
    }
    
    public static void update_insert_time_of_patsient(){
    	 try{
             Class.forName("com.mysql.jdbc.Driver");
             try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/macabi", "root", "shsz1997")){
                 Statement stmt = con.createStatement();
                 Scanner myObj = new Scanner(System.in);
                 String id_patsient;
                 System.out.println("Enter id_patsient"); 
                 id_patsient = myObj.nextLine(); 
                 ResultSet rs = stmt.executeQuery("call actual_time("+id_patsient+");");
             }} catch (Exception ex){ex.printStackTrace();}
    }

}

