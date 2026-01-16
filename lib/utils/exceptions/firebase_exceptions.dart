class SFirebaseException implements Exception {
  final String code;

  SFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'permission-denied':
        return 'Sizda ushbu amalni bajarish uchun ruxsat yo‘q.';
      case 'unavailable':
        return 'Server bilan aloqa yo‘q. Keyinroq qayta urining.';
      case 'weak-password':
        return 'Parol juda oddiy. Kuchliroq parol tanlang.';
      case 'email-already-in-use':
        return 'Ushbu email bilan allaqachon ro‘yxatdan o‘tilgan.';
      case 'invalid-email':
        return 'Email manzili noto‘g‘ri kiritildi.';
      default:
        return 'Tizimda xatolik yuz berdi. Qayta urinib ko‘ring.';
    }
  }
}
