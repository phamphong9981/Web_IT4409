package Controller;

import Interface.AccountInterface;
import Model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountController implements AccountInterface {
    @Override
    public boolean checkSignIn(Account account) {
        Connection connection=DAO.getConnection();
        String sql="SELECT * FROM Account WHERE username='"+account.getUsername()+"' AND password='"+account.getPassword()+"'";
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet resultSet=preparedStatement.executeQuery();
            if (resultSet.next()){
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public String getAccountId(Account account) {
        Connection connection=DAO.getConnection();
        String sql="SELECT * FROM Account WHERE username='"+account.getUsername()+"' AND password='"+account.getPassword()+"'";
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet resultSet=preparedStatement.executeQuery();
            if (resultSet.next()){
                return resultSet.getString("id");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "";
    }

    @Override
    public boolean signUp(Account account) {
        if(checkSignIn(account)==true){
            return false;
        }else {
            Connection connection = DAO.getConnection();
            String sql = "INSERT INTO Account(username,password,role) VALUES (?,?,?)";
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, account.getUsername());
                preparedStatement.setString(2, account.getPassword());
                preparedStatement.setInt(3, account.getRole());
                preparedStatement.execute();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

        return true;
    }

    @Override
    public int getRole(Account account) {
        Connection connection=DAO.getConnection();
        String sql="SELECT * FROM Account WHERE username='"+account.getUsername()+"' AND password='"+account.getPassword()+"'";
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet resultSet=preparedStatement.executeQuery();
            if (resultSet.next()){
                return resultSet.getInt("role");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return -1;
    }

    @Override
    public List<Account> getAllAccount() {
        List<Account> list=new ArrayList<>();
        Connection connection=DAO.getConnection();
        String sql="SELECT * FROM Account";
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(sql);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                Account account=new Account();
                account.setUsername(resultSet.getString("username"));
                account.setRole(resultSet.getInt("role"));
                account.setId(resultSet.getInt("id"));
                list.add(account);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        for (Account account:new AccountController().getAllAccount()
        ) {
            System.out.println(account.getId()+"   "+ account.getUsername());
        }
    }
}