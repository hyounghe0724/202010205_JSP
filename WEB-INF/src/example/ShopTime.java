package example;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class ShopTime {
    public String timenow(){


        LocalDate SeoulNow = LocalDate.now(ZoneId.of("Asia/Seoul"));
        LocalTime now = LocalTime.now();
        
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH시 mm분 ss초");
 
        String formatedNow = now.format(formatter);
        int foriegn_time = now.getHour();
        int local_time = foriegn_time + 9;
        if(local_time > 24){
            local_time -= 24; 
        }
        return String.valueOf(SeoulNow) + " " + String.valueOf(local_time) + ":" + String.valueOf(now.getMinute()) + ":" + String.valueOf(now.getSecond());
        
    }
}