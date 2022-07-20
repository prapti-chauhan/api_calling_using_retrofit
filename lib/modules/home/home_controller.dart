import 'package:api_calling_retrofit/model/users.dart';
import 'package:api_calling_retrofit/network/api_client.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  var client = ApiClient(Dio(BaseOptions(contentType: 'application/json')));

  List<Users> users = [];


  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData(){
  client.getUsers().then((value) {
    users = value;
  });
}
}