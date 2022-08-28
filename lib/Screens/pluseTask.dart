import 'package:flutter/material.dart';


class pluseTask extends StatefulWidget {
  const pluseTask({Key? key}) : super(key: key);

  @override
  State<pluseTask> createState() => _pluseTaskState();
}

class _pluseTaskState extends State<pluseTask> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 140,width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/brisket.jpg"),
                fit: BoxFit.cover
              )
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top:20,left: 10,
                    child: Container(
                  height: 40,width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.chevron_left_outlined,color: Colors.red,size: 30,),
                ))
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10,left: 270,bottom: 30),
            child: Text("كرل 99",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE93946),
                    fontSize: 30,
                    fontFamily: "ElMessiri-Medium")),
          ),
          Padding(padding: EdgeInsets.only(left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ممتاز",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontFamily: "ElMessiri-Medium")),
                    SizedBox(width: 10,),
                    Icon(Icons.emoji_emotions_outlined,color: Colors.grey,size: 25,),


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("سعر التوصيل : 1000 دينار",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontFamily: "ElMessiri-Medium")),
                    SizedBox(width: 10,),
                    Icon(Icons.delivery_dining_outlined,color: Colors.grey,size: 25,),


                  ],
                ),


              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ادنى طلب : 5000 دينار",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: "ElMessiri-Medium")),
                    SizedBox(width: 10,),
                    Icon(Icons.restaurant,color: Colors.grey,size: 25,),


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("حي الجامعة",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: "ElMessiri-Medium")),
                    SizedBox(width: 10,),
                    Icon(Icons.location_on_outlined,color: Colors.grey,size: 25,),


                  ],
                ),


              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 50),
            child: Row(

              children: [
                Text("وقت التوصيل المتوقع 30 الى 40 دقيقة",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontFamily: "ElMessiri-Medium")),
                SizedBox(width: 10,),
                Icon(Icons.watch_later_outlined,color: Colors.grey,size: 25,),


              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30,left: 200,bottom: 20),
            child: Text("بلاك برسكت",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE93946),
                    fontSize: 30,
                    fontFamily: "ElMessiri-Medium")),
          ),
          Container(
            height: 80,width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.withOpacity(0.2),
            ),
            child:
            Padding(padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.keyboard_arrow_up_outlined,color: Colors.red,size: 35,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("أضافات",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFE93946),
                              fontSize: 20,
                              fontFamily: "ElMessiri-Medium")),
                      Text("اختياري",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.withOpacity(0.7),
                              fontSize: 17,
                              fontFamily: "ElMessiri-Medium")),

                    ],
                  )

                ],
              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 250,bottom: 10),
            child: Text("تعليمات خاصة",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 20,
                    fontFamily: "ElMessiri-Medium")),
          ),
          Container(
            height: 60,width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.withOpacity(0.2),
            ),
            child:
            Center(
              child: Text("ملاحظات تخص الطلب",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.3),
                      fontSize: 20,
                      fontFamily: "ElMessiri-Medium")),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 20,bottom: 10),
            child: Container(
              height: 50,width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.withOpacity(0.2),
              ),
              child:
              Center(
                child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _itemCount!=0?
                  IconButton(icon:  Icon(Icons.remove,size: 30,color: Colors.red,),onPressed: ()=>setState(()=>_itemCount-- ),): Container(),
                  Text(_itemCount.toString(),style: TextStyle(fontSize: 20,color: Colors.black),),
                  IconButton(icon:  Icon(Icons.add,size: 30,color: Colors.red,),onPressed: ()=>setState(()=>_itemCount++)),
                ],
              ),
              ),

            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10),
            child: Text("8500 دينار",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE93946),
                    fontSize: 20,
                    fontFamily: "ElMessiri-Medium")),
          ),
          Container(
            height: 60,width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.red.withOpacity(1),
            ),
            child:
            Center(
              child: Text("أضافة الى السلة",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(1),
                      fontSize: 20,
                      fontFamily: "ElMessiri-Medium")),
            ),

          ),















        ],
      ),




    );
  }
}
