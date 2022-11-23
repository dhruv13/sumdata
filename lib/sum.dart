import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {

 TextEditingController t = TextEditingController();
 TextEditingController p = TextEditingController();

 ValueNotifier c = ValueNotifier("");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: t,),
          TextField(controller: p,),
          ElevatedButton(onPressed: () {
            c.value = int.parse(t.text)+int.parse(p.text);
          }, child: Text("SUBMIT")),
          ValueListenableBuilder(valueListenable: c, builder: (context, value, child) {
            return Text("$value");
          },)
        ],
      ),
    );
  }
}
