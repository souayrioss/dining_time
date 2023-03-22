 import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dining_time/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'PanierPage.dart';
class IndexPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inedxPage(),
    );
  }
}
class inedxPage extends StatefulWidget {
  const inedxPage({Key? key}) : super(key: key);
  @override
  State<inedxPage> createState() => _inedxPageState();
}

class _inedxPageState extends State<inedxPage> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Navbar()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*1,
            padding: EdgeInsets.symmetric(vertical: 60,horizontal:29 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/logo.png'),
                                    fit: BoxFit.contain
                                )
                            ),
                          ),
                          SizedBox(height: 30,),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Welcome to sunny ',
                                textAlign: TextAlign.center,
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'ubuntu',
                                    fontWeight: FontWeight.w700
                                ),
                                speed: const Duration(milliseconds: 80),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                ),
                const CircularProgressIndicator( )
              ],
            ),
          ),

        ],
      ),

    );

  }
}
