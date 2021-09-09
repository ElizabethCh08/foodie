import 'package:flutter/material.dart';
import 'package:flutter_diet2/api/user_sheets_api.dart';
import 'package:flutter_diet2/model/user.dart';
import 'package:flutter_diet2/pages/home_screen.dart';
import 'package:flutter_diet2/widgets/user_form_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  User? user;
  String? msgError;

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFF15156),
              const Color(0xFFF9A03F),
            ],
          ),
        ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UserFormWidget(
                  user: user,
                  msgErr: msgError,
                  onFindByUserID: (userStr) async {

                    final encontrado = await UserSheetsApi.getById(userStr.email);
                    print (encontrado);
                    if(encontrado?.password == userStr.password){
                      setState(() {
                        this.user = encontrado;
                      });
                      print ("entro bien");
                      //llamarPantallaInicio();
                       Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>HomeScreen(user: encontrado)),
                   );
                    }else{
                      print ("no debe entrar");
                      setState(() {
                        this.user = null;
                        this.msgError="Usuario o clave incorrecta";
                      });
                    }
                  },
                ),
                //if(users.isNotEmpty) buildUserControls(),
              ],
            ),
          ),
        ),
    );
  }
  //Widget llamarPantallaInicio() => HomeScreen(usuarioEncontrado.name);
}
