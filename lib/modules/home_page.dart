import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

import 'model.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  JsonData jsonData = JsonData();

/*
  getDATA() async {
    var res = await http.get(Uri.parse('https://reqres.in/api/users'));
    var r = jsonDecode(res.body);
    setState(() {
      //list ma data hoy to r[0] lakhi nakhvanu ... aatloj farak che...
      jsonData = JsonData.fromJson(r);
      print(r);
    });
  }
*/

  @override
  void initState() {
    super.initState();
    // getDATA();
    /*httpServicess.getData().then((value) {
      futureData = value;
      isLoding = false;
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: jsonData.data!.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Text('Page: ${jsonData.page.toString()}'),
            Text('PerPage: ${jsonData.perPage.toString()}'),
            Text('Total: ${jsonData.total.toString()}'),
            Text('TotalPages: ${jsonData.totalPages.toString()}'),
            Text('Data_id: ${jsonData.data![index].id.toString()}'),
            Text('Data_email: ${jsonData.data![index].email.toString()}'),
            Text('Data_Firstname: ${jsonData.data![index].firstName.toString()}'),
            Text('Data_LastName: ${jsonData.data![index].lastName.toString()}'),
            Text('Data_Avatar: ${jsonData.data![index].avatar.toString()}'),
            Text('Support_Url: ${jsonData.support!.url.toString()}'),
            Text('Support_text: ${jsonData.support!.text.toString()}'),
          ],
        );
      },
    ));
  }
}
