package dao;//package dao;
import dto.Product;
import java.util.ArrayList;
public class ProductRepository {
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();

    public ProductRepository(){
        Product phone = new Product("P1234", "Galaxy Z Filp 5", 13000000);
        phone.setDescription("6.7-inch (170.3 mm) 22:9 Ratio 2640 × 1080 Infinity Flex & O Display");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Samsung");
        phone.setUnitInStock(1000);
        phone.setCondition("New");

        Product notebook = new Product("P1235", "Galaxy Book 2 pro", 1500000);
        notebook.setDescription("15.6-inch 1920 x 1080 AMOLED DisPlay Intel Core i5-1240P Processor ");
        notebook.setCategory("Notebook");
        notebook.setManufacturer("Samsung");
        notebook.setUnitInStock(1000);
        notebook.setCondition("Refurbished");

        Product tablet = new Product("P1236", "Galaxy Tab S8 Ultra", 900000);
        tablet.setDescription("14.56-inch (369.9 mm) 16:10 Ratio 2960 x 1848 Super AMOLED");
        tablet.setCategory("Tablet");
        tablet.setManufacturer("Samsung");
        tablet.setUnitInStock(1000);
        tablet.setCondition("Refurbished");

        // 위와 같이 상품 초기화 하고 아래에 상품을 추가

        listOfProducts.add(phone);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
        // listOfProducts.add(상품명);

    }
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
}
