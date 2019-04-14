import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../screens/folder_screen.dart';
import '../screens/reading_screen.dart';
import '../models/comic_model.dart';
import 'comic_details_widget.dart';

class FolderWidget extends StatelessWidget {
  final String folderName;
  //ToDo: cambiar de [int] a [Comics]
  final List<Comic> comics;

  FolderWidget({
    @required this.folderName,
    @required this.comics,
  });

  List<Widget> listaPortadas(BuildContext context) {
    List<Widget> listaPortadas = [];

    for (Comic comic in comics) {
      listaPortadas.add(PortadaWidget(comic: comic));
    }
    return listaPortadas;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(folderName),
                  Icon(Icons.archive),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FolderScreen(
                        folderName: folderName,
                        comics: comics,
                      ),
                ),
              );
            },
          ),
          //! El ontap no funciona bien dentro del swiper
          Swiper(
            layout: SwiperLayout.STACKALT,
            itemCount: comics.length,
            itemWidth: 166,
            itemHeight: 250,
            itemBuilder: (context, index) {
              List<Widget> portadas = listaPortadas(context);
              return portadas[index];
            },
          ),
        ],
      ),
    );
  }
}

class PortadaWidget extends StatelessWidget {
  final Comic comic;

  PortadaWidget({
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
        ),
      ),
    );
  }
}
