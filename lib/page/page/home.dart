import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/model/popular_model.dart';
import 'package:betta_fish/model/rekomedasi_model.dart';
import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/CardRow.dart';
import 'package:betta_fish/page/components/Cardcategory.dart';
import 'package:betta_fish/page/page/popular.dart';
import 'package:betta_fish/page/page/rekomendasi.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late Future rekomedasi;
  late Future popular;
  @override
  void initState() {
    rekomedasi = ApiService().rekomendasi();
    popular = ApiService().popular();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
                                  builder: (context) => RekomendasiPage()),
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
                    FutureBuilder(
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState != ConnectionState.done)
                          return CircularProgressIndicator();
                        if (snapshot.hasError) return Text("terjadi kesalahan");
                        if (snapshot.hasData)
                          return _rekomendasiBuilder(snapshot.data, width);
                        return Text("kosong");
                      },
                      future: rekomedasi,
                    ),
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
                    FutureBuilder(
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState != ConnectionState.done)
                          return CircularProgressIndicator();
                        if (snapshot.hasError) return Text("terjadi kesalahan");
                        if (snapshot.hasData)
                          return _popularBuilder(snapshot.data, width);
                        return Text("kosong");
                      },
                      future: popular,
                    ),
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

  Widget _popularBuilder(PopularModel data, width) {
    return Container(
      height: width / 1.5,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: data.data.asMap().entries.map((data) {
          return CardRow(
            data: data.value,
            i: data.key,
          );
        }).toList(),
      ),
    );
  }

  Widget _rekomendasiBuilder(Rekomendasi data, width) {
    return Container(
      height: width / 1.5,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: data.data.asMap().entries.map((data) {
          return CardRow(
            data: data.value,
            i: data.key,
          );
        }).toList(),
      ),
    );
  }
}
