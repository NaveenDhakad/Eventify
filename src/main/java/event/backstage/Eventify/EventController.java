package event.backstage.Eventify;



import event.backstage.Entities.User;
import org.apache.catalina.core.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class EventController {

    @Autowired
    private UserRepository userRepository ;

    @RequestMapping("/")
    public String index(){
            return "index" ;
        }
@RequestMapping("/Signup")
public String signup(){
        return "Signup";
}
@PostMapping("/Signup")
public String register(@RequestParam String campanyName ,@RequestParam String email,@RequestParam long pnumber,@RequestParam String password ,   @ModelAttribute("user") User user , @RequestParam(value = "agreement" , defaultValue = "false") boolean agreement ,  Model modal ){
   User user1 = new User() ;
   user1.setCampanyName(campanyName);
   user1.setEmail(email);
   user1.setPnumber(pnumber);
   user1.setPassword(password);
   userRepository.save(user1) ;

        System.out.println(user );
    return "Signin" ;
}

     @RequestMapping("/Signin")
     public String signin(){
        return "Signin" ;
     }

     @PostMapping("/Signin")
    public String signinhandler(@RequestParam String username, @RequestParam String password) {

          Optional<User> optional =  userRepository.findByEmailAndPassword(username , password)  ;
//          User user = optional.get() ;
//          System.out.println(user);
        if(optional.isPresent() ){
            System.out.println(username+" " + password +" " );

            return "afterlogin" ;
           }else{
            return "Signin" ; // signin.jsp should display the error message
        }

//        Optional<User> optional  = userRepository.findById(1);
//            if (optional.isPresent()) {
//                User user = optional.get();
//                // Validate password
//                if (user.getPassword().equals(password)) {
//                    model.addAttribute("user", user); // Add user details to the model
//                    return "welcome"; // welcome.jsp should display user info
//                } else {
//                    model.addAttribute("error", "Invalid password. Please try again.");
//                }
//            } else {
//                model.addAttribute("error", "User not found. Please sign up first.");
//            }

        }

        @RequestMapping("/afterlogin")
     public String afterlogin(){
        return "afterlogin" ;
        }
        @RequestMapping("/running")
         public String runing(){
        return "running" ;
        }
    @RequestMapping("/live")
    public String live(){
        return "live" ;
    }
    @RequestMapping("/Draft")
    public String Draft(){
        return "Draft" ;
    }

    @RequestMapping("/past")
    public String past(){
        return "past" ;
    }
    @RequestMapping("/cancel")
    public String cancel(){
        return "cancel" ;
    }
    @RequestMapping("/all")
    public String all(){
        return "all" ;
    }
    @RequestMapping("/trash")
    public String trash(){
        return "trash" ;
    }
    @RequestMapping("/Attendees")
    public String Attendees(){
        return "Attendees" ;
    }
    @RequestMapping("/dashboard")
    public String dashboard(){
        return "dashboard" ;
    }
    @RequestMapping("/setting-space")
    public String settingspace(){
        return "setting-space" ;
    }
    @RequestMapping("/setting-team")
    public String settingteam(){
        return "setting-team" ;
    }
    @RequestMapping("/setting-custom")
    public String settingcustom(){
        return "setting-custom" ;
    }
    @RequestMapping("/portal-setting-general")
    public String portalsettinggeneral(){
        return "portal-setting-general" ;
    }
    @RequestMapping("/portal-setting-branding")
    public String portalsettingbranding(){
        return "portal-setting-branding" ;
    }
    @RequestMapping("/portal-setting-portalMember")
    public String portalsettingportalMember(){
        return "portal-setting-portalMember" ;
    }
    @RequestMapping("/portal-setting-space")
    public String portalsettingspace(){
        return "portal-setting-space" ;
    }
    @RequestMapping("/Profile")
    public String Profile(){
        return "Profile" ;
    }
    @RequestMapping("/Setting")
    public String Setting(){
        return "Setting" ;
    }
    @RequestMapping("/Security")
    public String Security(){
        return "Security" ;
    }
    @RequestMapping("/Groups")
    public String Groups(){
        return "Groups" ;
    }
    @RequestMapping("/Privacy")
    public String Privacy(){
        return "Privacy" ;
    }
    @RequestMapping("/Manage-Event-info")
    public String Manage(){
        return "Manage-Event-info" ;
    }
    @RequestMapping("/Manage-team")
    public String Manageteam(){
        return "Manage-team" ;
    }
    @RequestMapping("/Manage-Speaker")
    public String ManageSpeaker(){
        return "Manage-Speaker" ;
    }
    @RequestMapping("/Manage-Eventlibrary")
    public String Managelibrary(){
        return "Manage-Eventlibrary" ;
    }
    //registration part
    @RequestMapping("/Registration-Ticket")
    public String RegistrationTicket(){
        return "Registration-Ticket" ;
    }
    @RequestMapping("/registration-form")
    public String registrationform(){
        return "registration-form" ;
    }
    @RequestMapping("/registration-cancel")
    public String registrationcancel(){
        return "registration-cancel" ;
    }
    @RequestMapping("/registration-setting")
    public String registrationsetting(){
        return "registration-setting" ;
    }
    @RequestMapping("/regis-approval")
    public String regisapproval (){
        return "regis-approval" ;
    }
    @RequestMapping("/regis-attendie")
    public String regisattendie (){
        return "regis-attendie" ;
    }

    @RequestMapping("/prospect")
    public String prospect (){
        return "prospect" ;
    }

    @RequestMapping("/Exhibitors")
    public String Exhibitors (){
        return "Exhibitors" ;
    }

//setting
    @RequestMapping("/Setting-branding")
    public String Settingbranding (){
        return "Setting-branding" ;
    }
    @RequestMapping("/Setting-Signin")
    public String SettingSignin (){
        return "Setting-Signin" ;
    }
    @RequestMapping("/Setting-Workflow")
    public String SettingWorkflow (){
        return "Setting-Workflow" ;
    }

}
