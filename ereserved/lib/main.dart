//import 'package:ereserved/models/uknown.dart' as u;
import 'package:ereserved/screens/login.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:firebase_database/firebase_database.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:firebase_database/ui/firebase_animated_list.dart';
// ignore: import_of_legacy_library_into_null_safe

//DatabaseReference db = FirebaseDatabase.instance.reference();
//List<u.Unknown> items = [];
//late u.Unknown item;
//late DatabaseReference dtRef;
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Firebase',
      theme: ThemeData(
        primaryColor: Colors.brown,
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  //final FirebaseApp? app;

  HomeScreen({Key? key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final databaseReference = FirebaseDatabase.instance.reference();
  String id = '';
  String name = '';
  String des = '';
  @override
  void initState() {
    super.initState();
    //item = u.Unknown('', '');

    //databaseReference.onChildAdded.listen((Event event) {
    //   setState(() {
    //     //items.add(u.Unknown.fromSnapshot(event.snapshot));
    //   });
    // });
  }

  void createData() {
    // databaseReference
    //     .child(id)
    //     .push()
    //     .set({'name': name, 'description': des})
    //     .then((value) => print('Thêm thành công'))
    //     .onError((error, stackTrace) => error);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MXH',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leading: Icon(Icons.book),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                setState(() {
                  id = val;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.brown, width: 1),
                ),
                labelText: 'ID',
              ),
            ),
            TextField(
              onChanged: (val) {
                setState(() {
                  name = val;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.brown, width: 1)),
                labelText: 'Name',
              ),
            ),
            TextField(
              onChanged: (val) {
                setState(() {
                  des = val;
                });
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                labelText: 'Description',
              ),
            ),
            TextButton(
                onPressed: () {
                  createData();
                },
                child: Text('Save')),
            // ListView.builder(
            //   itemCount: items.length,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       child: Row(
            //         children: [
            //           Text('Name: ${items[index].name}'),
            //           Text('Name: ${items[index].description}'),
            //         ],
            //       ),
            //     );
            //   },
            // )
            // Expanded(
            //     child: SizedBox(
            //   child: ListView.builder(
            //     itemCount: items.length,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         child: Row(
            //           children: [
            //             Text('Name: ${items[index].name}'),
            //             Text('Des: ${items[index].description}')
            //           ],
            //         ),
            //       );
            //     },
            //   ),
            // ))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
