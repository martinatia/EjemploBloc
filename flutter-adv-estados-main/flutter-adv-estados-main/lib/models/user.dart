

class User {
  
  final String nombre;
  final int edad;
  final List<String> profesiones;

  User({ 
    required this.nombre, 
    required this.edad, 
    required this.profesiones 
  });

  //regresará una nueva instancia del objeto user
  User copyWith({
    String? nombre,
    int? edad,
    List<String>? profesiones
  }) => User(
    /*si nombre viene con el copywith
    lo actualizo, caso contrario
    dejo el que estaba*/
    nombre: nombre ?? this.nombre, 
    edad: edad ?? this.edad, 
    profesiones: profesiones ?? this.profesiones);
    


}