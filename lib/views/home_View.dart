import 'first_view.dart';
import 'package:flutter/material.dart';
import 'package:fundit_application/widgets/provider_widget.dart';
import 'package:fundit_application/services/auth_service.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Crowdfunding App"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.undo),
            onPressed: () async {
              try {
                AuthService auth = Provider.of(context).auth;
                await auth.signOut();
                print("Signed out!");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstView()));
                
              } catch (e){
                print(e);
              }
            },)
        ],
      ),
    );
  }
}
