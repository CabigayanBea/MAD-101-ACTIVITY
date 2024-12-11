import 'package:flutter/material.dart';

void main() {
  runApp(cabigayan());
}

class cabigayan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FullExample(),
    );
  }
}

class FullExample extends StatefulWidget {
  @override
  _FullExampleState createState() => _FullExampleState();
}

class _FullExampleState extends State<FullExample> {
  final _formKey = GlobalKey<FormState>();
  String? _textFieldValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter Example'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              print('Selected: $value');
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                const PopupMenuItem(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
              ];
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton Pressed');
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
              
                const Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: const TextSpan(
                    text: 'This is me ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'RichText ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      TextSpan(text: 'example ko ini.'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Row and Column Nesting
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.star, color: Colors.yellow),
                        Text('Column 1'),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.favorite, color: Colors.red),
                        Text('Column 2'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('TextButton Pressed');
                      },
                      child: const Text('TextButton'),
                     // style: TextButton.styleFrom(backgroundColor: Colors.blue, primary: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('ElevatedButton Pressed');
                      },
                      child: const Text('ElevatedButton'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.thumb_up),
                      onPressed: () {
                        print('IconButton Pressed');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // ButtonBar
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Option 1'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Option 2'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Image, Icon, and Decoration
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://via.placeholder.com/150'), // Replace with your asset path if needed
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Icon(Icons.camera, size: 50, color: Colors.black),
                  ],
                ),
                const SizedBox(height: 20),

                // Form with TextFormField Validation
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Enter your name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a value';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _textFieldValue = value;
                        },
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            print('Form Value: $_textFieldValue');
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Detecting Orientation
                OrientationBuilder(
                  builder: (context, orientation) {
                    return Text(
                      'Orientation: ${orientation == Orientation.portrait ? "Portrait" : "Landscape"}',
                      style: const TextStyle(fontSize: 16),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/cupertino.dart';

class CupertinoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Cupertino Widgets'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Settings',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return Center(
                child: Text(
                  index == 0 ? 'Home Tab' : 'Settings Tab',
                  style: TextStyle(fontSize: 24),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class CupertinoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Widgets'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Settings',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return Center(
                child: Text(
                  index == 0 ? 'Home Tab' : 'Settings Tab',
                  style: TextStyle(fontSize: 24),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(CupertinoApp(
    home: CupertinoExample(),
  ));
}
*/
