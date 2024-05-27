import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final txtNombre = TextEditingController();
final txtApellidos = TextEditingController();
final txtTipoIdentificacion = TextEditingController();
final txtIdentificacion = TextEditingController();
final txtNoDocumento = TextEditingController();
final txtGenero = TextEditingController();
final txtDireccion = TextEditingController();
final txtCiudad = TextEditingController();
final txtTelefono = TextEditingController();
final txtCorreo = TextEditingController();
final txtTipoSangre = TextEditingController();

modalNuevaPersona(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[900],
            foregroundColor: Colors.orange[200],
            title: const Text('Nueva Persona'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                TextFormField(
                  controller: txtNombre,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Nombre: ",
                  ),
                ),
                TextFormField(
                  controller: txtApellidos,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Apellidos: ",
                  ),
                ),
                TextFormField(
                  controller: txtTipoIdentificacion,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.note),
                      labelText: "Tipo de identificación: ",
                      hintText: "Cc/Ti/Rc..."),
                ),
                TextFormField(
                  controller: txtNoDocumento,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.numbers),
                    labelText: "No. Documento: ",
                  ),
                ),
                TextFormField(
                  controller: txtGenero,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.male),
                      labelText: "Genero ",
                      hintText: "Maculino/Femenino"),
                ),
                TextFormField(
                  controller: txtDireccion,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.album_rounded),
                      labelText: "Dirección ",
                      hintText: ""),
                ),
                TextFormField(
                  controller: txtCiudad,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.location_city),
                      labelText: "ciudad ",
                      hintText: "departamento/municipo"),
                ),
                TextFormField(
                  controller: txtTelefono,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.phone),
                      labelText: "Telefono ",
                      hintText: ""),
                ),
                TextFormField(
                  controller: txtCorreo,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: "Correo ",
                      hintText: ""),
                ),
                TextFormField(
                  controller: txtTipoSangre,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.bloodtype),
                      labelText: "Tipo de sangre ",
                      hintText: "A/O/AB"),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context); //cierra la ventana
            },
            backgroundColor: Colors.white,
            foregroundColor: Colors.brown,
            child: const Icon(Icons.save),
          ),
        );
      });
}
