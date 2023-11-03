import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Proveedor para el constructor sin parámetros
final authServiceProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  static final AuthService _singleton = AuthService._internal();
  factory AuthService() {
    return _singleton;
  }
  AuthService._internal();

  String? _username;
  AuthCodeDeliveryDetails? codeDeliveryDetails;

  void setUsername(String username) {
    this._username = username;
  }

  Future<void> signUpUser({
    required String password,
    required String email,
    String? phoneNumber,
  }) async {
    try {
      final userAttributes = {
        AuthUserAttributeKey.email: email,
        if (phoneNumber != null) AuthUserAttributeKey.phoneNumber: phoneNumber,
        // additional attributes as needed
      };
      final result = await Amplify.Auth.signUp(
        username: _username!,
        password: password,
        options: SignUpOptions(
          userAttributes: userAttributes,
        ),
      );
      await _handleSignUpResult(result);
    } on AuthException catch (e) {
      safePrint('Error signing up user: ${e.message}');
    }
  }

  Future<void> _handleSignUpResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        //_handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignUpStep.done:
        safePrint('Sign up is complete');
        break;
    }
  }

  String handleCodeDelivery() {
    return 'A confirmation code has been sent to ${codeDeliveryDetails?.destination}. '
        'Please check your ${codeDeliveryDetails?.deliveryMedium.name} for the code.';
  }

  Future<void> confirmUser({
    required String confirmationCode,
  }) async {
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: _username!,
        confirmationCode: confirmationCode,
      );

      await _handleSignUpResult(result);
    } on AuthException catch (e) {
      safePrint('Error confirming user: ${e.message}');
    }
  }
}
