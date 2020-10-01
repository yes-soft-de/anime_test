import 'package:animetest/shared/project_color/project_color.dart';
import 'package:flutter/material.dart';

class ListAnimeCard extends StatelessWidget {
  final String image;
  final String status;
  final String name;

  ListAnimeCard({
    this.name,
    this.status,
    this.image
});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),

        height: 150,
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width*0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),

//
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.5,

              margin: EdgeInsetsDirectional.fromSTEB(10, 5, 5, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black, spreadRadius: 1),
                      ],
                    ),
                    child: Text(
                        name,
                      style: TextStyle(

                        fontSize: 11,

                      ),
                    ),
                  ),
                  Text(
                      'S05 - E13',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(
                      status,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        height: 20,
                        child: FlatButton(
                          onPressed: (){},
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                          color: ProjectColors.ThemeColor,
                          child: Text(
                              'More',
                            style: TextStyle(
                                fontSize: 12,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      ClipOval(
                        child: Material(
                          color: ProjectColors.ThemeColor,
                          child: InkWell(
                            // inkwell color
                            child: SizedBox(
                                width: 25, height: 25,
                                child: Icon(
                                    Icons.add,
                                color: Colors.white,
                                )
                            ),
                            onTap: () {},
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
