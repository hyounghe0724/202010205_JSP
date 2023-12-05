package dto;

import java.io.Serializable;

public class UserSession implements Serializable {

    private static final long serialVersionUID = -4274700572038677000L;

    private String id;
    private String name;
    private String gender;
    private String birth;
    private String email;
    private String phone;
    private String address;
    private String registDay;

    // Getter 메서드는 그대로 유지

    public String getId() {
        return id;
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

    // Setter 메서드 추가

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setRegistDay(String registDay) {
        this.registDay = registDay;
    }
}