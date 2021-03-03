import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bendemistim/ui/post_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ben Demiştim",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ben Demiştim"),
        ),
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

// Dump Data
class _MainPageState extends State<MainPage> {
  final List<String> entries = <String>[
    'Will Donald Trump be President of the USA on March 31, 2021?',
    'Will Joe Biden be President of the USA on March 1, 2021?',
    'Will ETH be above 2000 dolar on March 1st, 2021?',
    'Will Donald Trump be President of the USA on March 31, 2021?',
    'Will Joe Biden be President of the USA on March 1, 2021?',
    'Will ETH be above 2000 dolar on March 1st, 2021?'
  ];

  final List<String> author = <String>[
    'Richard Carl',
    'Carlos Alberto',
    'Aliesh Kasparov',
    'Richard Carl',
    'Carlos Alberto',
    'Aliesh Kasparov'
  ];

  final List imageUrl = [
    'https://source.unsplash.com/50x50',
    'https://source.unsplash.com/50x50/?portra',
    'https://source.unsplash.com/50x50/?portrait',
    'https://source.unsplash.com/50x50',
    'https://source.unsplash.com/50x50/?portra',
    'https://source.unsplash.com/50x50/?portrait'
  ];

  final List volume = [
    5918511.0,
    5528499.0,
    436290.0,
    5918511.0,
    5528499.0,
    436290.0
  ];

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return PostWidget(
                  imageUrl: imageUrl,
                  entries: entries,
                  author: author,
                  volume: volume,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
