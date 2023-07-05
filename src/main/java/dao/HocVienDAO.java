package dao;

import model.HocVien;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HocVienDAO {
    Connection connection = ConnectMySQL.getConnect();
    public List<HocVien> getAll(){
         List <HocVien> hocViens = new ArrayList<>();
        try{
            String sql = "SELECT id,name,email,dob,address,phone,class_name FROM `hocvien`.`hocvien` JOIN `hocvien`.`class` ON hocvien.id_class = class.id_class";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String dob = resultSet.getString("dob");
                String address = resultSet.getString("address");
                String phone = resultSet.getString("phone");
                String class_name = resultSet.getString("class_name");
                hocViens.add(new HocVien(id,name,email,dob,address,phone,class_name));
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return hocViens;
    }
    public void save(HocVien hocVien) {
        try {
            String sql = "insert into hocvien(name,email,dob,address,phone,id_class) values (?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,hocVien.getName());
            preparedStatement.setString(2,hocVien.getEmail());
            preparedStatement.setString(3,hocVien.getDob());
            preparedStatement.setString(4,hocVien.getAddress());
            preparedStatement.setString(5,hocVien.getPhone());
            preparedStatement.setInt(6,hocVien.getId_classroom());
            preparedStatement.executeUpdate();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }public void delete(int id){
        String sql = "DELETE FROM hocvien where id = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            preparedStatement.execute();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

}
