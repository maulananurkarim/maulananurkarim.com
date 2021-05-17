import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Maulana Nurkarim - Product Designer",
        home: Maulana());
  }
}

class Maulana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.blue])),
        child: SingleChildScrollView(
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
                  'https://lh3.googleusercontent.com/a-/AOh14Gix0FRODXKrFd3jFoX5L4b3u2fpQZtWS6Lv5o5w4Q',
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
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 2,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Product Designer at ",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.grey[300]),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal),
                  ),
                  TextSpan(
                    text: "zapps.co.id",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        var url = "https://zapps.co.id/";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.grey[300],
                            decoration: TextDecoration.underline),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),
                  ),
                ]),
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
                      launchURL('https://instagram.com/maulananurkarim/');
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
                    icon: Icon(Ionicons.logo_linkedin),
                    label: Text("Linkedin"),
                    onPressed: () {
                      launchURL('https://www.linkedin.com/in/maulananurkarim/');
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
                    icon: Icon(Ionicons.logo_dribbble),
                    label: Text("Dribbble"),
                    onPressed: () {
                      launchURL('https://dribbble.com/maulananurkarim/');
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
                    icon: Icon(Ionicons.logo_github),
                    label: Text("Github"),
                    onPressed: () {
                      launchURL('https://github.com/maulananurkarim/');
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Copyright " + years + " All right reserved.",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal),
              ),
              RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = "https://maulananurkarim.com/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  text: "maulananurkarim.com",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white),
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Made with ❤ Flutter",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Ionicons.logo_whatsapp),
        onPressed: () {
          launchURL('https://wa.me/6281563546094/');
        },
        label: Text(
          "WhatsApp",
        ),
      ),
    );
  }
}

String years = DateFormat('yyy').format(DateTime.now()).toString();

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
