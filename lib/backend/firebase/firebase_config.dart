import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD1yJA2I1jG1fnPD1DLeqKNGcQD0RXKmK8",
            authDomain: "my-boat-team.firebaseapp.com",
            projectId: "my-boat-team",
            storageBucket: "my-boat-team.appspot.com",
            messagingSenderId: "178757808828",
            appId: "1:178757808828:web:6793492fcbf26895c7d6b9",
            measurementId: "G-K2M4ZFZ9BM"));
  } else {
    await Firebase.initializeApp();
  }
}
