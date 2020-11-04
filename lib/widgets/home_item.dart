import 'package:first_app/screen3/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(future: () async {
    //   // FirebaseAuth auth = FirebaseAuth.instance;
    //   // FirebaseUser user = await auth.currentUser();
    //   // String uid = user.uid.toString();
    //   // return uid;
    // }(), builder: (ctx, futuresnapshot) {
    //   if (futuresnapshot.connectionState == ConnectionState.waiting)
    //     return Center(
    //       child: CircularProgressIndicator(),
    //     );
      return StreamBuilder(
        stream: Firestore.instance
            .collection('home/')
            .snapshots(),
        builder: (ctx, chatsnaphot) {
          if (chatsnaphot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );
          final chatdocs = chatsnaphot.data.documents;
          return  Container(
            height: chatdocs.length*(501.0),
            child: ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                itemCount: chatdocs.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.grey[200],
                      height: 50,
                      width: double.infinity,
                      child: Text(
                        chatdocs[index]['text'],
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                               onTap: () {// ProductScreen(chatdocs[index]['text'], chatdocs[index]['userimage']);
                              //   Navigator.pushNamed(context, '/product_screen');
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(chatdocs[index]['text'],chatdocs[index]['userimage'],chatdocs[index]['price'])));
                              },
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.network(
                                       chatdocs[index]['userimage'],
                                      height: 170,
                                      width: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 10,
                                      left: 10,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 160,
                                        color: Colors.black54,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20,
                                        ),
                                        child: Text(
                                           chatdocs[index]['text'],
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 26),
                                          overflow: TextOverflow.fade,
                                          softWrap: true,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                                height: 200,
                                width: 1,
                                child: VerticalDivider(color: Colors.grey)),
                            InkWell(
                               onTap: () {// ProductScreen(chatdocs[index]['text'], chatdocs[index]['userimage']);
                              //   Navigator.pushNamed(context, '/product_screen');
                               // ProductScreen(chatdocs[index]['text'], chatdocs[index]['userimage']);
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(chatdocs[index]['text'],chatdocs[index]['userimage1'],chatdocs[index]['price'])));
                              },
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.network(
                                       chatdocs[index]['userimage1'],
                                      height: 170,
                                      width: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 10,
                                      left: 10,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 160,
                                        color: Colors.black54,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20,
                                        ),
                                        child: Text(
                                           chatdocs[index]['text'],
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 26),
                                          overflow: TextOverflow.fade,
                                          softWrap: true,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                               onTap: () {// ProductScreen(chatdocs[index]['text'], chatdocs[index]['userimage']);
                              //   Navigator.pushNamed(context, '/product_screen');
                               // ProductScreen(chatdocs[index]['text'], chatdocs[index]['userimage']);
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(chatdocs[index]['text'],chatdocs[index]['userimage1'],chatdocs[index]['price'])));
                              },
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.network(
                                       chatdocs[index]['userimage1'],
                                      height: 170,
                                      width: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 10,
                                      left: 10,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 160,
                                        color: Colors.black54,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20,
                                        ),
                                        child: Text(
                                           chatdocs[index]['text'],
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 26),
                                          overflow: TextOverflow.fade,
                                          softWrap: true,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                                height: 200,
                                width: 1,
                                child: VerticalDivider(color: Colors.grey)),
                            InkWell(
                              onTap: () {// ProductScreen(chatdocs[index]['text'], chatdocs[index]['userimage']);
                        //Navigator.pushNamed(context, '/product_screen');
                                //ProductScreen(chatdocs[index]['text'], chatdocs[index]['userimage']);
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(chatdocs[index]['text'],chatdocs[index]['userimage'],chatdocs[index]['price'])));
                              },
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.network(
                                       chatdocs[index]['userimage'],
                                      height: 170,
                                      width: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 10,
                                      left: 10,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 160,
                                        color: Colors.black54,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20,
                                        ),
                                        child: Text(
                                           chatdocs[index]['text'],
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 26),
                                          overflow: TextOverflow.fade,
                                          softWrap: true,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      
                    
                    Container(
                      alignment: Alignment.center,
                      color: Colors.grey[200],
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                        child: Text('show all'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Home_screen');
                        },
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                  ],
                ),
              
            ),
          );
        },
      );
    // });
  }
}
