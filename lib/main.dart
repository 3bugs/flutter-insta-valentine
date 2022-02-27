import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_valentine/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

/*const Color customMagenta50 = Color(0xfffcd5ce);
const Color customMagenta100 = Color(0xfffaac9d);
const Color customMagenta300 = Color(0xfff8836c);
const Color customMagenta400 = Color(0xfff65a3b);

const Color customMagenta900 = Color(0xfff4310a);
const Color customMagenta600 = Color(0xffc32708);

const Color customErrorRed = Color(0xFFC5032B);

const Color customSurfaceWhite = Color(0xFFFFFBFA);
const Color customBackgroundWhite = Colors.white;

const ColorScheme _customColorScheme = ColorScheme(
  primary: customMagenta50,
  //primaryVariant: customMagenta600,
  secondary: Colors.amber,
  //secondaryVariant: customMagenta400,
  surface: Colors.purpleAccent,
  background: customSurfaceWhite,
  error: customMagenta900,
  onPrimary: Colors.red,
  onSecondary: Colors.deepOrange,
  onSurface: customMagenta300,
  onBackground: customMagenta100,
  onError: Colors.redAccent,
  brightness: Brightness.light,
);*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaValentine',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
        scaffoldBackgroundColor: Colors.pink[50],
        appBarTheme: AppBarTheme(
          color: Colors.pink,
          titleTextStyle: GoogleFonts.kaushanScript(
            fontSize: 28.0,
            color: Colors.white,
          ),
        ),
        //textTheme: GoogleFonts.robotoTextTheme(),
        //primaryTextTheme: GoogleFonts.promptTextTheme(),
        /*textTheme: ThemeData.light().textTheme.apply(
              fontFamily: GoogleFonts.prompt().fontFamily,
            ),
        primaryTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: GoogleFonts.prompt().fontFamily,
            ),*/
        /*textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.pink,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.pink,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: Colors.pink,
            //backgroundColor: Colors.pink,
          ),
        ),*/
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pinkAccent),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
        ),
      ),
      /*theme: ThemeData(
        fontFamily: 'Georgia',

        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.pink[800],
        // Define the default font family.

        appBarTheme: const AppBarTheme(
          color: Colors.pink,
          //titleTextStyle: TextStyle(fontSize: 24.0, fontFamily: 'Georgia'),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //onPrimary: Colors.white,
            primary: Colors.pink,
          ),
        ),

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: GoogleFonts.prompt(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: GoogleFonts.sarabun(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),*/
      home: const HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InstaValentine'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(),
            ElevatedButton(
              onPressed: () {},
              child: Text('ทดสอบ'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('ทดสอบ'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('ทดสอบ'),
            ),
          ],
        ),
      ),
    );
  }
}
