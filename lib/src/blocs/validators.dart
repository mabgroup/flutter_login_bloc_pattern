import 'dart:async';


class Validators{
  final validateEmail=StreamTransformer<String,String>.fromHandlers(handleData: (email,sink){
    if(email.contains('@'))
      sink.add(email);
    else
      sink.addError('Enter valid Email!');
  });

  final validatePassword=StreamTransformer<String,String>.fromHandlers(handleData: (passwor,sink){
    if(passwor.length>3){
      sink.add(passwor);
    }else
      sink.addError('Password must be at least 4 chracter!');
  });
}