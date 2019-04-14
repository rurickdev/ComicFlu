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
      height: MediaQuery.of(context).size.width / 2,
      margin: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //* Portada del comic
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(comic.cover),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //* Informacion del comic
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(comic.title),
                  Text('#${comic.issue}'),
                  Text('${comic.pages} pages'),
                  Text(comic.path),
                ],
              ),
              //* Action Buttons
              Column(
                children: <Widget>[
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
                      ],
                    ),
                  ),
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
