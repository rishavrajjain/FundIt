import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fundit_application/widgets/custom_dialog.dart';

class FirstView extends StatelessWidget{
  final primaryColor = Colors.black;

  @override 
  Widget build(BuildContext context){

  final _width = MediaQuery.of(context).size.width;
  final _height = MediaQuery.of(context).size.height;

  
    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: primaryColor,
        child: SafeArea(
          child: Column(children: <Widget>[

            SizedBox(height: _height * 0.15,),
            
            AutoSizeText("CROWDFUND STARTUPS FOR EQUITY", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, 
                                   color: Colors.white,
                                   fontFamily: 'Typewriter',
                                   
                                   ),
                 ),

            SizedBox(height: _height * 0.15,),
                  
            AutoSizeText("Invest in startups for as low as USD 10 and receive a share of the equity",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, 
                                         color: Colors.white,
                                         fontFamily: 'Typewriter'),
                 ),

            SizedBox(height: _height * 0.05,),

            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              child: Padding(
                padding: const EdgeInsets.only(top:15.0, bottom: 15.0, left: 30.0, right: 30),
                child: Text('Get Started', style: TextStyle(fontFamily: 'Typewriter', fontSize: 20),),
              ),
              onPressed: () {
                showDialog(context: context,
                           builder: (BuildContext context) => CustomDialog(title: "Would you like to create a free account?",
                                                                           description:"With an account, your data will be securely saved, allowing you to access CROWDFUND from multiple devices" ,
                                                                           primaryButtonText: "Create my account",
                                                                           primaryButtonRoute: "/signUp",
                                                                           secondaryButtonText: "Maybe Later",
                                                                           secondaryButtonRoute: "/home",
                                                                           
                                                                           ) );
              },
            ),

            SizedBox(height: _height * 0.05,),

            AutoSizeText("Already have an account?",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, 
                                         color: Colors.white,
                                         fontFamily: 'Typewriter'),
                 ),

                 SizedBox(height: _height * 0.05,),


                  RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              child: Padding(
                padding: const EdgeInsets.only(top:15.0, bottom: 15.0, left: 30.0, right: 30),
                child: Text('Sign In', style: TextStyle(fontFamily: 'Typewriter', fontSize: 20),),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/signIn");
              },
            ),



            
            ],),)
      ),
    );
  }
}
