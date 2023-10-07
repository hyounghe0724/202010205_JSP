package dto;

import java.io.Serializable;

public class Product implements Serializable{ // 클래스 정의, set,get 메소드 정의 => reppsitory에서 사용
    private static final long serialVersionUID = -4274700572038677000L;

    private String productId;
    private String pname;
    private Integer unitPrice;
    private String description;
    private String manufacturer;
    private String category;
    private long unitInStock;
    private String condition; // 신상품 or 중고품 or 재생품
    private String rootImage;
    public Product(){
        super();
    }

    public Product(String productId, String pname, Integer unitPrice) {
        this.productId = productId;
        this.pname = pname;
        this.unitPrice = unitPrice;
    }

    public String getProductId() {
        return productId;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPname(){
        return pname;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Integer getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public long getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(long unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }
    
     public void setRootImage(String rootImage) {
        this.rootImage = rootImage;
    }

    public String getRootImage() {
        return rootImage;
    }
}

