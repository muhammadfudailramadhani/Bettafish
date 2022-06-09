
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardpemesanan extends StatefulWidget {

  @override
  _CardpemesananState createState() => _CardpemesananState();
}

class _CardpemesananState extends State<Cardpemesanan> {
  @override
  Widget build(BuildContext context) {
    return 
     Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 700,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
    Align(
      alignment: AlignmentDirectional(-0.40, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
        child: Container(
          width: 500,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xC2C0A3FF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/ikan1.jpg',
                      ).image,
                    ),
                  ),
                ),
              ),
              Text(
                'Rosetail Lavender',
                style: TextStyle(
                      fontFamily: 'Roboto Condensed',
                      color: Color(0x58101213),
                      fontSize: 25,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(100, 15, 20, 15),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xD8F98531),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 13, 15, 5),
                    child: Text(
                      '2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                            fontFamily: 'Roboto Condensed',
                            fontSize: 20,
                          ),
                    ),
                  ),
                ),
              ),
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
