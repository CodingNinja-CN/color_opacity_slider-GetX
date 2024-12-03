import 'package:get/get.dart';

class OpacityController extends GetxController{
  RxDouble opacity = 0.4.obs;

  changeOpacity(double value){
    opacity.value=value;
  }
}