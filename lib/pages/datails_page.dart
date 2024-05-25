import 'package:flutter/material.dart';
import 'package:trabalho_api_gallery/models/cat.dart';

class DatailsPage extends StatelessWidget {
  final Cat cat;

  const DatailsPage(this.cat, {super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          centerTitle: true,
          title: Text(cat.animeName,
              style: TextStyle(color: Colors.pink.shade400)),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Image.network(
                  cat.url,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
