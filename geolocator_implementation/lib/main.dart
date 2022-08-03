import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Position? _position;

  void _getCurrentLocation() async{
    Position position = await _determinePosition();
  }

  Future<Position> _determinePosition() async{
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error('location permissions are denied');
      }
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error(
        'Location permission are permanently denied, we cannot request permissions.'
      );
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Geolocator Demo"),
      ),
      body: Center(
        child: _position != null
            ? Text('Current Location: \n' + _position.toString())
            : const Text('No location data'),
           
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCurrentLocation,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}