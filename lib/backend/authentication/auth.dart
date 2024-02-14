// import 'package:flutter/foundation.dart';
// import 'package:shopping_center/main.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';


// Future<void> signUp() async {
//   try {
//     final response = await supabase.auth.signUp(
//       email: 'example@example.com',
//       password: 'password123',
//       // options: SupabaseAuthOptions(
//       //   data: {
//       //     'username': 'username',
//       //     'firstname': 'firstname',
//       //     'lastname': 'lastname',
//       //   },
//       //         ),
//     );

//     if (response.error == null) {
//       // Sign up successful
//       print('Sign up successful');
//     } else {
//       // Sign up failed, handle the error
//       final AuthException e = response.error!;
//       if (kDebugMode) {
//         print('Sign up failed: ${e.message}');
//       }
//       // Handle the error as needed, you might want to show an error message to the user
//     }
//   } on AuthException catch (e) {
//     // Catch any exceptions related to the authentication process
//     if (kDebugMode) {
//       print(e.message);
//     }
//   }
// }
