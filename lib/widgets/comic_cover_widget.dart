import 'package:flutter/material.dart';
import '../screens/reading_screen.dart';
import '../widgets/comic_details_widget.dart';
import '../models/comic_model.dart';

class CoverWidget extends StatelessWidget {
  final Comic comic;

  CoverWidget({
    @required this.comic,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return ComicDetails(
              comic: comic,
            );
          },
        );
      },
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReadingScreen(),
          ),
        );
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(comic.cover),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              // ToDo: Agregar este icono de manera dinamica segun es o no un comic favorito
              Positioned(
                right: 5,
                top: 5,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.pink,
                ),
              ),
              Positioned(
                bottom: 0,
                height: 7.5,
                width: 160,
                // ToDo: Cambiar el valor hardcodeado por valor real
                child: LinearProgressIndicator(
                  value: 0.9,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 5,
                child: Container(
                  width: 40,
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.pink,
                  ),
                  child: Center(
                    child: Text(
                      '#${comic.issue.toString()}',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
