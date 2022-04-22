import 'dart:convert';

import 'package:affixme/model/users.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserList extends StatefulWidget {
  const UserList({ Key? key }) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final Future<List<Users>> post= fetchPost();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: FutureBuilder<List<Users>>(
          future:post,
          builder: (context,snapshot){
            if (snapshot.hasData){
            //   // return Text(snapshot.data.);   
             return ListView.builder(
               padding: EdgeInsets.all(10.0),
                itemCount: snapshot.data!.length,
                itemBuilder: (context,i){
                  return new ListTile(
                    //title: Text(snapshot.data[i].title),
                    //subtitle: Text(snapshot.data[i].body),
                  );
                },
              ); 
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
              
            }
            return CircularProgressIndicator();
          }
          
        ),
      ),
    );
  }
}

Future<List<Users>> fetchPost() async{
  final response  = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  if(response.statusCode == 200){
    // return Post.fromJson(json.decode(response.body));
    return compute(parseList,response.body);
  }else{
    throw Exception("Failed to load the users, try again late");
  }
}

List<Users>  parseList (String responseBody){
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Users>((json)=>Users.fromJson(json)).toList();
}