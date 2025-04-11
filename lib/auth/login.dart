import 'package:supabase/supabase.dart';

Future<void> login() async {
  final supabase = SupabaseClient(
    'your url',
    'your key',
  );

  final email = 'abc@gmail.com';
  final password = 'abc123';

  final response = await supabase.auth.signInWithPassword(
    email: email,
    password: password,
  );

  if (response.session != null) {
    print('Login successful!');
    print('Session token: ${response.session!.accessToken}');
  } else if (response.user != null) {
    print('User found but session is null? Weird flex.');
  } else {
    print('Login failed. ${response.session!.user}');
  }
}

void main() async {
  await login();
}
