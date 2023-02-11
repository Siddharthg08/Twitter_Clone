import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/Description.dart';
import 'package:flutter/services.dart' as rootBundle;

import 'DataModel.dart';

void main() => runApp(TwitterCloneApp());

class TwitterCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: AssetImage('elon.webp'),
          ),
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
       body:  SingleChildScrollView(child: listOfTweets()),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {

        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildBottomIconButton(Icons.home, Colors.blue),
            buildBottomIconButton(Icons.search, Colors.black45),
            buildBottomIconButton(Icons.notifications, Colors.black45),
            buildBottomIconButton(Icons.mail_outline, Colors.black45),
          ],
        ),
      ),
    );
  }

  Widget buildBottomIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: FutureBuilder(
        future: readJsonData(),
        builder:(context, data){
          if(data.hasError){
            return Center(child: Text("${data.error}"),);
          }
          else if(data.hasData){
            var items = data.data as List<DataModel>;
            return ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 0,
                ),
                itemCount: items == null ? 0 : items.length ,
                itemBuilder: (context, index){
                  return  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Description(
                        data: items[index].primaryCategory!.description??'',
                        username:items[index].parselyMeta?.parselyAuthor?.first??'',
                        imageUrl: items[index].parselyMeta!.parselyImageUrl??'',
                        time: items[index].date!??'',
                        likes: items[index].tags![0].toString(),
                        comments: items[index].tags![1].toString(),
                        shares: items[index].tags![2].toString(),
                        slug: items[index].slug??'',
                        title: items[index].parselyMeta!.parselyTitle??''
                      )));
                    },
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(items[index].parselyMeta!.parselyImageUrl??''),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        items[index].parselyMeta?.parselyAuthor?.first.toString()??'',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text('@',style: TextStyle(
                                          color: Colors.grey,
                                        ),),
                                        Text(
                                          items[index].date.toString(),
                                          style: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        FontAwesomeIcons.angleDown,
                                        size: 14.0,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                Text(
                                  items[index].parselyMeta?.parselyTitle?.toString()??'',
                                  overflow: TextOverflow.clip,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10.0, right: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      tweetIconButton(FontAwesomeIcons.comment, items[index].tags![0]?.toString()??''),
                                      tweetIconButton(FontAwesomeIcons.retweet, items[index].tags![1]?.toString()??''),
                                      tweetIconButton(FontAwesomeIcons.heart, items[index].tags![2]?.toString()?? '0'),
                                      tweetIconButton(FontAwesomeIcons.share, ''),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
            );}
          else {
            return const Center(child: CircularProgressIndicator(),);
          }},
      )
    );
  }
}


Widget tweetIconButton(IconData icon, String text) {
  return Row(
    children: [
      Icon(
        icon,
        size: 16.0,
        color: Colors.black45,
      ),
      Container(
        margin: const EdgeInsets.all(6.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black45,
            fontSize: 14.0,
          ),
        ),
      ),
    ],
  );
}

Future<List<DataModel>> readJsonData() async{
  final jsonData = await rootBundle.rootBundle.loadString('jsonfile/productlist.json');
  final list = json.decode(jsonData) as List<dynamic>;
  return list.map((e) => DataModel.fromJson(e)).toList();
}