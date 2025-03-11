package event.backstage.Entities;

import jakarta.persistence.*;


@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id ;
    @Lob
    private String campanyName ;
    @OneToOne(mappedBy = "user")
    private Event event;


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", campanyName='" + campanyName + '\'' +
                ", PortalName='" + PortalName + '\'' +
                ", subDomain='" + subDomain + '\'' +
                ", email='" + email + '\'' +
                ", pnumber=" + pnumber +
                ", password='" + password + '\'' +
                '}';
    }

    public User(int id, String campanyName, String portalName, String subDomain, String email, long pnumber, String password) {
        this.id = id;
        this.campanyName = campanyName;
        PortalName = portalName;
        this.subDomain = subDomain;
        this.email = email;
        this.pnumber = pnumber;
        this.password = password;
    }

    public String getPortalName() {
        return PortalName;
    }

    public void setPortalName(String portalName) {
        PortalName = portalName;
    }

    public String getSubDomain() {
        return subDomain;
    }

    public void setSubDomain(String subDomain) {
        this.subDomain = subDomain;
    }
    @Column(unique = true)
    private String PortalName ="Event" ;
    @Column(unique = true)
    private String subDomain  = "Event" ;


    public User() {
        super() ;
    }
    @Column(unique = true)
    private String email ;
    @Column(unique = true)
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
