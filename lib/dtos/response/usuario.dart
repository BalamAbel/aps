import 'dart:convert';

usuarioDtos usuariodtosFromJson(String str)=>
 usuarioDtos.fromJson(json.decode(str));

 String usuariodtosToJson(usuarioDtos data)=>
 jsonEncode(data.toJson());

 class usuarioDtos{
  usuarioDtos({
    required this.imageUsuario,
    required this.telefono,
    required this.nombreUsuario,
    required this.apellidoUsuario,
    required this.fechaNacimiento,
    required this.correo,
    required this.password,
    required this.roleUsuario
  });
  final String imageUsuario;
  final String telefono;
  final String nombreUsuario;
  final String apellidoUsuario;
  final DateTime fechaNacimiento;
  final String correo; 
  final String password;
  final String roleUsuario;


  factory usuarioDtos.fromMap(Map<String, dynamic> json)=>
  usuarioDtos(imageUsuario: json["imageUsuario"], 
  telefono: json["telefono"],
   nombreUsuario: json ["nombreUsuario"],
    apellidoUsuario: json ["apellidoUsuario"], 
    fechaNacimiento: json ["fechaNacimiento"], 
    correo: json ["correo"],
     password: json ["password"], 
     roleUsuario: json ["roleUsuario"],
  );
     factory usuarioDtos.fromJson(Map<String, dynamic> json)=>
  usuarioDtos(imageUsuario: json["imageUsuario"], 
  telefono: json["telefono"],
   nombreUsuario: json ["nombreUsuario"],
    apellidoUsuario: json ["apellidoUsuario"], 
    fechaNacimiento: json ["fechaNacimiento"], 
    correo: json ["correo"],
     password: json ["password"], 
     roleUsuario: json ["roleUsuario"],
  ); 

  Map<String, dynamic> toJson ()=>{
    "imageUsuario": imageUsuario,
    "telefono": telefono,
    "nombreUsuario": nombreUsuario,
    "apellidoUsuario": apellidoUsuario,
    "fechaNacimiento": fechaNacimiento,
    "correo": correo,
    "password": password,
    "roleUsuario": roleUsuario,

  };


 }