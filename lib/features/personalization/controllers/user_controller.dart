import 'package:e_commerce_app/data/repositories/user/user_repo.dart';
import 'package:e_commerce_app/features/personalization/models/user_model.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  // Save user record from any auth provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        // Convert name to first and last names
        final nameParts = UserModel.nameParts(
          userCredentials.user!.displayName ?? '',
        );
        final username = UserModel.generateUsername(
          userCredentials.user!.displayName ?? '',
        );

        // Map data
        final user = UserModel(
          id: userCredentials.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          username: username,
          email: userCredentials.user!.email ?? '',
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          profilePicture: userCredentials.user!.photoURL ?? '',
        );

        // Save user data
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      SLoaders.warningSnackBar(
        title: "Ma'lumot saqlanmadi",
        message: "Nimadir xato ketdi. Qayta urinib ko'ring",
      );
    }
  }
}
