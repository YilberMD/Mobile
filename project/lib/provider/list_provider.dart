import 'package:flutter/material.dart';
import 'package:project/model/pago.dart';
import 'package:project/model/registros.dart';
import 'package:project/model/producto.dart';

class ListProvider {
  static Widget showList(List<dynamic> data, BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                data[index].nombre!,
              ),
              subtitle: Text(
                data[index].apellido!,
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index].image!)),
              onTap: () {
                showDialogFirebase(context, data[index]);
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
            )
          ],
        );
      },
    );
  }
}

void showDialogFirebase(BuildContext context, Registros registro) {
  String fullName = '${registro.nombre!} ${registro.apellido!}';
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(fullName),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(image: NetworkImage(registro.image!)),
            const SizedBox(height: 10.0),
            _getRow("Celular:  ", "${registro.celular}"),
            _getRow("Licencia:  ", "${registro.dni}"),
            const SizedBox(height: 10.0),
            _getCardProducto(registro.producto!),
            const SizedBox(height: 10.0),
            _getCardPago(registro.pago!),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cerrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Row _getRow(String title, String value) {
  return Row(
    children: <Widget>[
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ],
  );
}

Column _getCardProducto(Producto producto) {
  return Column(
    children: <Widget>[
      const Text("Producto",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      _getRow("Nombre:  ", "$producto.nombre}"),
      _getRow("Codigo:  ", "${producto.codigob}"),
       _getRow("Descripcion:  ", "${producto.descripcion}"),
      _getRow("Precio:  ", "${producto.precio}"),
      _getRow("Stock:  ", "${producto.stock}"),
    ],
  );
}

Column _getCardPago(Pago pago) {
  return Column(
    children: <Widget>[
      const Text("Pago",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      _getRow("Efectivo:  ", "${pago.efectivo}"),
      _getRow("Credito:  ", "${pago.credito}"),
      _getRow("Giro:  ", "${pago.giro}"),
    ],
  );
}