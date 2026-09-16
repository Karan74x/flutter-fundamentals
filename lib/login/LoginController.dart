// ignore_for_file: unused_import

//it imports the GetX package becasue we are going to use GetXController
import 'package:get/get.dart';

import '../api/ApiServices.dart';
import './LoginModel.dart';

//creating our own controller
class Logincontroller extends GetxController {
  //creatting the object of ApiService Object
  final apiServices = Apiservices();

  Future<User> getUser() async {
    final user = await apiServices.getUser();

    return user;
  }
}
