import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/model/search_model.dart';
import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Search extends StatefulWidget {
  String data;// data yang di inputkan di textfield
  Search({required this.data});// untuk mengirimkan data yang di inputkan di textfield ke halaman ini 
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final scaffoldKey = GlobalKey<ScaffoldState>();// scaffold key untuk menampilkan snackbar 
  late Future search;// untuk menampung data yang di dapat dari API 
  @override
  void initState() {
    search = ApiService().search(widget.data);
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
      key: scaffoldKey,// untuk menampilkan snackbar
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: search,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState != ConnectionState.done)// jika data belum di dapatkan dari API  
            return Center(
              child: CircularProgressIndicator(),
            );// menampilkan loading 
          if (snapshot.hasError)// jika terdapat error 
            return Center(
              child: Text("tejadi kesalahan"),
            );// menampilkan text tejadi kesalahan
          if (snapshot.hasData) return _builder(snapshot.data, context);// jika data sudah di dapatkan dari API   
          return Center(
            child: Text("kosong"),
          );// menampilkan text kosong
        },
      ),// sangat membantu developer untuk mengetahui setiap keadaan atau state yang terjadi pada sebuah proses
    );
  }
}

Widget _builder(SearchModel data, context) {
  return SafeArea(
    child: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),// ketika di klik di luar textfield maka textfield akan tidak terlihat
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                CardAppbar(),// menampilkan card appbar
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 60,
                  children: data.data.asMap().entries.map((data)//mendapatkan data dari API ke dalam listview  
                  {
                    return Card2Row(data: data.value,i: data.key,);// menampilkan card2row dengan data yang didapatkan dari API 
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
