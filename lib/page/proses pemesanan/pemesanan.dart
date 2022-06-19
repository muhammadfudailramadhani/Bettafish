import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/model/keranjang_model.dart';
import 'package:betta_fish/model/transaksi_model.dart';
import 'package:betta_fish/page/components/Cardpemesanan.dart';
import 'package:betta_fish/page/proses%20pemesanan/keranjang.dart';
import 'package:betta_fish/page/proses%20pemesanan/transaksi.dart';
import 'package:flutter/material.dart';

class Pemesanan extends StatefulWidget {
  int total;
  KeranjangModel data;
  Pemesanan({required this.data, required this.total});
  @override
  _PemesananState createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController alamat = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController total = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Keranjang()),
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
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(55, 10, 0, 0),
                      child: Text(
                        'Total',
                        style: TextStyle(
                          fontFamily: 'Roboto Condensed',
                          color: Color(0xA6867272),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 0),
                      child: Text(
                        "${widget.total}",
                        style: TextStyle(
                          fontFamily: 'Roboto Condensed',
                          color: Color.fromARGB(166, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Container(
                    width: 790,
                    height: 600,
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
                            data.jumlah, nama.text, widget.total);
                      }).toList();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TransaksiPage()),
                      );
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
