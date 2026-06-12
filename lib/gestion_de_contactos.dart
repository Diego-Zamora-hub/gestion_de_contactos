import 'dart:io';

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

void registrarContacto(List<Map<String, dynamic>> contactos) {
  stdout.write("Ingrese el id del contacto: ");
  int id = int.parse(stdin.readLineSync().toString());
  stdout.write("Ingrese el nombre del contacto: ");
  String nombre = stdin.readLineSync().toString();
  stdout.write("Ingrese el teléfono del contacto: ");
  String telefono = stdin.readLineSync().toString();
  stdout.write("Ingrese el correo del contacto: ");
  String correo = stdin.readLineSync().toString();
  stdout.write("Ingrese la ciudad del contacto: ");
  String ciudad = stdin.readLineSync().toString();
  contactos.add({
    "id": id,
    "nombre": nombre,
    "telefono": telefono,
    "correo": correo,
    "ciudad": ciudad,
  });
}

void mostrarcontactos(List<Map<String, dynamic>> contactos) {
  for (var x in contactos) {
    stdout.writeln("ID: ${x['id']}");
    stdout.writeln("Nombre: ${x['nombre']}");
    stdout.writeln("Teléfono: ${x['telefono']}");
    stdout.writeln("Correo: ${x['correo']}");
    stdout.writeln("Ciudad: ${x['ciudad']}");
    stdout.writeln("--------------");
  }
}

void buscarPorId(List<Map<String, dynamic>> contactos) {
  stdout.write("Ingrese el id del contacto a buscar: ");
  int id = int.parse(stdin.readLineSync().toString());
  for (var x in contactos) {
    if (x['id'] == id) {
      stdout.writeln("ID: ${x['id']}");
      stdout.writeln("Nombre: ${x['nombre']}");
      stdout.writeln("Teléfono: ${x['telefono']}");
      stdout.writeln("Correo: ${x['correo']}");
      stdout.writeln("Ciudad: ${x['ciudad']}");
      stdout.writeln("--------------");
    }
  }
}

void buscarPorNombre(List<Map<String, dynamic>> contactos) {
  stdout.write("Ingrese el nombre del contacto a buscar: ");
  String nombre = stdin.readLineSync().toString();
  for (var x in contactos) {
    if (x['nombre'] == nombre) {
      stdout.writeln("ID: ${x['id']}");
      stdout.writeln("Nombre: ${x['nombre']}");
      stdout.writeln("Teléfono: ${x['telefono']}");
      stdout.writeln("Correo: ${x['correo']}");
      stdout.writeln("Ciudad: ${x['ciudad']}");
      stdout.writeln("--------------");
    }
  }
}

void buscarPorCiudad(List<Map<String, dynamic>> contactos) {
  stdout.write("Ingrese la ciudad del contacto a buscar: ");
  String ciudad = stdin.readLineSync().toString();
  for (var x in contactos) {
    if (x['ciudad'] == ciudad) {
      stdout.write("ID: ${x['id']} ");
      stdout.writeln("Nombre: ${x['nombre']}");
    }
  }
}

void actualizartelefonoContacto(List<Map<String, dynamic>> contactos) {
  stdout.write("Ingrese el id del contacto a actualizar: ");
  int id = int.parse(stdin.readLineSync().toString());
  for (var x in contactos) {
    if (x['id'] == id) {
      stdout.write("Ingrese el nuevo teléfono del contacto: ");
      String telefono = stdin.readLineSync().toString();
      x['telefono'] = telefono;
      stdout.writeln("Teléfono actualizado correctamente.");
    }
  }
}
