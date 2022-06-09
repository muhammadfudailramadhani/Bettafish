import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNavbar2 extends StatefulWidget {
  @override
  _CardNavbar2State createState() => _CardNavbar2State();
}

class _CardNavbar2State extends State<CardNavbar2> {
  @override
  Widget build(BuildContext context) {
    return 
      Align(
                      alignment: AlignmentDirectional(-1, -0.5),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Container(
                          width: 900,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 0, bottom: 0, left: 0, right: 350),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Betta.Fish',
                                  style: TextStyle(
                                    fontFamily: 'Ovo',
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  'Tlp.0839473853',
                                  style: TextStyle(
                                    fontFamily: 'Gelasio',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
  }
}
