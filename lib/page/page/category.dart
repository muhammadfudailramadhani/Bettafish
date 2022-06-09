import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/CardRow.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:betta_fish/page/components/Cardcategory.dart';
import 'package:betta_fish/page/page/home.dart';
import 'package:betta_fish/page/proses%20pemesanan/keranjang.dart';
import 'package:betta_fish/page/proses%20pemesanan/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
                    Card2Row(),
                    CardNavbar2(),
                    CardNavbar()
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
