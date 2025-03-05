package event.backstage.Entities;

import jakarta.persistence.*;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id ;
    @Lob
    private String campanyName ;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", campanyName='" + campanyName + '\'' +
                ", email='" + email + '\'' +
                ", pnumber=" + pnumber +
                ", password='" + password + '\'' +
                '}';
    }

    public User(int id, String campanyName, String email, long pnumber, String password) {

        this.id = id;
        this.campanyName = campanyName;
        this.email = email;
        this.pnumber = pnumber;
        this.password = password;
    }

    public User() {
        super() ;
    }
 @Column(unique = true)
    private String email ;
    private long pnumber;
    private String  password ;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCampanyName() {
        return campanyName;
    }

    public void setCampanyName(String campanyName) {
        this.campanyName = campanyName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getPnumber() {
        return pnumber;
    }

    public void setPnumber(long pnumber) {
        this.pnumber = pnumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
