
import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/empmvc", "root","");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int save(Employee e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO `emp`(`name`,`address`,`age`,`contact`,`email`)VALUES(?,?,?,?,?)");
            ps.setString(1, e.getName());
            ps.setString(2, e.getAddress());
            ps.setString(3, e.getAge());
            ps.setString(4, e.getContact());
            ps.setString(5, e.getEmail());

            status = ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return status;
    }

    public static int update(Employee e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE `emp`SET `name`='?',`address`='?',`age`='?',`contact`='?',`email`='?' WHERE `uid`='?'");
            ps.setString(1, e.getName());
            ps.setString(2, e.getAddress());
            ps.setString(3, e.getAge());
            ps.setString(4, e.getContact());
            ps.setString(5, e.getEmail());
            status = ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return status;
    }
 
   public static int delete(Employee e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from `emp` where `uid`=?");
            ps.setInt(1, e.getId());
            status = ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex);
        }

        return status;
    }

    public static List<Employee> getAllRecords() {
        List<Employee> list = new ArrayList<Employee>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from `emp`");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Employee u = new Employee();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setAge(rs.getString("age"));
                u.setContact(rs.getString("contact"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Employee getRecordById(int id) {
        Employee u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from `emp` where `uid`=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Employee();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setAge(rs.getString("age"));
                u.setContact(rs.getString("contact"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
}
