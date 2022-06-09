import 'package:betta_fish/page/detail/detailproduct.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardRow extends StatefulWidget {
  @override
  _CardRowState createState() => _CardRowState();
}

class _CardRowState extends State<CardRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      height: 390,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailProduck()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                  child: Container(
                    width: 230,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFFC0A3FF),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(300),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 300,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0x00C0A3FF),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/ikan1.jpg',
                              ).image,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.7, -0.2),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'Betta',
                              style: TextStyle(
                                fontFamily: 'Marko One',
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.55, -0.6),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 25, 0, 0),
                            child: Text(
                              'Rosetail Lavender',
                              style: TextStyle(
                                fontFamily: 'Roboto Condensed',
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailProduck()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 0, left: 50, right: 0),
                  child: Container(
                    width: 230,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 249, 132, 49),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(300),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 300,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0x00C0A3FF),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/ikan1.jpg',
                              ).image,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.7, -0.2),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'Betta',
                              style: TextStyle(
                                fontFamily: 'Marko One',
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.55, -0.6),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 25, 0, 0),
                            child: Text(
                              'Rosetail Lavender',
                              style: TextStyle(
                                fontFamily: 'Roboto Condensed',
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
