import 'dart:io';

import 'package:flutter_diet2/model/user.dart';
import 'package:flutter_diet2/pages/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'button_widget.dart';
import 'package:flutter/material.dart';

class UserFormWidget extends StatefulWidget {
  final User? user;
  final String? msgErr;
  final ValueChanged<User> onFindByUserID;

  const UserFormWidget({
    Key? key,
    this.user,
    this.msgErr,
    required this.onFindByUserID,
  }) : super(key: key);

  @override
  _UserFormWidgetState createState() => _UserFormWidgetState();
}

class _UserFormWidgetState extends State<UserFormWidget> {
  //final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final formKey = GlobalKey<FormState>();

  late TextEditingController controllerEmail;
  late TextEditingController controllerPassword;
  late TextEditingController controllerMsj;

  @override
  void didUpdateWidget(covariant UserFormWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    initUser();
  }

  @override
  void initState() {
    super.initState();

    initUser();
  }

  void initUser() {
    final email = widget.user == null ? '' : widget.user!.email;
    final password = widget.user == null ? '' : widget.user!.password;
    final msgError = widget.msgErr == null ? '' : widget.msgErr;
    print("ERROR: $msgError");
    controllerEmail = TextEditingController(text: email);
    controllerMsj = TextEditingController(text: msgError);
    controllerPassword = TextEditingController(text: password);
  }

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: ClipRRect(
                  child: Container(
                    child: Image.asset(
                      'assets/logo1.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: buildEmail(),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: buildPassword(),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: buildSubmit(),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    openWhatsApp();
                  },
                  child: const Text(
                    'Olvide mi contraseña',
                    style: TextStyle(
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Text(
                  controllerMsj.text,
                  style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      );

  Widget buildEmail() => TextFormField(
        controller: controllerEmail,
        decoration: InputDecoration(
          labelText: 'Correo',
          labelStyle: TextStyle(
            color: Color(0xFF093824),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF093824), width: 0.9),
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        validator: (value) => value != null && !value.contains('@')
            ? 'Ingresa un correo valido'
            : null,
      );

  Widget buildPassword() => TextFormField(
        controller: controllerPassword,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          labelStyle: TextStyle(
            color: Color(0xFF093824),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF093824), width: 0.9),
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Ingresa tu contraseña' : null,
      );

  Widget buildSubmit() => ButtonWidget(
      text: 'Iniciar',
      onClicked: () {
        final form = formKey.currentState!;
        final isValid = form.validate();
        // final email = widget.user == null ? '' : widget.user!.email;
        // final password = widget.user == null ? '' : widget.user!.password;
        // final name = widget.user == null ? '' : widget.user!.name;

        //llamada al get user

        if (isValid) {
          final userId = controllerEmail.text;
          final userPwd = controllerPassword.text;
          final User userInput = new User(email: userId, password: userPwd);
          widget.onFindByUserID(userInput);
        }
      });


  openWhatsApp() async{
    var whatsaap ="+593992858114";
    String message = "Hola foodie olvidé mi contraseña, Mi usuario es";
    var whatsappurlAndroid = "whatsapp://send?phone=$whatsaap&text=$message";
    var whatsappurlIos = "https://wa.me/$whatsaap?text=${Uri.parse("Hola foodie olvidé mi contraseña, Mi usuario es")}";

    if(Platform.isIOS){
      // for iOS phone only
      if(await canLaunch(whatsappurlIos)){
        await launch(whatsappurlIos, forceSafariVC: false);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text('WhatsApp no está instalado'))
        );
      }

    }else{
      //android, web
      if(await canLaunch(whatsappurlAndroid)){
        await launch(whatsappurlAndroid);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text('WhatsApp no está instalado'))
        );
      }
    }
  }

}
