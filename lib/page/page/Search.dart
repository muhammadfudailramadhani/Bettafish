import 'package:betta_fish/api_service.dart';
import 'package:betta_fish/model/search_model.dart';
import 'package:betta_fish/page/components/CardAppbar.dart';
import 'package:betta_fish/page/components/CardNavbar.dart';
import 'package:betta_fish/page/components/CardNavbar2.dart';
import 'package:betta_fish/page/components/Card2Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Search extends StatefulWidget {
  String data;
  Search({required this.data});
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late Future search;
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
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: search,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState != ConnectionState.done)
            return Center(
              child: CircularProgressIndicator(),
            );
          if (snapshot.hasError)
            return Center(
              child: Text("tejadi kesalahan"),
            );
          if (snapshot.hasData) return _builder(snapshot.data, context);
          return Center(
            child: Text("kosong"),
          );
        },
      ),
    );
  }
}

Widget _builder(SearchModel data, context) {
  return SafeArea(
    child: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                CardAppbar(),
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 60,
                  children: data.data.asMap().entries.map((data) {
                    return Card2Row(data: data.value,i: data.key,);
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
