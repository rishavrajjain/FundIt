import 'package:fundit_application/widgets/provider_widget.dart';
import 'package:flutter/material.dart';
import 'package:fundit_application/services/auth_service.dart';
import 'package:auto_size_text/auto_size_text.dart';


final primaryColor = Colors.black;

enum AuthFormType{signIn, signUp, reset}



class SignUpView extends StatefulWidget{
  final AuthFormType authFormType;

  SignUpView({Key key, @required this.authFormType}) : super(key:key);

  @override 
_SignUpViewState createState() => _SignUpViewState(authFormType: this.authFormType);
}

class _SignUpViewState extends State<SignUpView>{

  AuthFormType authFormType;

  _SignUpViewState({this.authFormType});

    final formKey = GlobalKey<FormState>();
    String _email, _password, _username, _warning;

    void switchFormState(String state){
      formKey.currentState.reset();
      if(state == "signUp"){
        setState(() {
          authFormType = AuthFormType.signUp;
        });
      }else {
        setState(() {
          authFormType = AuthFormType.signIn;
        });
      }
    }

    bool validate(){
      final form = formKey.currentState;
      form.save();
      if(form.validate()){
        form.save();
        return true;
      } else {
        return false;
      }

    }

// on press validation 

    void submit() async {

      if (validate()){
        
        try {
        
        final auth = Provider.of(context).auth;

        if (authFormType == AuthFormType.signIn){

        String uid = await auth.signInWithEmailAndPassword(_email.trim(), _password);
        print("Signed In with ID $uid");
        Navigator.of(context).pushReplacementNamed('/home');

  }   else if (authFormType == AuthFormType.reset){
      await auth.sendPasswordResetEmail(_email);
      print('password reset email sent:');
       _warning = "A password reset link has been sent to $_email";
      setState(() {
      authFormType = AuthFormType.signIn;
      });
  }   else {
        String uid = await auth.createUserWithEmailAndPassword(_email.trim(), _password, _username);
        print("Signed Up with New ID $uid");
        Navigator.of(context).pushReplacementNamed('/home');

}}    catch(e)  { 
    print (e);
    setState(() {
      _warning = e.message; 
    });
   }
}}
      
  
   @override 

   Widget build(BuildContext context){

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    

    return Scaffold(
          body: Container(
        color: primaryColor,
        height: _height,
        width: _width,
        child:SafeArea(child: Column(children: <Widget>[
          
          SizedBox(height: _height * 0.025 ,),

          //handling error alerts

          showAlert(),

          SizedBox(height: _height * 0.025 ,),

          topLabel(),

          SizedBox(height: _height * 0.025 ,),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(key: formKey,
                 child: Column(
                   children: buildInputs() + buildButtons(),
                   
                   ),),
          )
        ],),) ,
      ),
    );
  }

  Widget showAlert(){
    if (_warning != null){
      return Container(
        color: Colors.amberAccent,
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.error_outline),
            ),
            Expanded(child: AutoSizeText(_warning, maxLines: 3,),),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton( 
                icon: Icon(Icons.close),
                onPressed: (){
                  setState(() {
                    _warning = null;
                  });
                },
              ),
            )
            

          ],
        ),
      );
    }
    return SizedBox(height: 0,); 
  }

   Text topLabel() {
     String _headerText;
     if (authFormType == AuthFormType.signUp){
       _headerText = "Create New Account";
     } else if( authFormType == AuthFormType.reset){

       _headerText = "Reset Password";

     } 
     
     else {
       _headerText = "Sign In";
     }
     return Text(_headerText, maxLines: 1,
             textAlign: TextAlign.center, 
             style: TextStyle(fontSize: 20, fontFamily: "Typewriter", color: Colors.white),);
   }

//input fields for email //password
List <Widget> buildInputs(){
List<Widget> textFields = [];

if (authFormType == AuthFormType.reset){

  textFields.add(TextFormField(
                validator: EmailValidator.validate,
                style: TextStyle(fontSize: 22.0, fontFamily: "Typewriter"),
                textAlign: TextAlign.center,
                decoration: signUpInputDecoration("Email"),
                onSaved: (value) => _email = value ,),);

  textFields.add(SizedBox(height: 15));
  return textFields;

}

if (authFormType == AuthFormType.signUp){

  textFields.add(TextFormField(
                validator: UsernameValidator.validate,
                style: TextStyle(fontSize: 22.0, fontFamily: "Typewriter"),
                textAlign: TextAlign.center,
                decoration: signUpInputDecoration("Username"),
                onSaved: (value) => _username = value ,
),);

textFields.add(SizedBox(height: 15));
}

textFields.add(TextFormField(
                validator: EmailValidator.validate,
                style: TextStyle(fontSize: 22.0, fontFamily: "Typewriter"),
                textAlign: TextAlign.center,
                decoration: signUpInputDecoration("Email"),
                onSaved: (value) => _email = value ,
),);

textFields.add(SizedBox(height: 15));

textFields.add(TextFormField(
                validator: PasswordValidator.validate,
                style: TextStyle(fontSize: 22.0, fontFamily: "Typewriter"),
                textAlign: TextAlign.center,
                decoration: signUpInputDecoration("Password"),
                obscureText: true,
                onSaved: (value) => _password = value ,
),);

textFields.add(SizedBox(height: 15));

// 

return textFields;



}
InputDecoration signUpInputDecoration(String hint) {
  return InputDecoration(
                hintText: hint,
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 0)),
                contentPadding: EdgeInsets.only(left: 14, top: 10, bottom: 10)
                
              );


  
}

// sign up & sign in buttons

List<Widget> buildButtons(){
  String _switchButtonText, _newFormState, _submitButtonText;

  bool _showForgotPassword = false;

  if(authFormType == AuthFormType.signIn){
    _switchButtonText = "New User? Create an account";
    _newFormState = "signUp";
    _submitButtonText = "Sign In";
    _showForgotPassword = true;
  } 
  
  else if (authFormType == AuthFormType.reset){
    _switchButtonText = "Return to Sign in";
    _newFormState = "signIn";
    _submitButtonText = "Submit";
  }
  else{
    _switchButtonText = "Already have an account? Sign in"; 
    _newFormState = "signIn";
    _submitButtonText = "Sign Up";
  }
  return [

    Container(
      width: MediaQuery.of(context).size.width * 0.7 ,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        textColor: primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(_submitButtonText, style: TextStyle(fontFamily: "Typewriter", fontSize: 20),),
        ),
        onPressed: submit,),
      ),

      showForgotPassword(_showForgotPassword),


    FlatButton(
      child: Text(_switchButtonText, style: TextStyle(color: Colors.white, fontFamily: "Typewriter"),),
      onPressed: (){
        switchFormState(_newFormState);
      }),



  ];
}

Widget showForgotPassword(bool visible){
  return Visibility(
      child: FlatButton( 
      child: Text('Forgot password?',style: TextStyle(color:Colors.white, fontFamily: "Typewriter"), ),
      onPressed: (){
        setState(() {
          authFormType = AuthFormType.reset;
        });
      }, 
      ),
      visible: visible,
  );
}


}



