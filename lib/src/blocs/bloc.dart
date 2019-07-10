import 'dart:async';
import 'validators.dart';

class Bloc with Validators{
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //region add data to stream
  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  //endregion

  //region Retrieve data from stream
  Stream<String> get StreamEmail => _emailController.stream;

  Stream<String> get StreamPassword => _passwordController.stream;
  //endregion

}
