// import 'package:flutter/foundation.dart';
// import 'package:shopping_center/main.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';


// Future<void> signUp() async {
//   final AuthResponse response = await supabase.auth.signUp(
//     email: _emailController.text.trim(),
//     password: _passwordController.text.trim(),
//     data: {
//       'username': _userNameController.text.trim(),
//       'firstname': _firstNameController.text.trim(),
//       'lastname': _lastNameController.text.trim(),
//     },
//   );
//   if ( response == null ){
//     if (kDebugMode) {
//       print('Sign up failed');
//     }
//   } else {
//     if (kDebugMode) {
//       print('Sign up successful! User details:');
//     }
//     if (kDebugMode) {
//       print(response.user.toString());
//     } 
//   }
// }