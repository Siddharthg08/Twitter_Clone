import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'DataModel.dart';
import 'main.dart';

class Description extends StatelessWidget {
  const Description({Key? key, this.data, this.username, this.time, this.imageUrl, this.likes, this.comments, this.shares, this.slug, this.title}) : super(key: key);
  final String? data;
  final String? username;
  final String? time;
  final String? imageUrl;
  final String? likes;
  final String? comments;
  final String? shares;
  final String? slug;
  final String? title;
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.arrow_back,color: Colors.black,))
        ],
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: AssetImage('elon.webp'),
          ),
        ),
        title: const Text(
          'Tweet Description',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl!),
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
                            username!,
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
                              time!,
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
                      title!,
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      data!,
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      slug!,
                      overflow: TextOverflow.clip,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          tweetIconButton(FontAwesomeIcons.comment, likes.toString()),
                          tweetIconButton(FontAwesomeIcons.retweet, comments.toString()),
                          tweetIconButton(FontAwesomeIcons.heart, shares.toString()),
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
      ),
    );
  }
}
