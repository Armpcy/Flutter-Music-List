import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get audioManagerInstance => null;

  @override
  Widget build(BuildContext context) {
    launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Music"),
      ),
      body: Column(
        children: [
          ListTile(
              leading: Image.network(
                  'https://i.pinimg.com/originals/ae/2e/56/ae2e5651b74a00d5d31b8c6453fa3ebb.png'),
              title: const Text('Light Switch'),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.red[500]),
                ],
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {
                    const url = 'https://www.youtube.com/watch?v=9EDZixuODrw9';
                    launchURL(url);
                  })),
          ListTile(
              leading: Image.network(
                  'https://i.pinimg.com/originals/ae/2e/56/ae2e5651b74a00d5d31b8c6453fa3ebb.png'),
              title: const Text('Day1'),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                ],
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {
                    const url = 'https://www.youtube.com/watch?v=hWOB5QYcmh0';
                    launchURL(url);
                  })),
          ListTile(
              leading: Image.network(
                  'https://i.pinimg.com/originals/ae/2e/56/ae2e5651b74a00d5d31b8c6453fa3ebb.png'),
              title: const Text('Younger'),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                ],
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {
                    const url = 'https://www.youtube.com/watch?v=r90FuOuqE60';
                    launchURL(url);
                  })),
          ListTile(
              leading: Image.network(
                  'https://i.pinimg.com/originals/ae/2e/56/ae2e5651b74a00d5d31b8c6453fa3ebb.png'),
              title: const Text('deja vu'),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                ],
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {
                    const url = 'https://www.youtube.com/watch?v=cii6ruuycQA';
                    launchURL(url);
                  })),
          ListTile(
              leading: Image.network(
                  'https://i.pinimg.com/originals/ae/2e/56/ae2e5651b74a00d5d31b8c6453fa3ebb.png'),
              title: const Text('wildest dreams'),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                  Icon(Icons.star, color: Colors.red[500]),
                ],
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {
                    const url = 'https://www.youtube.com/watch?v=IdneKLhsWOQ';
                    launchURL(url);
                  }))
        ],
      ),
    );
  }
}
