import 'package:betta_fish/page/components/CardTransaksi.dart';
import 'package:betta_fish/page/components/Cardkeranjang.dart';
import 'package:betta_fish/page/components/cardstatus.dart';
import 'package:betta_fish/page/page/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transaksi extends StatefulWidget {
  

  @override
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 600,
              height: 934,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                        child: InkWell(
                           onTap: () {
                           Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                      },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/kembali.png',
                                ).image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.15, 0.05),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(190, 5, 0, 0),
                          child: Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-0.25, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    1, 0, 0, 0),
                                child: Text(
                                  'Transaksi',
                                  style: TextStyle(
                                        fontFamily: 'Merienda One',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                    Cardstatus(),
              Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Container(
                        width: 500,
                        height: 600,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            CardTransaksi(),
                            CardTransaksi(),
                            CardTransaksi(),
                            CardTransaksi(),
                            CardTransaksi(),
                          ],
                        ),
                      ),
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(60, 30, 0, 0),
                        child: Text(
                          'Total',
                          style:
                             TextStyle(
                                    fontFamily: 'Merienda One',
                                    fontSize: 30,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(80, 30, 0, 0),
                        child: Text(
                          'Rp.60.000',
                          style:
                        TextStyle(
                                    fontFamily: 'Merienda One',
                                    fontSize: 30,
                                  ),
                        ),
                      ),
                    ],
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
