import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/model/keranjang_model.dart';
import 'package:betta_fish/page/components/Cardpemesanan.dart';
import 'package:betta_fish/page/proses%20pemesanan/keranjang.dart';
import 'package:flutter/material.dart';

class Pemesanan extends StatefulWidget {
  KeranjangModel data;
  Pemesanan({required this.data});
  @override
  _PemesananState createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController alamat = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController total = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
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
                                builder: (context) => Keranjang()),
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 5, 0, 0),
                      child: Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-0.25, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                            child: Text(
                              'Pemesanan',
                              style: TextStyle(
                                fontFamily: 'Merienda One',
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.80, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Text(
                      'Joniony',
                      style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        fontSize: 28,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.80, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      'Alamat',
                      style: TextStyle(
                        fontFamily: 'Roboto Condensed',
                        color: Color(0xA6867272),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    controller: alamat,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.80, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'No.telpon',
                      style: TextStyle(
                        fontFamily: 'Roboto Condensed',
                        color: Color(0xA6867272),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    controller: phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                // Align(
                //   alignment: AlignmentDirectional(-0.80, 0),
                //   child: Padding(
                //     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                //     child: Text(
                //       'Ongkir',
                //       style:TextStyle(
                //             fontFamily: 'Roboto Condensed',
                //             color: Color(0xA6867272),
                //             fontSize: 17,
                //           ),
                //     ),
                //   ),
                // ),
                // Align(
                //   alignment: AlignmentDirectional(-0.30, 0),
                //   child: Container(
                //     width: 500,
                //     height: 40,
                //     decoration: BoxDecoration(
                //       color: Color(0x15F98531),
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     child: Row(
                //       mainAxisSize: MainAxisSize.max,
                //       children: [
                //         Padding(
                //           padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                //           child: Text(
                //             '20,000'
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsetsDirectional.fromSTEB(300, 0, 0, 0),
                //           child: Text(
                //             'Pl.Jawa',
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsetsDirectional.fromSTEB(3, 0, 1, 0),
                //           child: Container(
                //             width: 20,
                //             height: 20,
                //             decoration: BoxDecoration(
                //               color: Color(0x00FFFFFF),
                //               image: DecorationImage(
                //                 fit: BoxFit.cover,
                //                 image: Image.asset(
                //                   'assets/images/bn.png',
                //                 ).image,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Align(
                  alignment: AlignmentDirectional(-0.80, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Total',
                      style: TextStyle(
                        fontFamily: 'Roboto Condensed',
                        color: Color(0xA6867272),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    controller: total,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 700,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListView(
                      children: widget.data.data.map((data) {
                        return Cardpemesanan(
                          data: data,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      widget.data.data.map((data) {
                        ApiService().pesan(data.barangId, alamat.text,
                            data.jumlah, int.parse(total.text));
                      }).toList();
                    },
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        fontSize: 24,
                      ),
                    ),
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
