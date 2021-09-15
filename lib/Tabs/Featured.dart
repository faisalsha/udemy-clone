import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/utils.dart';
import 'package:udemyclone/Screens/MyList/myListScreen.dart';
import 'package:udemyclone/Services/dataController.dart';
import 'package:get/get.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Featured'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(MyListScreen());
              },
              icon: Icon(EvaIcons.shoppingCart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('images/sale.png'),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                color: Colors.blueAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Courses now on sale',
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    Text(
                      '1 Day left ',
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Featured',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 350,
              width: 400,
              child: GetBuilder<DataController>(
                init: DataController(),
                builder: (value) {
                  return FutureBuilder(
                      future: value.getData('top'),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.red,
                            ),
                          );
                        } else if (snapshot.hasData) {
                          print("has data");
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, int index) {
                                return Container(
                                  height: 200,
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        snapshot.data[index].data()['image'],
                                        fit: BoxFit.cover,
                                        height: 190,
                                        // width: 200,
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        snapshot.data[index].data()['title'],
                                        // 'course 1',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "by " +
                                            snapshot.data[index]
                                                .data()['author'],
                                        // 'course 1',
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            '(${snapshot.data[index].data()['enrolled']})',
                                            // 'course 1',
                                            style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.rupeeSign,
                                            color: Colors.white,
                                            size: 19,
                                          ),
                                          Text(
                                            '${snapshot.data[index].data()['price']}',
                                            // 'course 1',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          'Best seller',
                                          style: TextStyle(
                                              color: Colors.brown,
                                              fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        } else {
                          //show shimmer later
                          return ListView.builder(
                              itemCount: snapshot.data.length ?? 1,
                              itemBuilder: (context, int index) {
                                return Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Text('show shimmer')
                                      // Image.network(
                                      //     snapshot.data[index].data()['image'])

                                      // Container(
                                      //   height: 100,
                                      //   // width: 200,
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.white,
                                      //     image: DecorationImage(
                                      //       image:
                                      //       NetworkImage(
                                      //           'https://i.pinimg.com/236x/46/53/1e/46531e30a79592dd0591c50b0c057911.jpg'
                                      //           // snapshot.data[index]
                                      //           //     .data()['image'],
                                      //           ),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                );
                              });
                        }
                      });
                },
              ),
            ),

            //second fatured
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 6, bottom: 10),
              child: Text(
                'Top courses in development',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 350,
              width: 400,
              child: GetBuilder<DataController>(
                init: DataController(),
                builder: (value) {
                  return FutureBuilder(
                      future: value.getData('featured'),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.red,
                            ),
                          );
                        } else if (snapshot.hasData) {
                          print("has data");
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, int index) {
                                return Container(
                                  height: 200,
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        snapshot.data[index].data()['image'],
                                        // height: 230,
                                        // width: 250,
                                        fit: BoxFit.cover,
                                      ),
                                      // SizedBox(
                                      //   height: 3,
                                      // ),
                                      Text(
                                        snapshot.data[index].data()['title'],
                                        // 'course 1',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "by " +
                                            snapshot.data[index]
                                                .data()['author'],
                                        // 'course 1',
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            '(${snapshot.data[index].data()['enrolled']})',
                                            // 'course 1',
                                            style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.rupeeSign,
                                            color: Colors.white,
                                            size: 19,
                                          ),
                                          Text(
                                            '${snapshot.data[index].data()['price']}',
                                            // 'course 1',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                    ],
                                  ),
                                );
                              });
                        } else {
                          //show shimmer later
                          return ListView.builder(
                              itemCount: snapshot.data.length ?? 1,
                              itemBuilder: (context, int index) {
                                return Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Text('show shimmer')
                                      // Image.network(
                                      //     snapshot.data[index].data()['image'])

                                      // Container(
                                      //   height: 100,
                                      //   // width: 200,
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.white,
                                      //     image: DecorationImage(
                                      //       image:
                                      //       NetworkImage(
                                      //           'https://i.pinimg.com/236x/46/53/1e/46531e30a79592dd0591c50b0c057911.jpg'
                                      //           // snapshot.data[index]
                                      //           //     .data()['image'],
                                      //           ),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                );
                              });
                        }
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
