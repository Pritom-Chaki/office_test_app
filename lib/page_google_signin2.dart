import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class GoogleSignInPage2 extends StatefulWidget {
  const GoogleSignInPage2({Key? key}) : super(key: key);

  @override
  _GoogleSignInPage2State createState() => _GoogleSignInPage2State();
}

class _GoogleSignInPage2State extends State<GoogleSignInPage2> {
  bool _isLogin = false;
  GoogleSignInAccount ? _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Sign In'),
        centerTitle: true,
      ),
      body: Container(
        child: _isLogin
            ? Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Image.network(_userObj!.photoUrl ?? ''),
           Text(_userObj!.displayName ?? ''),
          Text(_userObj!.email ),
              TextButton(onPressed: () {
                googleLogOut();
              }, child: Text("Logout"))
            ],
          ),
        )
            : Center(
          child: ElevatedButton(
            child: Text("Login with Google"),
            onPressed: ()  {
              googleLogIn();


            },
          ),
        ),
      ),
    );
  }
  void googleLogIn()  {
    _googleSignIn.signIn().then((userData) {
      setState(() {
        _isLogin = true;
        _userObj = userData;
      });
    }
    ).catchError((e){
      print(e);
    });
  }

  void googleLogOut() {
_googleSignIn.signOut().then((value) {
  setState(() {
    _isLogin = false;
  });
}).catchError((e){
  print(e);
});
  }
}

