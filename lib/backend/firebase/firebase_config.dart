import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDg_o6xAQhz0-4mUbVZ0KZpZjcFq3ihWFc",
            authDomain: "yakobank-sz8q9u.firebaseapp.com",
            projectId: "yakobank-sz8q9u",
            storageBucket: "yakobank-sz8q9u.appspot.com",
            messagingSenderId: "9424185902",
            appId: "1:9424185902:web:28921eba639f9560444dbf"));
  } else {
    await Firebase.initializeApp();
  }
}
