import 'package:all_in_one/component/app_images/app_images.dart';
import 'package:all_in_one/component/sideDrawer.dart';
import 'package:all_in_one/widgets/cardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context,orientation){
        return Scaffold(
          drawer: const Sidedrawer(),
          appBar: AppBar(
            title: const Text("Dashboard"),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            width: Get.width,
            height: Get.height,
            child: Column(
              children: [
                _buildImgSlider(),
                const SizedBox(height: 20,),
                GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  shrinkWrap: true,
                children: [
                  HomeCard(cardTitle: 'Remove Bg', cardIcon: Icons.image,onPressed: (){print("ok");},),
                  HomeCard(cardTitle: 'Insta Link', cardIcon: Icons.install_mobile,onPressed: (){},),
                  HomeCard(cardTitle: 'Fb Link', cardIcon: Icons.facebook,onPressed: (){},),
                  HomeCard(cardTitle: 'Utube Link', cardIcon: Icons.ondemand_video,onPressed: (){},),
                  HomeCard(cardTitle: 'Image to Pdf', cardIcon: Icons.picture_as_pdf,onPressed: (){},),
                ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //Sliding image Abhis
  Widget _buildImgSlider() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ImageSlideshow(
        width: Get.width * 0.9,
        height: 150,
        initialPage: 0,
        indicatorColor: Colors.white,
        indicatorBackgroundColor: Colors.white,
        onPageChanged: (value) {
          // print('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          Image.asset(
            AppImages.slidingJpg1,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Image.asset(
            AppImages.slidingJpg2,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Image.asset(
            AppImages.slidingJpg3,
            width: Get.width,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
