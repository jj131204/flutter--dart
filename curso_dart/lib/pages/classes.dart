import 'package:flutter/material.dart';

class Apis extends StatefulWidget {
  const Apis({super.key});

  @override
  State<Apis> createState() => _ApisState();
}

class _ApisState extends State<Apis> {
  /** 1 */
  Empresa _facebook = new Empresa("facebook", "mark suckerberg", 50000000);

  /** 2 */
  List<Persona> _personas = [
    Persona("Juan José", "Arteta", "+57 310 729 99 67"),
    Persona("Anny", "Arteta", "+57 310 729 99 67"),
    Persona("Juan Octavio", "Arteta", "+57 301 346  99 06"),
    Persona("Maria", "Arteta", "+57 300 497 42 04"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contactos de personas"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              /** Lista de contactos */
              child: ListView.builder(
                  itemCount: _personas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      /** SI SE MANTIENE PRESIONADO SE EJECUTA. */
                      onLongPress: () {
                        _borrarPersonas(context, _personas[index]);
                      },
                      title: Text(_personas[index].name +
                          ' ' +
                          _personas[index].lastName),
                      subtitle: Text(_personas[index].phone),
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text(
                          _personas[index].name.substring(0, 1),
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  }),
            ),
            /** Boton para agregar contacto. */
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _newContact(context, _personas);
                  });
                },
                child: Text("Agregar contacto")),
          ],
        ),
      ),
    );
  }

  _borrarPersonas(context, Persona persona) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: Text("Eliminar contacto"),
                content: Text(
                    "¿Estas seguro de querer eliminar a " + persona.name + "?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancelar",
                        style: TextStyle(color: Colors.blue),
                      )),
                  TextButton(
                      onPressed: () {
                        print(persona.name);

                        setState(() {
                          this._personas.remove(persona);
                        });

                        Navigator.pop(context);
                      },
                      child: Text(
                        "Borrar",
                        style: TextStyle(color: Colors.red),
                      )),
                ]));
  }
}

_newContact(context, persona) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text("Nuevo contacto"),
            actions: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What do people call you?',
                  labelText: 'Name *',
                
                
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                  
                },
                validator: (String? value) {
                  print(value);
                },

              )
            ],
          ));

  final newContact = Persona("nuevo", "nuevo", "nuevo");

  persona.add(newContact);

  // print(persona[4].name);
}

class Persona {
  String name;
  String lastName;
  String phone;
  /** si no se van a hacer operaciones matematicaas se recomineda crear la variables como string */

  Persona(this.name, this.lastName, this.phone);
}

/** 1 */
/** por convención las clases inician con mayusculas. */
class Empresa {
  /** propiedades de la clase */
  String nombre;
  String propietario;
  int ingresoAnual;

  /** Variables del metodo  (No son las mismas) */
  Empresa(this.nombre, this.propietario, this.ingresoAnual);
}
