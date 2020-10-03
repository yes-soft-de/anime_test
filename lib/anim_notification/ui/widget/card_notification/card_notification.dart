
import 'package:animetest/anim_notification/ui/widget/my_circle_image/MyCircularImage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CardNotification extends StatelessWidget {

  String title;
  String desc;
  String photoLink;


  CardNotification({this.title, this.desc,this.photoLink});

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,

      ),

      clipBehavior: Clip.hardEdge,
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4,vertical: 8),

        child: Row(
          children: [
            MyCircularImage(w: 70,h:70,linkImg: "$photoLink"),

            Expanded(
              child: Container(

                child: RichText(
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  text: TextSpan(text: "$title",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: " $desc ",style: TextStyle(color: Colors.black87,fontSize: 12),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {


                              }),

                      ]),
                ),
              ),
            )
          ],
        ),
      ),


    );
  }
}
