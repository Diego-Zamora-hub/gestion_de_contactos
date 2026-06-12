import 'dart:io';

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

void eliminarContacto(List<Map<String, dynamic>> contactos) {
  stdout.write("Ingrese el id del contacto a eliminar: ");
  int id = int.parse(stdin.readLineSync().toString());
  contactos.removeWhere((x) => x['id'] == id);
  stdout.writeln("Contacto eliminado correctamente.");
}

void mostrarOrdenAlfabetico(List<Map<String, dynamic>> contactos) {
  contactos.sort((a, b) => a['nombre'].compareTo(b['nombre']));
  mostrarcontactos(contactos);
}
