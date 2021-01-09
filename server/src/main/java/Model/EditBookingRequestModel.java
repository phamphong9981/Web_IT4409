package Model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class EditBookingRequestModel {
    @XmlElement(name = "id_room")
    private String id_room;
    @XmlElement(name = "start")
    private String start;
    @XmlElement(name = "expire")
    private String expire;
    @XmlElement(name = "newStart")
    private String newStart;
    @XmlElement(name = "newExpire")
    private String newExpire;

    public EditBookingRequestModel() {
    }

    public String getId_room() {
        return id_room;
    }

    public void setId_room(String id_room) {
        this.id_room = id_room;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getExpire() {
        return expire;
    }

    public void setExpire(String expire) {
        this.expire = expire;
    }

    public String getNewStart() {
        return newStart;
    }

    public void setNewStart(String newStart) {
        this.newStart = newStart;
    }

    public String getNewExpire() {
        return newExpire;
    }

    public void setNewExpire(String newExpire) {
        this.newExpire = newExpire;
    }
}
