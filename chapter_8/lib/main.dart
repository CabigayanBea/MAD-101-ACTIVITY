import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {

  bool _isExpanded = false;

  bool _showFirst = true;

  double _opacity = 1.0;

  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin:const Offset(-1, 0), end: const Offset(0, 0))
        .animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animation Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                height: _isExpanded ? 200 : 100,
                width: _isExpanded ? 200 : 100,
                color: _isExpanded ? Colors.blue : Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  "Tap Me",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),

            AnimatedCrossFade(
              firstChild: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Center(
                  child: Text("First"),
                ),
              ),
              secondChild: Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                child: const Center(
                  child: Text("Second"),
                ),
              ),
              crossFadeState: _showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showFirst = !_showFirst;
                });
              },
              child: const Text("Toggle Crossfade"),
            ),
            const SizedBox(height: 20),

            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    "Opacity",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = _opacity == 1.0 ? 0.0 : 1.0;
                });
              },
              child: const Text("Toggle Opacity"),
            ),
            const SizedBox(height: 20),

            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: child,
                );
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.teal,
                child: const Center(
                  child: Text(
                    "Scale",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            SlideTransition(
              position: _slideAnimation,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Slide"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
