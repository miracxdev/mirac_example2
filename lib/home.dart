import 'package:flutter/material.dart';
import 'package:mirac_flutter_study2/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeServices homeServices = HomeServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeServices.veriCekme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telefonlar'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: homeServices.productList!.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(homeServices.productList![index].title ?? ''),
                trailing: CircleAvatar(
                  
                  backgroundColor: Colors.transparent,
                  child: Image.network(
                      homeServices.productList![index].thumbnail ?? ''),
                ));
          }),
    );
  }
}
