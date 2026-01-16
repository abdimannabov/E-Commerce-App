/// Custom exception class to handle various Firebase authentication-related errors.
class SFirebaseAuthException implements Exception {
  /// The error code associated with the exception.
  final String code;

  /// Constructor that takes an error code.
  SFirebaseAuthException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      case 'too-many-requests':
        return 'Vaqtincha bloklandingiz. Ko‘p urinish tufayli birozdan so‘ng qayta urining.';
      case 'email-already-in-use':
        return 'Bu email band. Iltimos, boshqa email kiriting.';
      case 'invalid-email':
        return 'Email xato kiritildi. Iltimos, tekshirib ko‘ring.';
      case 'weak-password':
        return 'Parol juda oddiy. Kuchliroq parol tanlang.';
      case 'user-disabled':
        return 'Ushbu profil bloklangan. Qo‘llab-quvvatlash xizmatiga murojaat qiling.';
      case 'user-not-found':
        return 'Ma’lumotlar noto‘g‘ri. Foydalanuvchi topilmadi.';
      case 'wrong-password':
        return 'Parol xato. Iltimos, qayta urinib ko‘ring.';
      case 'invalid-verification-code':
        return 'Tasdiqlash kodi xato.';
      case 'invalid-verification-id':
        return 'Tasdiqlash IDsi xato. Yangi kod so‘rang.';
      case 'quota-exceeded':
        return 'Limit tugadi. Birozdan so‘ng qayta urining.';
      case 'email-already-exists':
        return 'Bu email ro‘yxatdan o‘tgan. Boshqa email foydalaning.';
      case 'provider-already-linked':
        return 'Hisob allaqachon boshqa usul bilan bog‘langan.';
      case 'requires-recent-login':
        return 'Xavfsizlik yuzasidan tizimga qayta kiring.';
      case 'credential-already-in-use':
        return 'Ushbu ma’lumotlar boshqa profilga tegishli.';
      case 'user-mismatch':
        return 'Kiritilgan ma’lumotlar joriy foydalanuvchiga mos kelmadi.';
      case 'account-exists-with-different-credential':
        return 'Bu email boshqa kirish usuli bilan ro‘yxatdan o‘tgan.';
      case 'operation-not-allowed':
        return 'Bu amalga ruxsat berilmagan.';
      case 'expired-action-code':
        return 'Kodni amal qilish muddati tugagan. Yangi kod oling.';
      case 'invalid-action-code':
        return 'Kod xato yoki yaroqsiz.';
      case 'missing-action-code':
        return 'Tasdiqlash kodi kiritilmadi.';
      case 'user-token-expired':
        return 'Seans muddati tugadi. Tizimga qayta kiring.';
      case 'invalid-credential':
        return 'Ma’lumotlar xato yoki muddati o‘tgan.';
      case 'user-token-revoked':
        return 'Ruxsatnoma bekor qilingan. Qayta kiring.';
      case 'invalid-message-payload':
        return 'Xabar formati noto‘g‘ri.';
      case 'invalid-sender':
        return 'Yuboruvchi ma’lumotlari xato.';
      case 'invalid-recipient-email':
        return 'Qabul qiluvchi emaili xato.';
      case 'missing-iframe-start':
      case 'missing-iframe-end':
      case 'missing-iframe-dashboard':
        return 'Email shablonida xatolik bor.';
      case 'auth-domain-config-required':
        return 'Konfiguratsiya xatosi (authDomain).';
      case 'missing-app-credential':
      case 'invalid-app-credential':
        return 'Ilova ruxsatnomasi xato yoki mavjud emas.';
      case 'session-cookie-expired':
        return 'Sessiya muddati tugadi. Qayta kiring.';
      case 'uid-already-exists':
        return 'Foydalanuvchi IDsi band.';
      case 'invalid-cordova-configuration':
        return 'Cordova sozlamalari xato.';
      case 'app-deleted':
        return 'Ilova o‘chirib tashlangan.';
      case 'user-token-mismatch':
        return 'Foydalanuvchi ma’lumotlari mos kelmadi.';
      case 'web-storage-unsupported':
        return 'Brauzer xotirasi (Web storage) o‘chirilgan yoki qo‘llab-quvvatlanmaydi.';
      case 'app-not-authorized':
        return 'Ilova avtorizatsiyadan o‘ta olmadi.';
      case 'keychain-error':
        return 'Xotira bilan bog‘liq xatolik (Keychain).';
      case 'internal-error':
        return 'Ichki xatolik yuz berdi. Keyinroq urining.';
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Login yoki parol xato.';
      default:
        return 'Kutilmagan xatolik. Iltimos, qayta urining.';
    }
  }
}
