import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  InputsScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValues = {
      'first_name': 'Jesus',
      'last_name': 'Chacon',
      'email': 'jesuse.chf@gmail.com',
      'password': 'Jesus',
      'role': 'Admin',
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    const CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre del Usuario',
                      helperText: 'Solo letras',
                    ),
                    const SizedBox(height: 30),
                    const CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido del Usuario ',
                      helperText: 'Solo letras',
                    ),
                    const SizedBox(height: 30),
                    const CustomInputField(
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Correo Electronico del Usuario',
                      helperText: 'Solo letras',
                    ),
                    const SizedBox(height: 30),
                    const CustomInputField(
                      obscureText: true,
                      labelText: 'Contraseña',
                      hintText: 'Ingrese su Contraseña',
                      helperText: 'Pass',
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido 22');
                        }
                        print(formValues);
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
