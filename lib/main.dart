import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador",
      debugShowCheckedModeBanner: false,
      home:Home()));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoa =0;
  void _trocarPessoas(int troca){
    setState(() {
      _pessoa+=troca;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset("images/mdc.jpg",
            fit: BoxFit.cover,
            height: 1000),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                      onPressed: () {
                        _trocarPessoas(1);
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(

                      child: Text(
                        "-1",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      onPressed: () {
                        _trocarPessoas(-1);
                      }),
                )
              ],
            ),
            Text(
              "$_pessoa",
              style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
