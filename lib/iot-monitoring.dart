import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class IotMonitoringPage extends StatefulWidget {
  const IotMonitoringPage({super.key});


  @override
  State<IotMonitoringPage> createState() => _IotMonitoringPageState();
}

class _IotMonitoringPageState extends State<IotMonitoringPage> {

  final DatabaseReference myRTDB = FirebaseDatabase.instance.ref();
  String rssiValue = '0';

  void readSensorValue(){
    myRTDB.child('Sensor/rssi').onValue.listen((event){
      final Object? rssiData = event.snapshot.value;
      setState(() {
        rssiValue = rssiData.toString();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readSensorValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff6495ed),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.wifi),
                title: Text('WiFi RSSI', style: TextStyle(fontSize: 30),),
                subtitle: Text('$rssiValue dBm', style: TextStyle(fontSize: 30)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
