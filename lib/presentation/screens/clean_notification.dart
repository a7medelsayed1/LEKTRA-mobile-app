import '/core/app_export.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar/appbar_circleimage.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';

class CleanNotification extends StatelessWidget {

  final List<Info> li =[
    Info(name:"Ahmed Magdi",noti: " commenter on you post: What is the name of the doctor? ",date: "Yesterday at 5:00 PM",image:"assets/images/Group 247.png"),
    Info(name:"Hossam Mohamed",noti: " and 5 otherpeople reacted on your post: “I had anexperience with my child mo...”  ",date: "Yesterday at 7:25 PM",image:"assets/images/Group 250.png"),
    Info(name:"Khalid Orabi",noti: "  liked your comment: “ I was had tha same problem...” ",date: "Yesterday at 11:44 PM",image:"assets/images/Group 249.png"),
    Info(name:"Asmaa saeed",noti: "  replied on saif’s comment:“ I was had tha same problem b.....” ",date: "Yesterday at 2:00 aM",image:"assets/images/Group 248.png"),
    Info(name:"Fadi Waleed",noti: " commenter on you post: What is the name of the doctor? ",date: "Yesterday at 6:00 aM",image:"assets/images/Group 251.png"),
    Info(name:"Welcome in Lektra",noti: " We hope that you like the application and helpyou as much as it can ",date: "Yesterday at 5:22 aM",image:"assets/images/notification1.png"),



  ];
  Widget listView(){
    return Expanded(
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView.separated(itemBuilder: (context,index){
          return listviewitem(index);
        } ,
            separatorBuilder: (context,index){
          return Divider(height: 1,);
            }, itemCount: 6),
      ),
    );

  }
  Widget listviewitem(int index){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(index),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left:10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  username(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }
  Widget username(int index){
    double textsize=14;
    return Container(
      child: RichText(text:TextSpan(
        text: li[index].name,
        style: TextStyle(
          fontSize: textsize,
          color:  Color.fromRGBO(41, 47, 121, 1),
          fontWeight: FontWeight.bold
        ),
          children: [
            TextSpan(
          text: li[index].noti,
         style: TextStyle(fontWeight: FontWeight.w400,
         )
      )
          ]
      ) ,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,

      ),
    );
  }
  Widget timeAndDate(int index){
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(li[index].date,style: TextStyle(fontSize: 10),)
        ],
      ),

    );
  }
  Widget prefixIcon(int index){
    return Container(height: 50,
    width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle
           ,color:Colors.grey.shade300

      ),
      child: Image.asset(li[index].image,fit: BoxFit.fill,)
      ,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray200,
            body: SafeArea(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                                children: [
                                  Container(
                                    margin: getMargin(bottom: 12),
                                    color: ColorConstant.indigo900,
                                    child: CustomAppBar(
                                        height :getVerticalSize(80),
                                        centerTitle:
                                        true,
                                        title: AppbarImage(
                                            height: getVerticalSize(90),
                                            width: getHorizontalSize(120),
                                            imagePath: ImageConstant.imgLogoLight),
                                      leading: IconButton(
                                        onPressed: ()=>Navigator.pop(context),
                                        icon: Icon(Icons.arrow_back,color: Colors.white,),
                                      ),
                                        ),
                                  ),
                                       Padding(
                                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                                    child: Align(alignment: Alignment.topLeft,  child: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:  Color.fromRGBO(41, 47, 121, 1),),)),
                                  ),
                                       listView(),


        ],
      ),
    ),
    ),

    );
  }
}

class Info {
  String name;
  String noti;
  String date;
  String image;

   Info({
    required this.name,
     required this.noti,
     required this.date,
     required this.image,
});

}
