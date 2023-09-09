import 'package:flutter/material.dart';

class lists extends StatelessWidget {
  const lists({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('List'),
          centerTitle: true,
        ),
       body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context,int index){
            return  ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text(' movie-name'),
                trailing: Icon(Icons.edit),
                subtitle: Text('movie.no: $index'),
              
            );
          }),

          
           
      ),
    );
      
  }
}