import 'package:flutter/material.dart';
import 'package:talabatey/Screens/HomePage.dart';




class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  Future Delay() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => HomePage())
    );
    
  }
  @override

  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE93946),
      body: Center(
        child:Image.network("images/talabatey.jpg",width: 200,height: 200,),
        
        
      ),
      
      
      
    );
  }
}
