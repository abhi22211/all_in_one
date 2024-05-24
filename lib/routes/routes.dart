


import 'package:all_in_one/view/home.dart';
import 'package:get/get.dart';

class  AppRoutes{

  static const String HOME = '/HOME';


  static List<GetPage> getPages =[
   GetPage(name: HOME, page:()=>const Home()),

  ];
}