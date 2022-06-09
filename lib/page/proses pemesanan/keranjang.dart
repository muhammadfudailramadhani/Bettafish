import 'package:betta_fish/page/components/CardTransaksi.dart';
import 'package:betta_fish/page/components/Cardkeranjang.dart';
import 'package:betta_fish/page/page/home.dart';
import 'package:betta_fish/page/proses%20pemesanan/pemesanan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Keranjang extends StatefulWidget {
  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
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
                              MaterialPageRoute(builder: (context) => Home()),
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
                          padding: EdgeInsetsDirectional.fromSTEB(190, 5, 0, 0),
                          child: Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-0.25, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                                child: Text(
                                  'Keranjang',
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
                  Cardkeranjang(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(60, 30, 0, 0),
                        child: Text(
                          'Total',
                          style: TextStyle(
                            fontFamily: 'Merienda One',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(80, 30, 0, 0),
                        child: Text(
                          'Rp.60.000',
                          style: TextStyle(
                            fontFamily: 'Merienda One',
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pemesanan()),
                        );
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 30,
                            color: Colors.white),
                      ),

                      // options: FFButtonOptions(
                      //   width: 180,
                      //   height: 40,
                      //   color: Color(0xFF700BEF),
                      //   textStyle:
                      //       FlutterFlowTheme.of(context).subtitle2.override(
                      //             fontFamily: 'Poppins',
                      //             color: Colors.white,
                      //           ),
                      //   borderSide: BorderSide(
                      //     color: Colors.transparent,
                      //     width: 1,
                      //   ),
                      //   borderRadius: 30,
                      // ),
                    ),
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
