import 'package:flutter/material.dart';
import 'package:trabalho_api_gallery/getInformation/getCat.dart';
import 'package:trabalho_api_gallery/models/cat.dart';
import 'package:trabalho_api_gallery/pages/datails_page.dart';

import '../widgets/circulo_espera.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hugs Gallery',
              style: TextStyle(color: Colors.pink.shade400)),
          backgroundColor: Colors.black,
        ),
        body: FutureBuilder(
          future: getCat().get(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return const CirculoEspera();
              default:
                return _newList(context, snapshot.data ?? []);
            }
          },
        ),
      ),
    );
  }

  Widget _newList(BuildContext context, List<Cat> list) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: GestureDetector(
            child: Card(
              color: Colors.pink.shade100,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        list[index].animeName,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DatailsPage(list[index])));
            },
          ),
        );
      },
    );
  }
}
