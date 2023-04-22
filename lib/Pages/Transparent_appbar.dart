import 'package:flutter/material.dart';

class TransparentAppBarPage extends StatelessWidget {
  const TransparentAppBarPage({super.key});

  @override
  Widget build(BuildContext context) =>Scaffold(
    extendBodyBehindAppBar: true,
    //start appbar
    appBar: AppBar(title: Text("Transparent AppBar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    centerTitle: true,
    leading: BackButton(),
    actions: [
      IconButton(onPressed: (){},
       icon: Icon(Icons.search))
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
    ),
    backgroundColor: Color.fromARGB(192, 0, 0, 0),
    ),

    //start body
    body: Image.asset("assets/images/slide-02.png",fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
  );
}