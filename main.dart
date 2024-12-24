void main(){
  BankAccount client1 = BankAccount("3010319", 9150.50);
  BankAccount client2 = BankAccount.balance(account: "3060314");

// methods on client1
  client1.withDraw("3010319",30);
  client1.deposit("3010319", 70);
  client1.displayInfo();

  print("");
  // print("");

// methods on client2
  client2.withDraw("3060314", 20);
  client2.deposit("3060314", -600);
  client2.displayInfo();


}
class BankAccount{
  String account;
  double balance;
  
  BankAccount (
    this.account,
    this.balance
  );
  BankAccount.balance({required this.account}):balance = 0.0;
 
  void withDraw (String account, double withdrawal){
    if(withdrawal >0 && withdrawal < balance){
      balance -=withdrawal;
      print("process completed , deducted amount : $withdrawal , current balance : $balance");
    }
    else{
      print("amount not acceptable");
    }
  }
  void deposit(String accountID, double deposit){
    if(deposit >0 ){
      balance +=deposit;
      print("process completed, your current balance is : $balance");
    }else{
      print("something is wrong");
    }
  }
  void displayInfo(){
    print("your account ID is : $account , your current balance is : $balance");
  }
}