import 'package:betta_fish/page/page/Search.dart';
import 'package:betta_fish/page/page/home.dart';
import 'package:betta_fish/page/proses%20pemesanan/keranjang.dart';
import 'package:flutter/material.dart';

class CardAppbar extends StatefulWidget {
  @override
  _CardAppbarState createState() => _CardAppbarState();
}

class _CardAppbarState extends State<CardAppbar> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(-1, -1),
          child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
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
        show
            ? Row(
                children: [
                  Container(
                    width: 320,
                    child: TextField(
                      onSubmitted: (value) {
                        if (value.isEmpty) {
                          return;
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Search(data: value,)));
                        }
                      },
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          show = false;
                        });
                      },
                      icon: Icon(Icons.cancel))
                ],
              )
            : InkWell(
                onTap: () {
                  setState(() {
                    show = true;
                  });
                },
                child: Align(
                  alignment: AlignmentDirectional(-1, -0.9),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(340, 12, 0, 0),
                    child: Container(
                      width: 40,
                      height: 40,
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
            padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
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
    );
  }
}
