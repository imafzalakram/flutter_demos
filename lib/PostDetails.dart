import 'package:flutter/material.dart';
import 'package:hello_world/Post.dart';

class PostDetails extends StatelessWidget {
  late String postTitle;
  late String postDescription;

  PostDetails(Post singlPostData) {
    postTitle=singlPostData.title;
    postDescription= singlPostData.body;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Post Details"),),
        body: Column(
          children: [
            ListTile(
              title: Text(postTitle),
              subtitle: Text(postDescription),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Close"))
          ],
        )
      ),
    );
  }
}
