package Interface;

import Model.Account;

import java.util.List;

public interface AccountInterface {
    public boolean checkSignIn(Account account);

    String getAccountId(Account account);

    public boolean signUp(Account account);
    public int getRole(Account account);
    public List<Account> getAllAccount();
}