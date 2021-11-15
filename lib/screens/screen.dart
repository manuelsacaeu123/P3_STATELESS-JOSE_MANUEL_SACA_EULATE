import 'package:flutter/material.dart';

class prin extends StatefulWidget {
  @override
  principal createState() => principal();
}
class principal extends State<prin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF2F4FBF),
                    Color(0xFF1975E7),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30.0),
                    buscador(),
                    SizedBox(
                      height: 30.0,
                    ),
                    MENSAJE(),
                    personal(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget buscador() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF2D76AD),
            borderRadius: BorderRadius.circular(40.0),
          ),
          height: 60.0,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.zoom_in_outlined,
                color: Colors.white,
              ),
              hintText: 'Buscador',
              hintStyle: TextStyle(
                color: Colors.white54,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget personal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF6B7FE0),
            //borderRadius: BorderRadius.circular(40.0),
          ),
          height: 60.0,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.album_sharp,
                color: Colors.white,
              ),
              hintText: 'Personal',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget MENSAJE() {
  return Container(
    height:85,
    width: 100,
    alignment: Alignment.center,
    child: Card(
      color: Colors.grey,
      child: Text('X',
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    ),
  );
}
