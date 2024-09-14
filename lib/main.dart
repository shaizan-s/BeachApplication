import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beach Status',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BeachListScreen(),
    );
  }
}

class BeachListScreen extends StatelessWidget {
  // Dummy list of beaches and their status
  final List<Map<String, String>> beaches = [
    {"name": "Baga Beach", "status": "Safe"},
    {"name": "Kovalam Beach", "status": "Caution"},
    {"name": "Juhu Beach", "status": "Unsafe"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beach Status'),
      ),
      body: ListView.builder(
        itemCount: beaches.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(beaches[index]["name"]!),
              subtitle: Text('Status: ${beaches[index]["status"]}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Placeholder for future map or detailed info
                print('Tapped on ${beaches[index]["name"]}');
              },
            ),
          );
        },
      ),
    );
  }
}
