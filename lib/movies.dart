// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tubesku/login.dart';
import 'package:tubesku/user_model.dart';
import 'package:tubesku/watchlist.dart';
import 'package:tubesku/logout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ui extends StatefulWidget {
  @override
  ui_state createState() => ui_state();
}

class ui_state extends State {

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int _page = 0; //variabel

  final screens = [
    movies(),
    watchlist(),
    Logout(),
  ];
  
  User? user = FirebaseAuth.instance.currentUser;
UserModel loggedInUser = UserModel();

@override
void initState(){ 
  super.initState(); //fungsi
  FirebaseFirestore.instance
  .collection("users")
  .doc(user!.uid)
  .get()
  .then((value) {
    this.loggedInUser = UserModel.fromMap(value.data()); //konstruktor
    setState(() {});
  });
}

Widget build(BuildContext context){
    final style = ElevatedButton.styleFrom(
                  primary: Colors.white,
                minimumSize: Size(250, 56),
                );
    final items = <Widget>[
      Icon(Icons.movie, size: 30),
      Icon(Icons.dvr_outlined, size: 30),
      Icon(Icons.account_circle, size: 30),
    ];
    var scaffold6 = Scaffold(
      extendBody: true,
          backgroundColor: Colors.deepPurple,
            //
            body:screens[_page],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(color: Colors.white),
              ),
            child: CurvedNavigationBar(
              color: Colors.deepPurple,
              buttonBackgroundColor: Colors.deepPurple,
              backgroundColor: Colors.transparent,
              height: 60,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              items: items,
              onTap: (index) {setState(() { _page = index;});}
            ),
            )
        );
    var scaffold5 = scaffold6;
    var scaffold4 = scaffold5;
    var scaffold3 = scaffold4;
    var scaffold2 = scaffold3;
    var scaffold = scaffold2;
    return MaterialApp(
        home: scaffold
    );
  }
}

  @override

  class movies extends StatefulWidget {
  @override
  movies_state createState() => movies_state();
}

class movies_state extends State {

  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(

            appBar: new AppBar(
              title: Text("Movies"),
              backgroundColor: Colors.deepPurple,
              centerTitle: true,
            ),
            body: ListView(
                children: <Widget>[

                  //Shang chi
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/shangchi.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Shang Chi"),
                                  ),
                                  Container(
                                    child: Text("13+"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),
                      ],
                    ),
                  ),

                  //luca
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/luca.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Luca         "),
                                  ),
                                  Container(
                                    child: Text("SU"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),
                      ],
                    ),
                  ),

                  //encanto
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/encanto.jpeg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Encanto   "),
                                  ),
                                  Container(
                                    child: Text("SU"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),
                      ],
                    ),
                  ),

                  //venom
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/Venom.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Venom    "),
                                  ),
                                  Container(
                                    child: Text("13+"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),
                      ],
                    ),
                  ),
                ],
            ),
        ),
    );
  }
}







/* Widget build(BuildContext context){
    final style = ElevatedButton.styleFrom(
                  primary: Colors.white,
                minimumSize: Size(250, 56),
                );
    final items = <Widget>[
      Icon(Icons.movie, size: 30),
      Icon(Icons.dvr_outlined, size: 30),
      Icon(Icons.domain_verification_outlined, size: 30),
    ];
    var scaffold6 = Scaffold(
      extendBody: true,
          backgroundColor: Colors.deepPurple,
            //
            body:screens[_page],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(color: Colors.white),
              ),
            child: CurvedNavigationBar(
              color: Colors.deepPurple,
              buttonBackgroundColor: Colors.deepPurple,
              backgroundColor: Colors.transparent,
              height: 60,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              items: items,
              onTap: (index) {setState(() { _page = index;});}
            ),
            )
        );
    var scaffold5 = scaffold6;
    var scaffold4 = scaffold5;
    var scaffold3 = scaffold4;
    var scaffold2 = scaffold3;
    var scaffold = scaffold2;
    return MaterialApp(
        home: scaffold
    );
  }
}

class movies extends StatelessWidget{

  @override
   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Movies"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
      ),
         body: ListView(
          children: <Widget>[
            Card(
              elevation: 10.0,
            child: Container(
              height: 150,
            child: ListTile(
      title: Text(
        'Shang Chi',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        '13+'
      ),
      leading: Image.asset("images/shangchi.jpg"
      ,),
      trailing: Icon(Icons.add),
    ))),
    ListTile(
      title: Text(
        'Shan',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'woy'
      ),
      leading: Icon(Icons.add),
      trailing: Icon(Icons.add),
    ),
    
          ],
    ),
    );
  }

  void setState(Null Function() param0) {}
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => Login()));
}*/ //sampe sini ya

/*class Listmovie extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  Listmovie(image, title, description);

  //const Listmovie({
    //Key? key,
  //}) : super(key: key);
}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.indigo.withOpacity(0.1),
      padding: EdgeInsets.all(7.0),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 75,
            child: Image(
              fit: BoxFit.fitHeight,
              image: AssetImage("images/shangchi.jpg"),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            child: Column(
              crossAxisAlignment : CrossAxisAlignment.start,
              children:[
                Container(
                  child: Text("I'm Strong"), 
                ),
                Container(
                  child: Text("Yet, in my dream"), 
                ),
              ]
            )
          ),
          SizedBox(
            width: 160,
          ),
            IconButton(
                icon: Icon(Icons.add_circle_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => watchlist(),
                  ));
                }
              )
        ],
      ),
      );
  }

 
class AddMovies extends StatelessWidget {
  final String judul;
  final String deskripsi;
  final String image;

  AddMovies(this.judul, this.deskripsi, this.image);

  @override
  Widget build(BuildContext context){
    CollectionReference film = FirebaseFirestore.instance.collection('film');

    Future<void> addMovies(){
      return film
      .add({
        'judul': judul,
        'deskripsi': deskripsi,
        'image': image,
      })
      .then((value) => print("Movies Added"))
      .catchError((error) => print("Failed to add movies: $error"));
    }

    return TextButton(
      onPressed: addMovies,
      child: Text(
        "Add Movies",
      ),
    );
  }
}*/ 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }