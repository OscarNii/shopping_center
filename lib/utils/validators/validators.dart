class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } 

    //Regular expessions for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    //check for min input length
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
      }
    return null;
  }    

  static String? validatePhoneNumber(String? value){
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    //assuming phone number is 10 digits US Phone Number format
    final phoneNumberRegExp = RegExp(r'^\d{10}$');
    if (!phoneNumberRegExp.hasMatch(value)) {
      return 'Invalid phone number format';
  }
  return null;
  }
}