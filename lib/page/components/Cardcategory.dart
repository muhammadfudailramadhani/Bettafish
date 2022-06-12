import 'package:betta_fish/page/page/category.dart';
import 'package:flutter/material.dart';
//

//

//
class CardCategori extends StatefulWidget {
  String data;
  CardCategori({required this.data});
  @override
  _CardCategoriState createState() => _CardCategoriState();
}

class _CardCategoriState extends State<CardCategori> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 100, right: 0),
      child: Container(
        width: 900,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0x00EEEEEE),
        ),
        child: Align(
          alignment: AlignmentDirectional(1, -1),
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Category()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(187, 206, 119, 26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        widget.data,
                        style: TextStyle(
                          fontFamily: 'Marko One',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
