import 'package:flutter/material.dart';

class CirculoEspera extends StatelessWidget {
  const CirculoEspera({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            strokeWidth: 10,
            valueColor:
                AlwaysStoppedAnimation<Color>(Colors.white), // Altere a cor aqui
          ),
          Text('Loading...',
              style: TextStyle(fontSize: 32, color: Colors.pink)),
        ],
      ),
    );
  }
}
