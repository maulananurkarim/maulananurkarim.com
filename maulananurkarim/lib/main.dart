import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Maulana Nurkarim", home: Maulana());
  }
}

class Maulana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.blue])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 75,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1583195764036-6dc248ac07d9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Maulana Nurkarim",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Product Designer at zapps.co.id",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.grey[300]),
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton.icon(
                  icon: Icon(Ionicons.logo_instagram),
                  label: Text("Instagram"),
                  onPressed: () {
                    // launchURL();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton.icon(
                  icon: Icon(Ionicons.logo_facebook),
                  label: Text("Facebook"),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton.icon(
                  icon: Icon(Ionicons.logo_figma),
                  label: Text("Figma"),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton.icon(
                  icon: Icon(Ionicons.logo_github),
                  label: Text("Github"),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

launchURL() async {
  const url = 'https://google.com';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
