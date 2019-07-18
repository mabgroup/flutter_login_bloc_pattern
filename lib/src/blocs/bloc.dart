import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //region add data to stream
  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  submit(){
    final validemai = _emailController.value;
    final validPassword = _passwordController.value;

    print('$validemai & $validPassword');
  }

  //endregion

  //region Retrieve data from stream
  Stream<String> get StreamEmail => _emailController.stream.transform(validateEmail);

  Stream<String> get StreamPassword => _passwordController.stream.transform(validatePassword);

  Stream<bool> get SubmitValid => Observable.combineLatest2(StreamEmail, StreamPassword, (e,p)=>true);
  //endregion

  //region dispose sink and stream
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
  //endregion
}