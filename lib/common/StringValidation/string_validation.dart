class StringValidation {
  static String? email(String? email) {
    if (email?.isEmpty ?? false) return 'Email is required';

    if (!(RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email!))) {
      return '*Invalid email';
    } else {
      return null;
    }
  }
  static String? firstName (String? firstName) {
    if (firstName?.isEmpty ?? false) return 'First Name is required';
    if (firstName!.length < 3) return 'First Name should be at least 3 characters';
    if (firstName.length > 20) return 'First Name should be less than 20 characters';
    return null;
  }

  static String? lastName (String? lastName) {
    if (lastName?.isEmpty ?? false) return 'Last Name is required';
    if (lastName!.length < 3) return 'Last Name should be at least 3 characters';
    if (lastName.length > 20) return 'Last Name should be less than 20 characters';
    return null;
  }

  static String? userName (String? userName) {
    if (userName?.isEmpty ?? false) return 'User Name is required';
    if (userName!.length < 3) return 'User Name should be at least 3 characters';
    if (userName.length > 20) return 'User Name should be less than 20 characters';
    return null;
  }

  static String? confirmEmail(String? email1, String email2) {
    if (email1?.isEmpty ?? false) return '*Field is required';

    if (!(RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email1!))) {
      return '*Invalid email';
    } else if (email1 != email2) {
      return '*Emails do not match';
    } else {
      return null;
    }
  }

  static String? phone(String? phone, [bool isWrong = false]) {
    if (isWrong) return 'You entered a wrong phone number';

    if (phone?.isEmpty ?? false) return '*Field is required';

    ///TODO:: Bring phone number to 11 digits
    // if (phone!.length != 11) {
    //   return 'Phone number should be less than 11 digits';
    // }
    if (phone!.length != 10) {
      return 'Phone number should be less than 10 digits';
    }

    if (!(RegExp(r"^[0-9]").hasMatch(phone))) {
      return '*Invalid phone number';
    } else {
      return null;
    }
  }

 

  static String? password(String? password, [bool isWrongPassword = false]) {
    if (isWrongPassword) {
      return 'You entered a wrong password';
    }

    if (password?.isEmpty ?? false) {
      return '*Password is required';
    }

    // if (password?.length != 4) return 'Pin code should be 4 digits';

    // if (!(RegExp(r"^[0-9]").hasMatch(password!))) {
    //   return 'Invalid pin code';
    // }
    else {
      return null;
    }
  }

//   static String? confirmPassword(String? password1, String password2) {
//     if (password1?.isEmpty ?? false) return '*Field is required';

//     if (password1 != password2) {
//       return '*Passwords do not match';
//     } else {
//       return null;
//     }
//   }
// }
}