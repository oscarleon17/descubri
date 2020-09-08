import 'dart:async';
import 'dart:math';

class AuthService{

  //Login Class
  Future<bool> login() async{
    // Simulate a future for response after 2 second.
    return await new Future<bool>.delayed(
      new Duration(
        seconds: 2
      ), () => new Random().nextBool()
    );
  }

  //Logout Class
  Future<void> logout() async {
    // Simulate a future for response after 1 second.
    return await new Future<void>.delayed(
        new Duration(
            seconds: 1
        )
    );
  }
}

