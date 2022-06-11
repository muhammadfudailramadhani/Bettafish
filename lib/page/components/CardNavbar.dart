import 'package:betta_fish/page/page/home.dart';
import 'package:betta_fish/page/proses%20pemesanan/transaksi.dart';
import 'package:flutter/material.dart';

class CardNavbar extends StatefulWidget {
  @override
  _CardNavbarState createState() => _CardNavbarState();
}

class _CardNavbarState extends State<CardNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFFCCBCBC),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0.1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.55),
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/home.png',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Ovo',
                          color: Color.fromARGB(255, 75, 71, 71),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransaksiPage()),
              );
            },
            
            child:  responsive(),
          ),
        ],
      ),
    );
  }

  Padding responsive() {
    return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(420, 15, 0, 10),
            child: Container(
              width: 80,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0x00EEEEEE),
              ),
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -0.55),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/transaksi.png',
                          ).image,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Transaksi',
                    style: TextStyle(
                      fontFamily: 'Ovo',
                      color: Color.fromARGB(255, 75, 71, 71),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
