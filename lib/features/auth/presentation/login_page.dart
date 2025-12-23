import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../state/auth_provider.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              label: 'Email',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextField(
              label: 'Password',
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(authProvider.notifier).login();
                context.beamToNamed('/home');
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                context.beamToNamed('/register');
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
