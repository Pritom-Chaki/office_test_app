import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookSignIn extends StatefulWidget {
  const FacebookSignIn({Key? key}) : super(key: key);

  @override
  _FacebookSignInState createState() => _FacebookSignInState();
}

class _FacebookSignInState extends State<FacebookSignIn> {
  bool _isLogin = false;
  Map _userObj = {};

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
                    Image.network(_userObj["picture"]["data"]["url"]),
                    Text(_userObj["name"]),
                    Text(_userObj["email"]),
                    TextButton(onPressed: () {
                      fbLogOut();
                    }, child: Text("Logout"))
                  ],
                ),
            )
            : Center(
                child: ElevatedButton(
                  child: Text("Login with Facebook"),
                  onPressed: ()  {
                    fbLogIn();
                  },
                ),
              ),
      ),
    );
  }

  void fbLogIn() async {
    FacebookAuth.instance.login(
        permissions: ["public_profile", "email"]
    ).then((value) {
      FacebookAuth.instance.getUserData().then((userData) {
        setState(() {
          _isLogin = true;
          _userObj = userData;
        });
      });
    });
  }

  void fbLogOut() {
    FacebookAuth.instance.logOut().then((value) {
      setState(() {
        _isLogin = false;
        _userObj = {};
      });
    });
  }
}
