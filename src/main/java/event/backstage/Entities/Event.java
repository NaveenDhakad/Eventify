package event.backstage.Entities;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.LocalTime;


import jakarta.persistence.*;

import java.util.Arrays;

@Entity
@Table(name = "events")

public class Event {
    public Event() {
        super();
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public LocalDate getStartdate() {
        return Startdate;
    }

    public void setStartdate(LocalDate startdate) {
        Startdate = startdate;
    }

    public LocalDate getEnddate() {
        return enddate;
    }

    public void setEnddate(LocalDate enddate) {
        this.enddate = enddate;
    }

    public LocalTime getStartTime() {
        return StartTime;
    }

    public void setStartTime(LocalTime startTime) {
        StartTime = startTime;
    }

    public LocalTime getEndTime() {
        return endTime;
    }

    public void setEndTime(LocalTime endTime) {
        this.endTime = endTime;
    }

    public byte[] getImageData() {
        return imageData;
    }

    public void setImageData(byte[] imageData) {
        this.imageData = imageData;
    }

    public String getCategery() {
        return categery;
    }

    public void setCategery(String categery) {
        this.categery = categery;
    }

    @Override
    public String toString() {
        return "Event{" +
                "eventName='" + eventName + '\'' +
                ", Startdate=" + Startdate +
                ", enddate=" + enddate +
                ", StartTime=" + StartTime +
                ", endTime=" + endTime +
                ", imageData=" + Arrays.toString(imageData) +
                ", categery='" + categery + '\'' +
                ", Location='" + Location + '\'' +
                ", summary='" + summary + '\'' +
                ", user=" + user +
                ", id=" + id +
                '}';
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        Location = location;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Transient
    LocalTime currentTime = LocalTime.now(); // Get current time

    public Event(String eventName, LocalDate startdate, LocalDate enddate, LocalTime startTime, LocalTime endTime, byte[] imageData, String categery, String location, String summary, User user, Long id) {
        this.eventName = eventName;
        Startdate = startdate;
        this.enddate = enddate;
        StartTime = startTime;
        this.endTime = endTime;
        this.imageData = imageData;
        this.categery = categery;
        Location = location;
        this.summary = summary;
        this.user = user;
        this.id = id;
    }
    @Transient
    DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("HH:mm");
    @Transient
    LocalDate today = LocalDate.now();
    @Transient
    LocalDate nextMonthDate = today.plusMonths(1);  // Add 1 month
    @Transient
    LocalDate uskanextmonth  = nextMonthDate.plusMonths(1) ;
    @Transient
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

    private String eventName ;

    private LocalDate Startdate = nextMonthDate ;

    private LocalDate enddate  = uskanextmonth;

    private LocalTime StartTime = currentTime ;

    private LocalTime endTime = currentTime ;
    @Lob
    @Column(name = "image_data", columnDefinition = "LONGBLOB")
    private byte[] imageData  ;
    private String categery ;
    private  String Location ;
    private String summary ;
    @OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id") // FK Column in 'profile' table
    private User user;

}
