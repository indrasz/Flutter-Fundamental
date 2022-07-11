import 'package:bloc_starter/views/basic_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class BasicCubitPage extends StatelessWidget {
  CounterCubit counter = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Basic Cubit"
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            initialData: counter.inisialData,
            stream: counter.stream,
            builder: (context, snapshot) {
              return Center(
                child: Text(
                  "${snapshot.data}",
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
              );
            }
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){
                  counter.minus();
                }, 
                icon: const Icon(
                  Icons.remove
                ),
              ),
              IconButton(
                onPressed: (){
                  counter.plus();
                }, 
                icon: const Icon(
                  Icons.add
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}