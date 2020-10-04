import 'package:animetest/anim_notification/routing_home.dart';
import 'package:animetest/animes_module/animes_routes.dart';
import 'package:animetest/shared/project_color/project_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimeNavigationDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 252,
      child: Stack(
        children: [
          // Background
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/images/totoro.svg',
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.softLight,
            ),
          ),

          Positioned.fill(
              child: Container(
            color: Colors.black54,
          )),

          // Foreground
          Positioned.fill(
              child: Container(
            color: ProjectColors.ThemeColor,
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // region Header
//                FutureBuilder(
//                  future: profileService.getProfile(),
//                  builder: (BuildContext context,
//                      AsyncSnapshot<ProfileModel> snapshot) {
//                    if (!snapshot.hasData || snapshot.data == null) {
//                      return Container();
//                    }
//                    if (snapshot.data.name == null) {
//                      return Container();
//                    }
//                    return Container(
//                      height: 116,
//                      color: Theme.of(context).brightness == Brightness.light
//                          ? Color(0x8FFFFFFF)
//                          : Color(0x8F000000),
//                      child: Padding(
//                        padding: const EdgeInsets.all(16.0),
//                        child: Flex(
//                          direction: Axis.horizontal,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          children: [
//                            // User Image
//                            Container(
//                              height: 56,
//                              width: 56,
//                              decoration: BoxDecoration(
//                                  shape: BoxShape.circle,
//                                  color: Colors.green,
//                                  image: DecorationImage(
//                                      image:
//                                          NetworkImage(snapshot.data.image))),
//                            ),
//                            // User Details
//                            Flex(
//                              direction: Axis.vertical,
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: [
//                                !snapshot.hasData
//                                    ? Text(S.of(context).loading)
//                                    : Text(
//                                        '${snapshot.data.name}',
//                                        style: TextStyle(
//                                            fontSize: 20,
//                                            fontWeight: FontWeight.bold),
//                                      )
//                              ],
//                            )
//                          ],
//                        ),
//                      ),
//                    );
//                  },
//                ),
                // endregion

                // region Sections
                Flex(
                  direction: Axis.vertical,
                  children: [
                    SizedBox(height: 50,),
                    GestureDetector(
                      onTap: () {

                        Navigator.pushNamed(
                            context,
                            AnimeRoutes.ROUTE_TRENDING_LIST
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 8.0, 0, 8),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            Icon(
                              Icons.dashboard,
                              color: Colors.white,
                            ),
                            Container(
                              width: 16,
                            ),
                            Text(
                              'Trending',
//                              S.of(context).feed,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context,
                            RotingModule.ROUTE_ANIM_SETTIING_PAGE
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 8.0, 0, 8),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            Container(
                              width: 16,
                            ),
                            Text(
//                                S.of(context).notifications,
                                'Settings',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                        Navigator.pushNamed(
                            context,
                            RotingModule.ROUTE_ANIM_SHOW_PAGE
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 8.0, 0, 8),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            Container(
                              width: 16,
                            ),
                            Text(
//                                S.of(context).settings,
                            'Notification',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
                // endregion

//                // region Social Links
//                Flex(
//                  direction: Axis.horizontal,
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                  children: [
//                    GestureDetector(
//                      onTap: () {
//                        canLaunch('https://www.google.com').then((value) {
//                          launch('https://www.google.com');
//                        });
//                      },
//                      child: Container(
//                          height: 24,
//                          width: 24,
//                          child: SvgPicture.asset(
//                            'assets/images/twitter.svg',
//                            color: Colors.white,
//                          )),
//                    ),
//                    GestureDetector(
//                      onTap: () {
//                        canLaunch('https://www.google.com').then((value) {
//                          launch('https://www.google.com');
//                        });
//                      },
//                      child: Container(
//                        height: 24,
//                        width: 24,
//                        child: SvgPicture.asset(
//                          'assets/images/facebook.svg',
//                          color: Colors.white,
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//                // endregion

//                // region Feedback Button
//                GestureDetector(
//                  onTap: () {
//                    canLaunch('https://www.google.com').then((value) {
//                      if (value) {
//                        launch('https://www.google.com');
//                      }
//                    });
//                  },
//                  child: Container(
//                    width: 252,
//                    height: 48,
//                    alignment: Alignment.center,
//                    color: Theme.of(context).brightness == Brightness.dark
//                        ? Colors.black
//                        : Colors.white,
//                    child: Text(S.of(context).feedback),
//                  ),
//                ),
//                // endregion
              ],
            ),
          ))
        ],
      ),
    );
  }
}
