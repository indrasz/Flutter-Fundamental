import 'package:flutter/material.dart';

class BlocBuilderPage extends StatelessWidget {
  const BlocBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Bloc Builder"
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "0",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ],
          )
        ],
      ),

    );
  }
}