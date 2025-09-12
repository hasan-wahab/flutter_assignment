mixin LoginValidation{
  bool isValidEmail(String email)=> email.contains('@gmail.com');
  bool isValidPassword(String password)=>password.length>=6;
}
