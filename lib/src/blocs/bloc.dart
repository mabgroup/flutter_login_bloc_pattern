import 'dart:async';
import 'validators.dart';

class Bloc extends Object with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //region add data to stream
  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  //endregion

  //region Retrieve data from stream
  Stream<String> get StreamEmail => _emailController.stream.transform(validateEmail);

  Stream<String> get StreamPassword => _passwordController.stream.transform(validatePassword);
  //endregion

  //region dispose sink and stream
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
  //endregion
}

final bloc = Bloc();
