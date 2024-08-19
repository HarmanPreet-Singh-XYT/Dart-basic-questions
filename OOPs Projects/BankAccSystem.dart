class BankAccount{
  int _accountNumber = 0;
  String _accountHolder = '';
  double _balance = 0;
  BankAccount(this._accountNumber,this._accountHolder,this._balance);
  double get userBalance => _balance;
  void deposit(double amount){
    _balance += amount;
  }
  void withdraw(double amount){
    if(_balance >= amount){
      _balance -=amount;
    }else{
      throw Exception('Insufficient Balance');
    }
  }
  double getBalance(){
    return userBalance;
  }
}
void main(){
  var account = BankAccount(1234567890,'Rahul', 100);
  account.deposit(500);
  account.withdraw(200);
  print(account.getBalance());
}
