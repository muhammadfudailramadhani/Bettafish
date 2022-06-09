import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/CardRow.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:betta_fish/page/components/Cardcategory.dart';
import 'package:betta_fish/page/page/category.dart';
import 'package:betta_fish/page/page/popular.dart';
import 'package:betta_fish/page/page/rekomendasi.dart';
import 'package:betta_fish/page/proses%20pemesanan/keranjang.dart';
import 'package:betta_fish/page/proses%20pemesanan/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    CardAppbar(),
                    Align(
                      alignment: AlignmentDirectional(-1, -0.5),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                        child: Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                            child: Text(
                              'Categories',
                              style: TextStyle(
                                fontFamily: 'Ovo',
                                color: Colors.black,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CardCategori(),
                    Align(
                      alignment: AlignmentDirectional(-1, -0.5),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                            child: Text(
                              'Recommended',
                              style: TextStyle(
                                fontFamily: 'Ovo',
                                color: Colors.black,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.95, -0.4),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 3),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Rekomendasi()),
                            );
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                              fontFamily: 'Marko One',
                              color: Color(0x8F000000),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CardRow(),
                    
                    Align(
                      alignment: AlignmentDirectional(-1, -0.5),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 15, 0, 0),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                            child: Text(
                              'Popular',
                              style: TextStyle(
                                fontFamily: 'Ovo',
                                color: Colors.black,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.95, -0.4),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 3),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Popular()),
                            );
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                              fontFamily: 'Marko One',
                              color: Color(0x8F000000),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card2Row(),
                    CardNavbar2(),
                    CardNavbar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
