import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import '../widgets/folder_widget.dart';
import '../models/comic_model.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ToDo: Cambiar la lista HardCodeda por la lectura desde archivos
    List<Comic> listaComics = [
      Comic('Spider-Gwen: Ghost Spider', '/comics', 'Spider-Gwen: Ghost Spider',
          'assets/gwen_0.jpg', 1, 28),
      Comic('Spider-Gwen: Ghost Spider', '/comics', 'Spider-Gwen: Ghost Spider',
          'assets/gwen_1.jpg', 2, 29),
      Comic('Spider-Gwen: Ghost Spider', '/comics', 'Spider-Gwen: Ghost Spider',
          'assets/gwen_2.jpg', 3, 26),
      Comic('Spider-Gwen: Ghost Spider', '/comics', 'Spider-Gwen: Ghost Spider',
          'assets/gwen_3.jpg', 4, 28),
      Comic('Spider-Gwen: Ghost Spider', '/comics', 'Spider-Gwen: Ghost Spider',
          'assets/gwen_4.jpg', 5, 27),
      Comic('Spider-Gwen: Ghost Spider', '/comics', 'Spider-Gwen: Ghost Spider',
          'assets/gwen_5.jpg', 6, 28),
      Comic('Spider-Gwen: Ghost Spider', '/comics', 'Spider-Gwen: Ghost Spider',
          'assets/gwen_6.jpg', 7, 26),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Comic\'s Library Beta'),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        //* [Leading] que cambia el icono del [Drawer]
        leading: Builder(
          builder: (context) => IconButton(
                icon: Icon(CommunityMaterialIcons.text),
                //* Ejecuta la apertura del drawer utilizando un [IconButton] personalizado
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Hello There'),
        ),
      ),
      body: ListView(
        addAutomaticKeepAlives: true,
        children: <Widget>[
          FolderWidget(
            folderName: 'Spider-Gwen: Ghost Spider',
            comics: listaComics,
          ),
          FolderWidget(
            folderName: 'Spider-Gwen: Ghost Spider',
            comics: listaComics,
          ),
          FolderWidget(
            folderName: 'Spider-Gwen: Ghost Spider',
            comics: listaComics,
          ),
          FolderWidget(
            folderName: 'Spider-Gwen: Ghost Spider',
            comics: listaComics,
          ),
        ],
      ),
    );
  }
}
