import 'package:animetest/shared/project_color/project_color.dart';
import 'package:flutter/material.dart';

class GridAnimeCard extends StatelessWidget {
  final String image;
  final String status;
  final String name;

  GridAnimeCard({
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),

          height: 100,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),

//
              ),
              Center(

                  child: Text(
                      name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                  )
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 9
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_drop_down_circle,color: ProjectColors.ThemeColor,size: 4,),
                      Icon(Icons.arrow_drop_down_circle,color: ProjectColors.ThemeColor,size: 4,),
                      Icon(Icons.arrow_drop_down_circle,color: ProjectColors.ThemeColor,size: 4,)
                    ],
                  )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star,color: ProjectColors.ThemeColor,size: 10,),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
