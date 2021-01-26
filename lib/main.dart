import 'package:flutter/material.dart';
import 'package:test0125/demo.dart';

void main() {
  runApp(MaterialApp(
    title: '버튼 종류',
    home: Scaffold(
      appBar: AppBar(
        title: Text('버튼 종류'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('CRUD 테스트', style: TextStyle(fontSize: 24)),
            onPressed: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => FirestoreFirstDemo()))
            },
          ),
          FlatButton(
            child: Text('FlatButton', style: TextStyle(fontSize: 24)),
            onPressed: () => showMessage('FlatButton'),
            color: Colors.green,
            textColor: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.print),
            onPressed: () => showMessage('IconButton'),
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => showMessage('FloatingActionButton'),
          ),
          InkWell(
            child: Text('InkWell', style: TextStyle(fontSize: 24)),
            onTap: () => showMessage('InkWell'),
          ),
          /*
                    InkWell(
                        child: Image.asset('images/family_1.jpg', width: 120, height: 120),
                        onTap: () => showMessage('ImageButton'),
                    ),
                    */
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }

  void showMessage(String msg) {
    final snackbar = SnackBar(content: Text(msg));

    Scaffold.of(ctx)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }
}
