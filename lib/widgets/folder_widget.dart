import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:community_material_icon/community_material_icon.dart';
import '../screens/folder_screen.dart';
import '../models/comic_model.dart';
import 'comic_cover_widget.dart';

class FolderWidget extends StatelessWidget {
  final String folderName;
  final List<Comic> comics;

  FolderWidget({
    @required this.folderName,
    @required this.comics,
  });

  List<Widget> listaPortadas(BuildContext context) {
    List<Widget> listaPortadas = [];

    for (Comic comic in comics) {
      listaPortadas.add(CoverWidget(comic: comic));
    }
    return listaPortadas;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    folderName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.5,
                    ),
                  ),
                  Icon(CommunityMaterialIcons.archive),
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
          //! El ontap no funciona bien dentro del [Swiper]
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
