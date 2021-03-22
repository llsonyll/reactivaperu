import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/home/home.dart';
import 'package:reactiva/UI/registro/registro.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/widgets/facebookButton.dart';
import 'package:reactiva/UI/widgets/googleButton.dart';
import 'package:reactiva/UI/widgets/header.dart';
import 'package:reactiva/UI/widgets/nextButton.dart';
import 'package:reactiva/navigator_utils.dart';

// import 'login_cubit.dart';
// import 'package:reactiva/src/widgets/nextButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      height: size.height * .85,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryVariant,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(size.width * .5),
          topRight: Radius.circular(size.width * .5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 40.0),
          Text(
            'Bienvenido',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          const SizedBox(height: 40.0),
          LoginEmailTF(
            controller: emailController,
            label: 'Correo Electrónico',
            hintText: 'reactiva@gmail.com',
          ),
          // const SizedBox(height: 5.0),
          LoginPasswordTF(
            controller: passwordController,
            label: 'Contraseña',
            hintText: '********',
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text('Continuar'),
          // ),
          const SizedBox(height: 10.0),
          NextButton(
            nextWidget: Home(),
          ),
          const SizedBox(height: 5.0),
          FacebookButton(),
          const SizedBox(height: 5.0),
          GoogleButton(),
          const SizedBox(height: 30.0),
          InkWell(
            onTap: () {
              pushAndReplaceToPage(context, RegistroPage());
            },
            child: Text(
              'Registrate',
              style: TextStyle(
                fontSize: 14.0,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
          const SizedBox(height: 3.0),
          // InkWell(
          //   onTap: () {},
          //   child: Text(
          //     'Olvidaste tu contraseña?',
          //     style: TextStyle(
          //       fontSize: 14.0,
          //       color: Theme.of(context).colorScheme.surface,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class LoginEmailTF extends StatefulWidget {
  const LoginEmailTF({
    Key key,
    @required this.label,
    @required this.hintText,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final String label;
  final String hintText;

  @override
  _LoginEmailTFState createState() => _LoginEmailTFState();
}

class _LoginEmailTFState extends State<LoginEmailTF> {
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.surface,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
              ),
              onChanged: (texto) {
                if (texto != "12345") {
                  setState(() {
                    error = "error";
                  });
                } else {
                  setState(() {
                    error = "";
                  });
                }
              },
            ),
          ),
          error != '' ? SizedBox(height: 5.0) : FittedBox(),
          error != ''
              ? Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    error,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : const FittedBox(),
        ],
      ),
    );
  }
}

class LoginPasswordTF extends StatefulWidget {
  const LoginPasswordTF({
    Key key,
    @required this.label,
    @required this.hintText,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final String label;
  final String hintText;

  @override
  _LoginPasswordTFState createState() => _LoginPasswordTFState();
}

class _LoginPasswordTFState extends State<LoginPasswordTF> {
  String error = "";
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.surface, width: 1.0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined),
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                ),
              ),
              obscureText: obscure,
              onChanged: (texto) {
                if (texto != "12345") {
                  setState(() {
                    error = "error";
                  });
                } else {
                  setState(() {
                    error = "";
                  });
                }
              },
            ),
          ),
          error != '' ? SizedBox(height: 5.0) : FittedBox(),
          error != ''
              ? Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    error,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : const FittedBox(),
        ],
      ),
    );
  }
}
