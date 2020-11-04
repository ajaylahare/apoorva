import 'package:first_app/screen1/category_to_all_item_screen.dart';
// import 'package:first_app/screen3/product_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
    final String text;
  final String id;
final String name;
  final String imageUrl;
  CategoryItem(this.name,this.text, this.id, this.imageUrl);
 void select(BuildContext ctx) {
    Navigator.push(
                  ctx,
                  MaterialPageRoute(
                    builder: (context) => CategoryToAllItem(name),
                  ),
                );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
          child: InkWell(
        onTap:() => select(context),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
          //margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
               Expanded(
                            child:
                             ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                      height: 60,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
               ),
              Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                
              overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
