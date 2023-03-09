import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: new Dashboard(title: 'Flutter Demo Home Page'),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
  ThemeMode _themeMode = ThemeMode.system;
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
        elevation: 100,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("STATUS", Icons.book),
            makeDashboardItem("TRENDING", Icons.trending_up_rounded),
            makeDashboardItem("BACKUP", Icons.backup_sharp),
            makeDashboardItem("STATUS", Icons.numbers_rounded),
            makeDashboardItem("REMINDERS", Icons.alarm),
            makeDashboardItem("SETTINGS", Icons.settings_applications),
            makeDashboardItem("PROFILE", Icons.person),
            makeDashboardItem("POKEMON", Icons.catching_pokemon_rounded),
            makeDashboardItem("SAVE", Icons.save),
            makeDashboardItem("EXIT", Icons.exit_to_app)
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color(0xffe1cc50)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Color(0xff000000),
                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
