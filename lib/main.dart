import 'package:designs/two.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text("Additional Information",
            style: TextStyle(color: Colors.white)),
      ),
      body: Expanded(
        child: Column(
          children: [
            SafeArea(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Share Dukaan App"),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenTwo()));
                      },
                      icon: Icon(Icons.chevron_right),
                    ),
                    leading: Icon(Icons.share),
                  ),
                  ListTile(
                      title: Text('Change Language'),
                      leading: Icon(Icons.language),
                      trailing: Icon(Icons.chevron_right_outlined)),
                  ListTile(
                    title: Text("WhatsApp Chat Support"),
                    trailing: Transform.scale(
                      scale: 0.5,
                      child: Switch(
                          value: true,
                          onChanged: null,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: const Color.fromARGB(255, 8, 80, 138),
                          inactiveThumbColor: Colors.blue,
                          inactiveTrackColor: Colors.grey),
                    ),
                    leading: Icon(Icons.message),
                  ),
                  ListTile(
                    title: Text('Privacy Policy'),
                    leading: Icon(Icons.lock),
                  ),
                  ListTile(
                    title: Text('Rate Us'),
                    leading: Icon(Icons.star_border),
                  ),
                  ListTile(
                    title: Text('Sign Out'),
                    leading: Icon(Icons.exit_to_app_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: Column(
                      children: [
                        Text(
                          'Version',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "2.4.2",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
