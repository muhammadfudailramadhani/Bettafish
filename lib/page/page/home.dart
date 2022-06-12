import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/model/popular_model.dart';
import 'package:betta_fish/model/rekomedasi_model.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:betta_fish/page/components/Card3row.dart';
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
   List category = ["All", "Fish", "Fish", "Fish", "Fish", "Fish", "Fish"];
  late Future rekomedasi;
  late Future popular;//untuk mengambil data dari API yang sudah dibuat di api_service.dart rekomendasi dan popular   
  @override
  void initState() {
    rekomedasi = ApiService().rekomendasi();
    popular = ApiService().popular();// untuk mengambil data dari API dan mengirimkan ke model PopularModel dan RekomendasiModel
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
                    Container(
                      height: 50,
                      width: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: category.map((data){
                          return CardCategori(data: data);
                        }).toList(),
                      ),
                    ),
                 
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
                   
                    FutureBuilder(
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState != ConnectionState.done)
                          return CircularProgressIndicator();// jika data belum ada maka akan menampilkan progress indicator atau loading
                        if (snapshot.hasError) return Text("terjadi kesalahan");// jika terdapat error maka akan menampilkan text error yang terjadi kesalahan 
                        if (snapshot.hasData)
                          return _popularBuilder(snapshot.data, width);
                        return Text("kosong");//jika data tidak ada maka akan menampilkan text kosong  
                      },// 
                      future: popular,
                    ),// future builder untuk mengambil data dari api dan menampilkannya di halaman ini dengan menggunakan future builder 
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
    return Padding(
         padding: EdgeInsets.only(top: 20, bottom: 0, left: 0, right: 0),
      child: Container(
        height: width / 1,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: data.data.asMap().entries.map((data) {
            return Row(
              children: [
                Card2Row(
                  data: data.value,
                  i: data.key,
                ),//datanya diambil dari data.value yang ada di PopularModel
                 Card3Row(
                  data: data.value,
                  i: data.key,
                ),
              ],
            );
          }).toList(), //untuk mengambil data dari data.value yang ada di PopularModel
        ),
      ),
    );
  }//mengambil data dari PopularModel dan menampilkan datanya dalam bentuk listview 

  Widget _rekomendasiBuilder(Rekomendasi data, width) {
    return Padding(
         padding: EdgeInsets.only(top: 20, bottom: 0, left: 0, right: 0),
      child: Container(
        height: width / 1.4,
       width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          
          children:  data.data.asMap().entries.map((data) {
            return CardRow(
              data: data.value,
              i: data.key,
            );
          }).toList(),
        ),
      ),
    );
  }
}
