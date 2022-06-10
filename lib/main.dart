import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hello_world/PostDetails.dart';
import 'package:http/http.dart' as http;
import 'Post.dart';


Future<List<Post>> fetchPosts() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var response = await http.get(url);
  if(response.statusCode==200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => Post.fromJson(data)).toList();
  } else{
    throw Exception("Unexpected Result");
  }
}


void main()  {
  runApp(DisplayPosts());
}

class DisplayPosts extends StatefulWidget {

  @override
  State<DisplayPosts> createState() => _DisplayPostsState();
}

class _DisplayPostsState extends State<DisplayPosts> {
  late Future<List<Post>> postData;

  @override
  void initState(){
    super.initState();
    postData=fetchPosts();
    debugPrint("Post data is ${postData.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    Post post;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Fetch JSON Array"),),
        body: Center(
          child: FutureBuilder<List<Post>>(
            future: postData,
            builder: (context, snapshot) {
              if(snapshot.hasData) {
                List<Post>? posts =snapshot.data;
                return ListView.builder(
                  itemCount: posts?.length ,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(posts![index].body),
                                subtitle: Text(posts![index].title),
                                leading:  CircleAvatar(
                                  backgroundImage: NetworkImage("https://picsum.photos/200/"),
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (builder){
                                    return PostDetails(posts[index]);
                                  }));
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );

              } else if(snapshot.hasError){
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}