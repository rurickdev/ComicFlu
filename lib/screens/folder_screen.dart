import 'package:flutter/material.dart';
import '../models/comic_model.dart';
import '../widgets/comic_details_widget.dart';
import 'reading_screen.dart';

class FolderScreen extends StatelessWidget {
  final String folderName;
  final List<Comic> comics;

  FolderScreen({
    @required this.folderName,
    @required this.comics,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              centerTitle: true,
              expandedHeight: MediaQuery.of(context).size.height / 3,
              backgroundColor: Color(0xff263238),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(folderName),
                background: Image.asset(
                  'assets/gwen_0.jpg',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ];
        },
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.66,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: comics.length,
          itemBuilder: (BuildContext context, int index) {
            //ToDo: Cambiar [InkWell] por un widget [Portada]
            return InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(comics[index].cover),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadingScreen(),
                  ),
                );
              },
              onLongPress: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ComicDetails(
                      comic: comics[index],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
