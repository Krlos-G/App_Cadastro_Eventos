import'package:flutter/material.dart';
import '../models/user_model.dart';
 
class LoginController {
  void login(String name, String phone, BuildContext context) {
    if (name.isNotEmpty && phone.length == 15) {
      UserModel user = UserModel(name: name, phone: phone);
      // Simular requisição ao backend
      Future.delayed(Duration(seconds: 2), () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login bem-sucedido para ${user.name}'))
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Preencha os campos corretamente'))
      );
    }
  }
}