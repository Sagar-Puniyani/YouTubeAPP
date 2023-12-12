import 'package:flutter/material.dart';
import 'package:flutter_app/services/api_client.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final ApiClient _apiClient = ApiClient();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: _apiClient.getVideo(), 
      builder: (BuildContext context , AsyncSnapshot <dynamic> snapshot ){
        if (!snapshot.hasData){
          return const Center(child:  CircularProgressIndicator());
        }
        else if (snapshot.hasError){
          return const Center(child: Text('SomeThing went Wrong !!!'));
        }
        else{
          print("Data is Coming ....");
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder : (BuildContext context , int index  ){
            return Image.network(snapshot.data[index]['snippet']['thumbnails']['high']['url']);
          });
        }
      });
  }
}