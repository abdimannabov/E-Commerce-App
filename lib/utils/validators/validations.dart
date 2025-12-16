class SValidator {
  //Helper to validate email format
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email bo\'sh bo\'lishi mumkin emas';
    }

    //Regukar expression for validating an email
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'To\'g\'ri email manzilini kiriting';
    }
    return null;
  }

  //Helper to validate password
  static String? validatePassword(String? value) {
    //check for empty password
    if (value == null || value.isEmpty) {
      return 'Parol bo\'sh bo\'lishi mumkin emas';
    }
    //check for minimum length
    if (value.length < 6) {
      return 'Parol kamida 6 ta belgidan iborat bo\'lishi kerak';
    }
    //check for at least one number
    final numberRegex = RegExp(r'[0-9]');
    if (!numberRegex.hasMatch(value)) {
      return 'Parolda kamida bitta raqam bo\'lishi kerak';
    }
    //check for at least one special character
    final specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    if (!specialCharRegex.hasMatch(value)) {
      return 'Parolda kamida bitta maxsus belgi bo\'lishi kerak';
    }

    return null;
  }

  //Helper to validate uzbek phone number
  static String? validatePhoneNumber(String? value) {
    //check for empty phone number
    if (value == null || value.isEmpty) {
      return 'Telefon raqami bo\'sh bo\'lishi mumkin emas';
    }

    //Regular expression for validating Uzbek phone numbers
    final phoneRegex = RegExp(
      r'^(?:\+998|998|0)(9[012345789]|8[012345789]|7[012345789]|6[125679]|5[012345789]|4[0123456789]|3[0123456789]|2[0123456789]|1[0123456789])[0-9]{7}$',
    );
    if (!phoneRegex.hasMatch(value)) {
      return 'To\'g\'ri telefon raqamini kiriting';
    }
    return null;
  }
}
