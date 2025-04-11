import 'package:dotenv/dotenv.dart';
import 'package:supabase/supabase.dart';

Future<void> login() async {
  var env = DotEnv(includePlatformEnvironment: true)..load(['../../.env']);
  final supabase =
      SupabaseClient(env["SUPABASE_URL"]!, env["SUPABASE_API_KEY"]!);

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
