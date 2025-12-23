import 'package:beamer/beamer.dart';
import 'package:day5riverpodandbeamer/core/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.beamBack(), // Go back to previous page
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextField(label: 'Full Name', controller: nameController),
              CustomTextField(
                label: 'Phone Number',
                controller: phoneController,
                keyboardType: TextInputType.phone,
                validator: Validators.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                autoValidate: true,
              ),
              CustomTextField(
                label: 'Password',
                controller: passwordController,
                isPassword: true,
                validator: Validators.password,

                autoValidate: true,
              ),
              CustomTextField(
                label: 'Confirm Password',
                controller: confirmPasswordController,
                isPassword: true,
                validator: (value) =>
                    Validators.confirmPassword(passwordController.text, value),
                autoValidate: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform registration logic here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Registered successfully!')),
                    );
                    context.beamBack(); // Go back after registration
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
