import 'package:get/get.dart';

class HomeController extends GetxController {
  List storyModel = [
    'assets/images/face7.jpg',
    'assets/images/face6.jpg',
    'assets/images/face5.jpg',
    'assets/images/face4.jpg',
    'assets/images/face3.jpg',
    'assets/images/face2.jpg',
    'assets/images/face1.jpg',
  ];

  List postModel = [
    'assets/images/post1.jpg',
    'assets/images/post2.jpg',
    'assets/images/post3.jpg',
    'assets/images/post4.jpg',
  ];

  RxInt selcetTabbar = 0.obs;

  changeTabbar(index) {
    selcetTabbar.value = index;
  }

  List tabBarTitle = [
    'Just Chatting',
    'IRL',
    'Musica',
    'Exports',
    'Just Chatting',
    'IRL',
    'Musica',
    'Exports',
  ];
}
