

import 'package:flutter/foundation.dart';

class LoginProvider with ChangeNotifier{
  String? msg= '';

  void emailAndPassword(String? email,String? password){
   if(email!.contains('@gmail.com')&&password!.length>=6){
      msg='Your email and password formate is correct.';
     notifyListeners();
   } else{
      msg='Your email and password formate is incorrect.';
      notifyListeners();
   }
  }

}