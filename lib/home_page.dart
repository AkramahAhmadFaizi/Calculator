import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  var num1=0, num2=0, sum=0;

  final TextEditingController t1= new TextEditingController(text: "0");
  final TextEditingController t2= new TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1= int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSub(){
    setState(() {
      num1= int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMul(){
    setState(() {
      num1= int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDiv(){
    setState(() {
      num1= int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
      sum=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "OutPut: $sum",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter No. 1",),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter No. 2",),
              controller: t2,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      onPressed: doAddition,
                      child: Text("+"),
                      color: Colors.greenAccent
                  ),
                  MaterialButton(
                      onPressed: doSub,
                      child: Text("-"),
                      color: Colors.greenAccent
                  ),
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      onPressed: doMul,
                      child: Text("*"),
                      color: Colors.greenAccent
                  ),
                  MaterialButton(
                      onPressed: doDiv,
                      child: Text("/"),
                      color: Colors.greenAccent
                  ),
                ]
              ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: doClear,
                    child: Text("Clear"),
                    color: Colors.greenAccent
                ),
              ]
            )

          ],
        ),
    ),
    );
  }
}