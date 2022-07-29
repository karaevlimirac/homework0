import 'package:flutter/material.dart';
import 'package:veriislemi3/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeServices homeServices = HomeServices();

  @override
  void initState() {
    super.initState();
    homeServices.cekilenVeri();
  }
  @override
 Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('face images'),
      backgroundColor: Color.fromARGB(255, 175, 76, 76),
    ),
      body: ListView.builder(
          itemCount: homeServices.productList!.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(homeServices.productList![index].title ?? ''),
                );
          }),
    );
  }
}
   