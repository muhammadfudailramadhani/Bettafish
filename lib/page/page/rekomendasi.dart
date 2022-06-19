// import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
// import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:betta_fish/page/page/Search.dart';
import 'package:betta_fish/page/page/home.dart';
import 'package:betta_fish/page/proses%20pemesanan/keranjang.dart';
import 'package:flutter/material.dart';

class RekomendasiPage extends StatefulWidget {
  @override
  _RekomendasiPageState createState() => _RekomendasiPageState();
}

class _RekomendasiPageState extends State<RekomendasiPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Align(
          alignment: AlignmentDirectional(-1, -1),
          child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 3, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0x00B48F8F),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/logo.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
              )),
        ),
        actions: [
          show // agar container search tidak terlihat ketika halaman di load
              ? Row(
                  children: [
                    Container(
                      width: 300,
                      //border

                      child: TextField(
                        onSubmitted: (value) {
                          if (value.isEmpty) {
                            return;
                          } // agar tidak terjadi error ketika tidak mengisi data di textfield
                          else {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Search(
                                      data: value,
                                    ))); // menampilkan halaman search  dengan data yang di inputkan  di textfield
                          }
                        }, // agar textfield tidak bisa diisi kosong dan tidak bisa di submit dengan tombol enter
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            show = false;
                          }); //ketika tombol close ditekan maka container search akan disembunyikan
                        },
                        icon: Icon(Icons.cancel))
                  ],
                )
              : Align(
                  alignment: AlignmentDirectional(-1, -0.9),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(450, 12, 10, 0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          show = true;
                        }); // ketika di tekan maka container search akan ditampilkan  dan bisa di isi data
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0x00BB3F3F),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/search.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
          Align(
            alignment: AlignmentDirectional(-1, -0.9),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 10, 20, 0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Keranjang(),
                    ),
                  );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/keranjang.png',
                      ).image,
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
                              'Rekomendasi',
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
                    Container(
                      width: 600,
                      height: 720,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          // Card2Row(),
                          // Card2Row(),
                          // Card2Row(),
                          // Card2Row(),
                          // Card2Row()
                        ],
                      ),
                    ),
                    // CardNavbar2(),
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
