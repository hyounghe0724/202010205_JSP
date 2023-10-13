package dao;//package dao;
import dto.Product;
import java.util.ArrayList;
public class ProductRepository { // 인스턴스화, 객체 생성, 데이터 생성 이 class는 자바 빈즈 아님
  
    private   ArrayList<Product> listOfProducts = new ArrayList<Product>();

    private ProductRepository(){
        Product phone = new Product("P1234", "Galaxy Z Flip 5", 1300000);
        phone.setFilename("");
        phone.setDescription("6.7-Inch (170.3 mm) 22:9 Ratio 2640 × 1080 Infinity Flex Display");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Samsung");
        phone.setUnitInStock(1000);
        phone.setCondition("New");
        phone.setFilename("P1234.png");

        Product notebook = new Product("P1235", "Galaxy Book 2 Pro", 1500000);
        notebook.setFilename("");
        notebook.setDescription("15.6-Inch 1920 x 1080 AMOLED Display Intel Core i5-1240P processors");
        notebook.setCategory("Notebook");
        notebook.setManufacturer("LG");
        notebook.setUnitInStock(1000);
        notebook.setCondition("Refurbished");
        notebook.setFilename("P1235.png");
                              
                              
        Product tablet = new Product("P1236", "Galaxy Tab S8 Ultra", 1100000);
        tablet.setFilename("");
        tablet.setDescription("14.56-Inch (369.9 mm) 16:10 Ratio 2960 x 1848 Super AMOLED (239 ppi)");
        tablet.setCategory("Tablet");
        tablet.setManufacturer("Samsung");
        tablet.setUnitInStock(1000);
        tablet.setCondition("Refurbished");
        tablet.setFilename("P1236.png");
        
        Product tv = new Product("P1237", "Samsung TV", 2000000);
        tv.setFilename("");
        tv.setDescription("55-Inch 4K UHD Smart TV");
        tv.setCategory("TV");
        tv.setManufacturer("Samsung");
        tv.setUnitInStock(100);
        tv.setCondition("New");
        tv.setFilename("P1237.png");

        Product monitor = new Product("P1238", "Samsung Monitor", 500000);
        monitor.setFilename("");
        monitor.setDescription("27-Inch QHD LED Monitor");
        monitor.setCategory("Monitor");
        monitor.setManufacturer("Samsung");
        monitor.setUnitInStock(500);
        monitor.setCondition("New");
        monitor.setFilename("P1238.png");

        Product smartWatch4 = new Product("P1239", "Galaxy Watch 4", 400000);
        smartWatch4.setFilename("");
        smartWatch4.setDescription("Bluetooth, Heart Rate Monitor, Fitness Tracker");
        smartWatch4.setCategory("Smart Watch");
        smartWatch4.setManufacturer("Samsung");
        smartWatch4.setUnitInStock(200);
        smartWatch4.setCondition("New");
        smartWatch4.setFilename("P1239.png");


        Product smartWatch5 = new Product("P1242", "Galaxy Watch 5", 400000);
        smartWatch5.setFilename("");
        smartWatch5.setDescription("Bluetooth, Heart Rate Monitor, Fitness Tracker");
        smartWatch5.setCategory("Smart Watch");
        smartWatch5.setManufacturer("Samsung");
        smartWatch5.setUnitInStock(200);
        smartWatch5.setCondition("New");
        smartWatch5.setFilename("P1242.png");


        Product tablet7 = new Product("P1240", "Galaxy Tab S7", 800000);
        tablet7.setFilename("");
        tablet7.setDescription("11-Inch 2560 x 1600 Super AMOLED Display, S Pen Included");
        tablet7.setCategory("Tablet");
        tablet7.setManufacturer("Samsung");
        tablet7.setUnitInStock(500);
        tablet7.setCondition("New");
        tablet7.setFilename("P1240.png");



        Product tvq = new Product("P1241", "Samsung QLED Q80A", 2500000);
        tvq.setFilename("");
        tvq.setDescription("55-Inch 4K UHD Quantum HDR Smart TV, Alexa Built-in");
        tvq.setCategory("TV");
        tvq.setManufacturer("Samsung");
        tvq.setUnitInStock(100);
        tvq.setCondition("New");
        tvq.setFilename("P1241.png");


        listOfProducts.add(phone);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
        listOfProducts.add(tv);
        listOfProducts.add(monitor);
        listOfProducts.add(smartWatch4);
        listOfProducts.add(tvq);
        listOfProducts.add(tablet7);
        listOfProducts.add(smartWatch5);
        // listOfProducts.add(상품명);

    }
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
    public Product getProductById(String productId){
        Product productById = null;
        for (int i = 0; i< listOfProducts.size(); i++){
            Product product = listOfProducts.get(i);
            if(product != null && product.getProductId() != null && product.getProductId().equals(productId)){
                productById = product;
                break;
            }
        };
        return productById;
    }
 private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }
       public void addProduct(Product product) {
        listOfProducts.add(product);
       }

   

}
