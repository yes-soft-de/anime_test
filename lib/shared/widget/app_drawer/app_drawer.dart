import 'package:animetest/anim_notification/routing_home.dart';
import 'package:animetest/animes_module/animes_routes.dart';
import 'package:animetest/shared/project_color/project_color.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
@singleton
class AppDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.75,
      child: Drawer(

        child: Container(

          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [ProjectColors.ThemeColor, ProjectColors.bgCardSettingColor],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.6, 1])),

          child: ListView(

            children: <Widget>[
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),

              ),

              ListTile(
                title: Text('Anime Shows',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ) ,
              ),


              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, AnimeRoutes.ROUTE_TRENDING_LIST);
                },
                child: ListTile(
                  title: Text("Trending",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  trailing: Icon(
                    Icons.home,
                  color: Colors.white,
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, RotingModule.ROUTE_ANIM_NOTIFICATION_PAGE);
                },
                child: ListTile(
                  title: Text("Notification",
                    style: TextStyle(
                        color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                      Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, RotingModule.ROUTE_ANIM_SETTIING_PAGE);
                },
                child: ListTile(
                  title: Text("Setting",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.settings,
                    color: Colors.white,
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
