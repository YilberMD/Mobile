class Producto {
  final String? nombre;
  final int? codigob;
  final String? descripcion;
  final int? precio;
  final int? stock;
  

  Producto({this.nombre,this.codigob,this.descripcion,
      this.precio,this.stock});
      
  factory Producto.fromJson(Map<Object?, dynamic> json ){
    return Producto(
      nombre:   json['nombre'],
      codigob:  json['codigob'],
      descripcion: json['descripcion'],
      precio:   json['precio'],
      stock:    json['stock']
    );

  }

 /*  Map<String, dynamic> toJson()   {
    final Map<String, dynamic> db = new Map<String, dynamic>();
    db['nombre'] = this.nombre;
    db['codigob']= this.codigob;
    db['descripcion']= this.descripcion;
    db['precio']= this.precio;
    db['stock']= this.stock;
    return db;
  } */

 /*  @override
  String toString() {
    return 'Productos \nnombre: $nombre, \ncodigo: $codigob, \ndescripcion: $descripcion, \nprecion: $precio, \nstock: $stock';
  } */
      
      
      }