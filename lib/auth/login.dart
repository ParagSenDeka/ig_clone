import 'package:supabase/supabase.dart';

Future<void> login() async {
  final supabase = SupabaseClient(
    'https://pstmxxthcsgcbtjhxdbp.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBzdG14eHRoY3NnY2J0amh4ZGJwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQzODQwNTcsImV4cCI6MjA1OTk2MDA1N30.5UN7nqdIFTIbNXzxKA3Dcli_QnwTB43RUohBeD4Pg6Q',
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
