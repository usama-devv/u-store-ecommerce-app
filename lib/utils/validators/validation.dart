class UValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email Address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    /// Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    /// Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }
    /// Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }
    /// Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?:"{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value){
    if (value == null || value.isEmpty) {
      return 'Phone Number is required.';
    }
    final phoneRegExp = RegExp(r'^\d{10}$');
    
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required)';
    }
    return null;
  }
}
