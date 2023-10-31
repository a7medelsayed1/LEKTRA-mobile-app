import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:ahmed_s_application4/presentation/screens/log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;


  BoardingModel({
    required this.title,
    required this.image,

  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  bool isDoctor = false;
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/board1.png',
      title: 'Welcome .. Eyesight is considered one of the most important basic senses. There are many different conditions that can affect the eye. Some are minor and resolve by themselves quickly',
    ),
    BoardingModel(
      image: 'assets/images/board2.png',
      title: 'About us .. The application then detecting symptoms of eye disorder (Retinoblastoma) which represent in a white reflection from the child pupil that called leukocoria using machine learning.',

    ),
    BoardingModel(
      image: 'assets/images/board3.png',
      title: 'we are here for helping you ...work on is to help parents to check up on their children eyes.',

    ),
  ];

  bool isLast = false;

  // void submit() {
  //   CacheHelper.saveData(
  //     key: 'onBoarding',
  //     value: true,
  //   ).then((value)
  //   {
  //     if (value) {
  //       navigateAndFinish(
  //         context,
  //         LogInScreen(),
  //       );
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray200,
      // appBar: AppBar(
      //   actions: [
      //    TextButton(onPressed:() {
      //      navigateAndFinish(context,LogInScreen(),);
      //    }, child: Text("skip"))
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Color.fromRGBO(41, 47, 121, 1),
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                  count: boarding.length,
                ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(41, 47, 121, 1),
                  onPressed: () {
                    if (isLast) {
                      navigateAndFinish(context, LogInScreen(),);
                    } else {
                      boardController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage('${model.image}'),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            '${model.title}',
            style: TextStyle(
              fontSize: getFontSize(30), color: Color.fromRGBO(41, 47, 121, 1),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
        ],
      );

  void navigateAndFinish(context,
      widget,) {
    _showMyDialog();
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(onTap: () {
                  setState(() {
                    isDoctor=true;
                  });
                  Get.to(LogInScreen(),arguments: isDoctor);
                }, child: Container(
                  padding: getPadding(all: 20),
                  decoration: BoxDecoration(
                    color: ColorConstant.indigo900,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Doctor', style: TextStyle(
                        fontSize: getFontSize(40), color: Colors.white
                    ),),
                  ),
                )),
                SizedBox(
                  height: getHorizontalSize(30),
                ),
                GestureDetector(
                    onTap: () => Get.to(LogInScreen(),arguments: isDoctor), child: Container(
                  padding: getPadding(all: 20),
                  decoration: BoxDecoration(
                    color: ColorConstant.indigo900,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Parent', style: TextStyle(
                        fontSize: getFontSize(40), color: Colors.white
                    ),),
                  ),
                )),
              ],
            ),
          ),

        );
      },
    );
  }
}


// class CacheHelper {
//   static SharedPreferences sharedPreferences;
//
//   static init() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//   }
//
//   static Future<bool> putBoolean({
//     required String key,
//     required bool value,
//   }) async {
//     return await sharedPreferences.setBool(key, value);
//   }
//
//   static dynamic getData({
//     required String key,
//   }) {
//     return sharedPreferences.get(key);
//   }
//
//   static Future<bool> saveData({
//     required String key,
//     @required dynamic value,
//   }) async {
//     if (value is String) return await sharedPreferences.setString(key, value);
//     if (value is int) return await sharedPreferences.setInt(key, value);
//     if (value is bool) return await sharedPreferences.setBool(key, value);
//
//     return await sharedPreferences.setDouble(key, value);
//   }
//
//   static Future<bool> removeData({
//     required String key,
//   }) async
//   {
//     return await sharedPreferences.remove(key);
//   }
// }