package dto;

import java.io.Serializable;
public class UserSession implements Serializable{
    
    private static final long serialVersionUID = -4274700572038677000L;
    
    private String id;
    private String name;
    private String gender;
    private String birth;
    private String email;
    private String phone;
    private String address;
    private String registDay;

    public String getId() {
        return id;
    }
    
     public void setId(String id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public String getGender() {
        return gender;
    }

    public String getBirth() {
        return birth;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public String getRegistDay() {
        return registDay;
    }
}