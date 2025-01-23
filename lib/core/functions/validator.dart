abstract class Validator {
  static bool? validateEmail(String email) {
    final RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return (emailRegex.hasMatch(email) ? true : null);
  }

  static bool? validatePassword(String password) {
    final RegExp passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
    );
    return (passwordRegex.hasMatch(password) ? true : null);
  }

  static bool? validatePhoneNumber(String phoneNumber) {
    final RegExp phoneRegex = RegExp(r'^\+1?\d{10}$');
    return (phoneRegex.hasMatch(phoneNumber) ? true : null);
  }
}
