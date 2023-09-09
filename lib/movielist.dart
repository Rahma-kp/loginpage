import 'package:flutter/material.dart';
  
  class moveilist extends StatelessWidget {
  const moveilist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("moives"),
        centerTitle: true,
        leading: Icon(Icons.movie),
        
      ),
    );
  }
  
}