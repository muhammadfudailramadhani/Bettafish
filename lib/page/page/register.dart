import 'dart:convert';

import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/page/page/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = false;
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController alamat = TextEditingController();
  String error = "";

  Future register() async {
    Uri url = Uri.parse("$baseUrl/user/register");
    final res = await http.post(url,
        body: jsonEncode({
          "username": username.text,
          "password": password.text,
          "phone": phone.text,
          "alamat": alamat.text
        }),
        headers: headers);
    SharedPreferences storage = await SharedPreferences.getInstance();
    if (res.statusCode == 200) {
      var token = jsonDecode(res.body)["token"];
      storage.setString("token", token);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
      print(token);
      return true;
    } else {
      setState(() {
        error = jsonDecode(res.body)["message"];
        print(error);
      });
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFC0A3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Align(
                alignment: AlignmentDirectional(0, -0.05),
                child: Container(
                  alignment: AlignmentDirectional(0.050000000000000044, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 53,
                                color: Color(0xFF94E5D7),
                                offset: Offset(9, 18),
                                spreadRadius: 10,
                              )
                            ],
                            gradient: LinearGradient(
                              colors: [Color(0x56FFFFFF), Color(0xFF94E5D7)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(0, -1),
                              end: AlignmentDirectional(0, 1),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(100),
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          alignment: AlignmentDirectional(0, 0),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 78,
                            fontWeight: FontWeight.bold),
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 257,
                        height: 268,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 80,
                      ),

                      //from

                      Container(
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(105, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 2, 0, 0),
                              child: Container(
                                width: 20,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/username.png',
                                    ).image,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 290,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(30),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 2, bottom: 0, left: 13, right: 85),
                                child: TextFormField(
                                  controller: username,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                    hintStyle: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF979797),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(error == "username telah digunakan" ? error : ""),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 400,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(105, 255, 255, 255),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 2, 0, 0),
                                  child: Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0x00EEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/pesan.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 290,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00EEEEEE),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 0, left: 10, right: 85),
                                    child: TextFormField(
                                      controller: phone,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter your phone',
                                        hintStyle: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF979797),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(error == "nomer hp telah digunakan" ? error : ""),

                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(105, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(17, 0, 0, 0),
                              child: Container(
                                width: 20,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/password.png',
                                    ).image,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 290,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(30),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 2, bottom: 0, left: 13, right: 85),
                                child: TextFormField(
                                  controller: password,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF979797),
                                    ),
                                  ),
                                  autofocus: false,
                                  obscureText: true,
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 0, left: 30, right: 0),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/mata.png',
                                    ).image,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(105, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(17, 0, 0, 0),
                              child: Container(
                                width: 20,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/password.png',
                                    ).image,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 290,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(30),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 2, bottom: 0, left: 13, right: 85),
                                child: TextFormField(
                                  controller: alamat,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Alamat',
                                    hintStyle: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF979797),
                                    ),
                                  ),
                                  autofocus: false,
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 0, left: 30, right: 0),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/mata.png',
                                    ).image,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: 450,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF700BEF),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton(
                          onPressed: () {
                            register();
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
