import 'dart:html';

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

final _keyForm = GlobalKey<FormState>();

_newContact(context, persona) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text("Nuevo contacto"),
            actions: [
              Form(
                  key: _keyForm,
                  child: Container(
                    child: Column(children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Ingresa el nombre de la persona',
                          labelText: 'Name *',
                        ),
                      ),
                    ]),
                  ))
            ],
          ));

  final newContact = Persona("nuevo", "nuevo", "nuevo");

  persona.add(newContact);

  // print(persona[4].name);
}

/** _namePerson(){
  return TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Ingresa el nombre de la persona',
                  labelText: 'Name *',                
                ),
                validator: (value) => _validatorEmail(value)
  );
}

_validatorEmail(value){
  if(value == null){
    return "Ingresa un valor";
  }
}

_lastNamePerson(){
  return TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Ingresa el apellido de la persona',
                  labelText: 'Last  name *',                
                )
  );
}

_phonePerson(){
  return TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Ingresa el numero de telefono',
                  labelText: 'Phone',                
                ),
  );
}



 _addContact(){
   return ElevatedButton(
      onPressed: () {
        // devolverá true si el formulario es válido, o falso si
        // el formulario no es válido.
        if (_keyForm.currentState == true) {
          // Si el formulario es válido, queremos mostrar un Snackbar
          print("hola mundo");
        }
        else{
          print("bye mundo");
        }
      },
      child: Text('Login'),
    );

 } */

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
