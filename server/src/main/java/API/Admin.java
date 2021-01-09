package API;

import Controller.AccountController;
import Model.Account;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/admin")
public class Admin {
    @POST
    @Path("add")
    public Response addStaff(@QueryParam("username") String username,
                             @QueryParam("password") String password,
                             @QueryParam("role") int role){
        if(new AccountController().signUp(new Account(username,password,role))){
            return Response.ok("OK").build();
        }
        return Response.ok("Fail").build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Account> getAllStaff(){
        return new AccountController().getAllAccount();
//        return "Hello admin";
    }
}