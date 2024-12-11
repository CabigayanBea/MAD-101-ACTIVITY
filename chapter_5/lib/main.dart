import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp());
}

class MaterialApp extends StatelessWidget {
  const  MaterialApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Material na'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Text(
                      'Bea',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text('Material Widgets'),
                ],
              ),
             const SizedBox(height: 16),
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                  ),
                 const Positioned(
                    bottom: 20,
                    right: 20,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            
              Row(
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    color: Colors.brown,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              const SizedBox(height: 16),
    
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'This is a text widget in Column.',
                    style: TextStyle(fontSize: 18),
                  ),
                 const  SizedBox(height: 16),
                  Container(
                    color: Colors.purple,
                    height: 40,
                    width: 100,
                    child: const Center(
                    child: Text(
                        'Container',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
