import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import '../models/comic_model.dart';
import '../screens/reading_screen.dart';

class ComicDetails extends StatelessWidget {
  final Comic comic;

  ComicDetails({
    @required this.comic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.25,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //* Portada del comic
          Image(
            image: AssetImage(comic.cover),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //* Informacion del comic
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //* Titulo
                  Text(
                    comic.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  //* Numero de comic
                  Text('#${comic.issue} with ${comic.pages} pages'),
                  //* numero de paginas
                  // Text('${comic.pages} pages'),
                  Text(comic.path),
                ],
              ),
              Column(
                children: <Widget>[
                  //* Action Buttons
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //* Favorito
                        IconButton(
                          icon: Icon(CommunityMaterialIcons.heart_outline),
                          onPressed: () {},
                        ),
                        //* Leido
                        IconButton(
                          icon: Icon(CommunityMaterialIcons.eye_outline),
                          onPressed: () {},
                        ),
                        //* Borrar
                        IconButton(
                          icon: Icon(CommunityMaterialIcons.delete_outline),
                          onPressed: () {},
                        ),
                        //* Compartir
                        IconButton(
                          icon: Icon(CommunityMaterialIcons.share_variant),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  //* Open button
                  RaisedButton(
                    textColor: Colors.white,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Center(
                        child: Text('Open'),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReadingScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
