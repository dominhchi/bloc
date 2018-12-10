import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {
  AuthenticationEvent([Iterable props]) : super(props);
}

class AppStart extends AuthenticationEvent {
  @override
  String toString() => 'AppStart';
}

class Login extends AuthenticationEvent {
  final String token;

  Login({@required this.token}) : super([token]);

  @override
  String toString() => """{
    "AuthenticationEvent.Login": {
      "token": "$token"
    }
  }""";
}

class Logout extends AuthenticationEvent {
  @override
  String toString() => 'Logout';
}
