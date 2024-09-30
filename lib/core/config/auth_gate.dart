import 'package:audio_book/core/service/auth_service.dart';
import 'package:audio_book/features/main/main_view.dart';
import 'package:audio_book/features/splash/splash_view.dart';
import 'package:flutter/widgets.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService.auth.authStateChanges(),
      builder: (context, snapshot) {
        return snapshot.hasData ? SplashView() : MainView();
      },
    );
  }
}
