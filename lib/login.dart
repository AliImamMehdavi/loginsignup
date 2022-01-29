import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  var height;
  var width;
  bool admin = true;
  var uname = TextEditingController(), pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(width * 0.3, height * 0.1, 0, 40),
              child: Text(
                "Login screen",
                style: TextStyle(
                    color: Color(0xFF03081B),
                    fontSize: 30,
                    fontFamily: 'Hind',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    left: 20.0, top: 0.0, right: 20.0, bottom: 80.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    )),
                child: Padding(
                  padding: EdgeInsets.all(height * 0.02),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade200))),
                              child: TextField(
                                controller: uname,
                                decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade200))),
                              child: TextField(
                                controller: pass,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (uname.text == "admin" && pass.text == "admin") {
//Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminMain(),),);
                          } else if (uname.text == "user" &&
                              pass.text == "user") {
//  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserMain(),),);
                          }
                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue[900]),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ), //Login
                      SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (uname.text == "admin" && pass.text == "admin") {
//Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminMain(),),);
                          } else if (uname.text == "user" &&
                              pass.text == "user") {
//  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserMain(),),);
                          }
                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue[900]),
                          child: Center(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ), //SignUp
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
