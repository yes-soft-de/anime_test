import 'package:animetest/shared/project_color/project_color.dart';
import 'package:flutter/material.dart';


class AnimeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const AnimeAppBarWidget({this.appBar,this.title}):super();

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      title:Text(title,style: TextStyle(fontSize: 10.0,color: Colors.black),),
      actions: <Widget>[
        IconButton(
          icon: Icon(
              Icons.search,
              color: Colors.black,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
                Icons.line_weight,
            color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),

    );
  }
}
