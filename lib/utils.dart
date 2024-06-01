import 'package:firebase_core/firebase_core.dart';
import 'package:success/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> setUpFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  // Disable Firestore cache
  firestore.settings = Settings(persistenceEnabled: false);

  // Enable Firestore network
  await firestore.enableNetwork();
}
