import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBBxCJMBE2_-nLXtv_IxePVC5glESb4ysg",
            authDomain: "gestionnaire-de-taches-d4355.firebaseapp.com",
            projectId: "gestionnaire-de-taches-d4355",
            storageBucket: "gestionnaire-de-taches-d4355.firebasestorage.app",
            messagingSenderId: "1088610406084",
            appId: "1:1088610406084:web:4799d9310d691b11984391"));
  } else {
    await Firebase.initializeApp();
  }
}
