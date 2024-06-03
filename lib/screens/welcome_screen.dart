import 'package:flutter/material.dart';
import 'package:uiiiact1reza/screens/signin_screen.dart';
import 'package:uiiiact1reza/screens/signup_screen.dart';
import 'package:uiiiact1reza/theme/theme.dart';
import 'package:uiiiact1reza/widgets/custom_scaffold.dart';
import 'package:uiiiact1reza/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Pizzeria Reza\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        TextSpan(
                            text:
                                '\nFavor de llenar todos suscampos para poder entrar a nuestra pagina',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Iniciar ',
                      onTap: const SignInScreen(),
                      color: Color(0xff3c3b3b),
                      textColor: Color(0xfffffcfc),
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Registrarse',
                      onTap: const SignUpScreen(),
                      color: Color(0xffb71717),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
