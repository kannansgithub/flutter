import 'dart:async';
import 'validator.dart';

class Bloc extends Object with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Function(String) get handleEmailOnChange => _emailController.sink.add;
  Function(String) get handlePasswordOnChange => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
