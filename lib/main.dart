import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/screens.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const BangunSplash(),
        '/home': (context) => const HomePage(),
        '/anggaran': (context) => BangunAnggaran(),
        '/cetak': (context) => const BangunCetak(),
        '/toko': (context) => BangunToko(),
        '/profile': (context) => const BangunProfile(),
        '/register': (context) => const BangunRegister(),
        '/login': (context) => const BangunLogin(),
      },
    );
  }
}
