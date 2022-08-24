import 'package:flutter/material.dart';

import 'moe.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 5),
                      child: Image.asset("images/search.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 5),
                          child: Image.asset("images/expand.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 11),
                          child: Text("الداوودي",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 20,
                                  fontFamily: "ElMessiri-Medium")),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 5),
                      child: Image.asset("images/notifications.png"),
                    ),
                  ],
                ),

                Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    )),

                Padding(padding: EdgeInsets.only(top: 30),
                child:  ListView(
                  children: [
                    Positioned(
                      top: 80,
                      child: Container(
                        height: 200,
                        width: 400,
                        child: ListView(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 35),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Cards1(
                                      "images/hala.jpg", "حلويات"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Cards1(
                                      "images/diet.jpg", "دايت فوود"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Cards1(
                                      "images/batakat.jpg", "بطاقات تعبئة"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Cards1(
                                      "images/market.jpg", "ماركت"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Cards1(
                                      "images/baloshi.jpg", "بلوشي"),
                                  Cards2("images/res.jpg", "المطاعم"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),)

              ],
            ),
          ),


          Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Test()
          ),

          Stack(
            children: [
              Positioned(
                  bottom: 0,
                  child: Positioned(
                    bottom:0,
                    child:
                    Container(
                      color: Colors.white,
                      width: 400,height: 40,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const instagram()),
                                // );
                                Colors.blueAccent;
                              },
                              icon: const Icon(
                                Icons.home_filled,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const explore()),
                                // );

                              },
                              icon: const Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_alert_outlined,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart_checkout_outlined,
                                size: 30,
                              ),
                            ),
                            GestureDetector(onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const Profile()),
                              // );

                            },
                              child: CircleAvatar(
                                  backgroundImage:
                                  AssetImage("images/moeee.JPEG"),
                                  maxRadius: 15),
                            ),
                          ],
                        ),
                      ),
                    ),))
            ],
          )


        ],
      ),
    );
  }

  Column Cards1(String phCards1, String txtCards1) {
    return Column(
      children: [
        Container(
          height: 20,
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(image: AssetImage(phCards1))),
        ),
        SizedBox(
          height: 5,
        ),
        Text(txtCards1,
            style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 19,
                fontFamily: "ElMessiri-Medium")),
      ],
    );
  }

  Column Cards2(String phCards2, String txtCards2) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          child: Stack(
            children: [
              Positioned(
                top: 125,
                left: 36,
                child: Text(txtCards2,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE93946),
                        fontSize: 19,
                        fontFamily: "ElMessiri-Medium")),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(image: AssetImage(phCards2))),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                      top: 10,
                      right: 21,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle,
                          color: Color(0xFFE93946),
                        ),
                        child: Center(
                          child: Text(
                            "239",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column Cards3(String phCards3, String txtCards3) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                    height: 130,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(phCards3), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 15,
                          right: 20,
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white.withOpacity(0.8)),
                            child: Icon(
                              Icons.delivery_dining_outlined,
                              color: Colors.red,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, right: 5),
              child: Text(
                txtCards3,
                style: TextStyle(
                    fontFamily: "ElMessiri-Medium",
                    fontSize: 25,
                    color: Colors.red),
              ),
            )
          ],
        ),
      ],
    );
  }

  Column Cards4() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "الكل",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column Cards5() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "خصومات",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.discount_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column Cards6() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "يدعم المحفظة",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column Cards7() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "توصيل طلباتي",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.delivery_dining_outlined,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column Cards8() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "توصيل مجاني",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.card_giftcard_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column Cards9() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "حصري",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column Cards10() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "جديد",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column CardsEnd(String rest, String loc) {
    return Column(
      children: [
        Container(
            height: 140,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage("images/talabatey.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  right: 60,
                  child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.8)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          "بروموكود",
                          style: TextStyle(
                              fontFamily: "ElMessiri-Medium",
                              fontSize: 25,
                              color: Colors.red),
                        ),
                      )),
                ),
                Positioned(
                  top: 15,
                  right: 20,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withOpacity(0.8)),
                    child: Icon(
                      Icons.delivery_dining_outlined,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                ),
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "الحد الادنى للطلب: 5000 د.ع",
                style: TextStyle(
                    fontFamily: "ElMessiri-Medium",
                    fontSize: 15,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, right: 20),
              child: Text(
                rest,
                style: TextStyle(
                    fontFamily: "ElMessiri-Medium",
                    fontSize: 25,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "سعر التوصيل: 1000 د.ع",
                      style: TextStyle(
                          fontFamily: "ElMessiri-Medium",
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    Icon(
                      Icons.delivery_dining_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "ممتاز",
                      style: TextStyle(
                          fontFamily: "ElMessiri-Medium",
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      loc,
                      style: TextStyle(
                          fontFamily: "ElMessiri-Medium",
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
