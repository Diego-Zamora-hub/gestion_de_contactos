import 'package:gestion_de_contactos/metodos.dart';
import 'package:gestion_de_contactos/menus.dart';
import 'dart:io';

void main() {
  List<Map<String, dynamic>> contactos = [];
  int opcion = 1;
  while (opcion != 0) {
    menu();
    opcion = int.parse(stdin.readLineSync().toString());
    borrarpantalla();
    switch (opcion) {
      case 1:
        registrarContacto(contactos);
      case 2:
        menubuscar(contactos);
      case 3:
        actualizartelefonoContacto(contactos);
      case 0:
        print("Saliendo del programa...");
      default:
        print("Opción no válida. Por favor, seleccione una opción válida.");
    }
    esperartecla();
    borrarpantalla();
  }
}
