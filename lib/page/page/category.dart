import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/model/kategori_model.dart';
import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Category extends StatefulWidget {
  String data;
  Category({required this.data});
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final scaffoldKey = GlobalKey<ScaffoldState>();// scaffold key untuk menampilkan snackbar
  List category = [    
    "rosetail", 
      "giant", 
      "avatar", 
      "koi", 
      "halfmoon", 
      "vancy", 
      "Multicolor", 
      "avatar", 
      "plakat",
      "candy",
      "nemo",
      "red dragon"];// menampung data yang di dapat dari API  yg terdiri dari 12 kategori 
  late Future kategori;// untuk menampung data yang di dapat dari API
  @override
  void initState() {
    kategori = ApiService().kategori(widget.data);// memanggil API untuk mendapatkan data kategori  yang terdapat di API
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [CardNavbar2(), CardNavbar()],
        ),
      ),
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: kategori,// menampung data yang di dapat dari API 
        builder: (context, AsyncSnapshot snapshot) // jika data belum di dapat dari API 
        {
          if (snapshot.connectionState != ConnectionState.done)// jika connection state tidak sama dengan done  
            return Center(
              child: CircularProgressIndicator(),// menampilkan loading
            );
          if (snapshot.hasError)// jika terdapat error
            return Center(
              child: Text("Error"),// menampilkan error
            );
          if (snapshot.hasData) 
          return _builder(snapshot.data);// jika data sudah di dapat dari API akan menampilkan halaman ini
          return Center(
            child: Text("kosong"),
          );// jika tidak ada data yang di dapat dari API  menampilkan kosong
        },
      ),
    );
  }

  Widget _builder(KategoriModel data) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
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
            data.data.isEmpty// jika data kosong 
                ? Center(
                    child: Text(
                    "kosong",
                    style: TextStyle(fontSize: 30),
                  ))//akan menampilkan kosong jika data kosong
                : StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 60,
                    children: data.data.asMap().entries.map((data) // mendapatkan data yang di dapat dari API maping ke dalam list
                    {
                      return Card2Row(
                        data: data.value,// menampilkan data yang di dapat dari API 
                        i: data.key,
                      );
                    }).toList(),
                  ),
          ],
        ),
      ),
    );
  }
}
