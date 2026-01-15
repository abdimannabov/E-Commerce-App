import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';
import 'firebase_options.dart';

/// ------Entry Point of the Application------
Future<void> main() async {
  // Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetX Storage
  await GetStorage.init();

  // Await Splash until other initializations are done
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Firebase Initialization
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()), 
  );

  // Run the Application
  runApp(const App());
}
