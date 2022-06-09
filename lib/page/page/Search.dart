import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/CardRow.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:betta_fish/page/page/home.dart';
import 'package:betta_fish/page/proses%20pemesanan/keranjang.dart';
import 'package:betta_fish/page/proses%20pemesanan/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                    Container(
                      width: 600,
                      height: 775,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Card2Row(),
                          Card2Row(),
                          Card2Row(),
                          Card2Row(),
                          Card2Row()
                        ],
                      ),
                    ),
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
