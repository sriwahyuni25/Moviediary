import 'package:flutter/material.dart';

class watchlist extends StatefulWidget {
  @override
  watchlist_state createState() => watchlist_state();
}

class watchlist_state extends State {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Watchlist"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: ListView(
            children: <Widget>[
              movielist(
                gambar: "https://www.jadwalnonton.com/data/images/movies/2021/spider-man-no-way-home-f109bc73_300x450.jpg",
                judul: "Spiderman No Way Home",),

              movielist(
                gambar: "https://www.jadwalnonton.com/data/images/movies/2021/yowis-ben-finale-11ybfe_300x450.jpg",
                judul: "Yowis Ben Finale",),

              movielist(
                gambar: "https://www.jadwalnonton.com/data/images/movies/2021/the-matrix-resurrections-539679c1_300x450.jpg",
                judul: "The Matrix Ressurections",),
            ]
        )
    );
  }
}

class movielist extends StatelessWidget {

  movielist({required this.gambar, required this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Row(
            children: <Widget>[
        Image(
        image: NetworkImage(
            gambar),
        width: 80.0,
      ),
      Container(
        padding: EdgeInsets.all(10.0),
    child: Center(child: Column(
    children: <Widget>[
    Text(
      judul,
      style: TextStyle(fontSize: 20.0),
    ),
      Text("Ini adalah deskripsi.." , style: TextStyle(fontSize: 13.0, color: Colors.purple,),),
      new IconButton(
                icon: Icon(Icons.add_circle_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => watchlist(),
                  ));
                }
              )
    ]
    )
    )
    )
    ]
    )
    ),
    );
  }
}