import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> nums = [];
  void onPress() {
    setState(() {
      nums.add(nums.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "press count:",
                  style: TextStyle(
                    fontSize: 38,
                  ),
                ),
                for (var n in nums)
                  Text(
                    '$n',
                    style: const TextStyle(
                      fontSize: 38,
                    ),
                  ),
                IconButton(
                  iconSize: 48,
                  onPressed: onPress,
                  icon: const Icon(
                    Icons.account_box_outlined,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
