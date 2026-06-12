import 'dart:io';
import 'package:gestion_de_contactos/metodos.dart';

void menu() {
  stdout.writeln("======== Gestión de Contactos ======");
  stdout.writeln("1. Registrar Contacto");
  stdout.writeln("2. Mostrar Contactos");
  stdout.writeln("3. Actualizar teléfono de un contacto");
  stdout.writeln("0. Salir");
  stdout.write("Seleccione una opción: ");
}

void menubuscar(List<Map<String, dynamic>> contactos) {
  stdout.writeln("======== Submenú ======");
  stdout.writeln("1. mostrar todos.");
  stdout.writeln("2. buscar por id.");
  stdout.writeln("3. buscar por nombre.");
  stdout.writeln("4. buscar por ciudad.");
  stdout.writeln("0. Volver al menú principal");
  stdout.write("Seleccione una opción: ");
  int opcion2 = int.parse(stdin.readLineSync().toString());
  borrarpantalla();
  switch (opcion2) {
    case 1:
      mostrarcontactos(contactos);
    case 2:
      buscarPorId(contactos);
    case 3:
      buscarPorNombre(contactos);
    case 4:
      buscarPorCiudad(contactos);
    case 0:
      print("Volviendo al menú principal...");
    default:
      print("Opción no válida. Por favor, seleccione una opción válida.");
  }
}

void borrarpantalla() {
  stdout.write('\x1B[2J\x1B[0;0H\n');
}

void esperartecla() {
  stdout.write("Presione Enter para continuar...");
  stdin.readLineSync();
}
