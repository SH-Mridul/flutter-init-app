import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: MyStateFulWidget(),
    );
  }

}

class MyStateFulWidget extends StatefulWidget {
  @override
  _MyStateFulWidgetState createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  var title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        title = 'Let\'s Die';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: RaisedButton(
        child: Text('click me'),
        onPressed: (){
          print('pressed and pressed');
          setState(() {
            title = 'Hola la la la';
          });
        },
      ),
    );
  }
}
