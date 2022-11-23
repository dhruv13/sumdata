import 'package:flutter/material.dart';
import 'package:sumdata/sum.dart';

void main()
{
  runApp(MaterialApp(home: page2(),));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  TextEditingController t = TextEditingController();
  // String str="";

  ValueNotifier<String> str = ValueNotifier("");
  @override
  Widget build(BuildContext context) {

    ValueNotifier<int> a = ValueNotifier(0);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ValueListenableBuilder(valueListenable: a, builder: (context, v, child) {
            return ListTile(title: Text("$v"),);
          },),

          // ElevatedButton(onPressed: () {
          //   a.value++;
          //   print(a);
          // }, child: Text("+")),
          // ElevatedButton(onPressed: () {
          //   a.value--;
          //   print(a);
          // }, child: Text("-")),

          TextField(controller: t,onChanged: (value) {
            str.value=value;
          },),
          ElevatedButton(onPressed: () {
            str.value=t.text;
          }, child: Text("SUBMIT")),

          ValueListenableBuilder(valueListenable: str, builder: (context, value, child) {
            return Text("$value");
          },),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return page2();
            },));
          }, child: Text("SUM.."))
        ],
      ),
    );
  }
}
