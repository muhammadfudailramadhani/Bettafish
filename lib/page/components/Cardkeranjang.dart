import 'package:betta_fish/api_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Cardkeranjang extends StatefulWidget {
  final data;
  Cardkeranjang({required this.data});
  @override
  _CardkeranjangState createState() => _CardkeranjangState();
}

class _CardkeranjangState extends State<Cardkeranjang> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
        child: Container(
          width: 500,
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xFFC0A3FF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(widget.data.fotoBarang),
                    ),
                  ),
                ),
              ),
              Container(
                width: 170,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          widget.data.namaBarang,
                          style: TextStyle(
                            fontFamily: 'Roboto Condensed',
                            color: Color(0x97FFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, -0.2),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 27, 0, 0),
                        child: Text(
                          'Rp.${widget.data.harga}',
                          style: TextStyle(
                            fontFamily: 'Montaga',
                            color: Color(0xA1FF0000),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                widget.data.jumlah++;
                              });
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/pluss.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(13, 0, 10, 0),
                            child: Text(
                              widget.data.jumlah.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (widget.data.jumlah == 1) {
                                  return;
                                } else {
                                  widget.data.jumlah--;
                                }
                              });
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/minus.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () async {
                          Uri url = Uri.parse(
                              "$baseUrl/keranjang/delete/${widget.data.id}");
                          SharedPreferences storage =
                              await SharedPreferences.getInstance();
                          headers["Authorization"] =
                              "Bearer ${storage.getString("token")}";
                          final res = await http.delete(url, headers: headers);
                          if (res.statusCode == 200) {
                            print("berhasil");
                          } else {
                            print(res.statusCode);
                            print(res.body);
                            print("gagal");
                          }
                        },
                        icon: Icon(Icons.delete))
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
