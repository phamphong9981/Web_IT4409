package Interface;

import Model.Booking;
import Model.BookingDisplay;
import Model.Customer;

import java.util.List;

public interface BookingInterface {
    //Xem danh sach Book van con hieu luc
    public List<BookingDisplay> viewBooking(int size, int page);
    //tao Booking
    public boolean newBooking(Customer customer,Booking booking);
    public int getNumPage(int size);
    public boolean editBooking(String id_room,String start,String expire, String newStart,String newExpire);
    public boolean deleteBooking(String id_room,String start,String expire);
}
