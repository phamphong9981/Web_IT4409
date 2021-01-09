package API;

import Controller.RoomController;
import Model.RoomResponse;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import java.sql.Date;

@Path("room")
public class RoomAPI {
    //checked
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public RoomResponse getNumPage(@QueryParam("from")String from,
                                   @QueryParam("to") String to,
                                   @QueryParam("size") int size,
                                   @QueryParam("page") int page,
                                   @QueryParam("type")int type){

//        if(from.equals(null)&&to.equals(null)){
//            from="2025-12-12";
//            to="2025-12-13";
//        }
        if (type==-1){
            RoomResponse roomResponse=new RoomResponse();
            roomResponse.setNumPage(new RoomController().getNumPage(Date.valueOf(from),Date.valueOf(to),size));
            roomResponse.setRoomList(new RoomController().getPageRoom(Date.valueOf(from),Date.valueOf(to),size,page));
            return roomResponse;
        }
        RoomResponse roomResponse=new RoomResponse();
        roomResponse.setNumPage(new RoomController().getNumPage(Date.valueOf(from),Date.valueOf(to),size,type));
        roomResponse.setRoomList(new RoomController().getPageRoom(Date.valueOf(from),Date.valueOf(to),size,page,type));
        return roomResponse;
    }
}
