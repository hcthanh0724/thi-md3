package model;

public class HocVien {
    private int id;
    private String name;
    private String email;
    private String dob;
    private String address;
    private String phone;
    private int id_classroom =1;
    private String class_name;


    public HocVien(int id, String name, String email, String dob, String address, String phone, String class_name) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.dob = dob;
        this.address = address;
        this.phone = phone;
        this.class_name = class_name;
    }

    public HocVien(String name, String email, String dob, String address, String phone, String class_name) {
        this.name = name;
        this.email = email;
        this.dob = dob;
        this.address = address;
        this.phone = phone;
        this.class_name = class_name;
    }

    public HocVien(int id, String name, String email, String dob, String address, String phone, int id_classroom) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.dob = dob;
        this.address = address;
        this.phone = phone;
    }


    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getId_classroom() {
        return id_classroom;
    }

    public void setId_classroom(int id_classroom) {
        this.id_classroom = id_classroom;
    }
}
