import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardstatus extends StatefulWidget {

  @override
  _CardstatusState createState() => _CardstatusState();
}

class _CardstatusState extends State<Cardstatus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.65, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF0066FF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(22, 10, 20, 0),
                      child: Text(
                        '1',
                        style:TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Pesanan\ndibuat',
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.65, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF0066FF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(22, 10, 20, 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Pesanan\ndiproses',
                style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF56EA11),
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.65, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF0066FF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(22, 10, 20, 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Pesanan\ndikirim',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
