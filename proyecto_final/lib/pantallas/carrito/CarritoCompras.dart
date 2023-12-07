import 'package:flutter/material.dart';
import 'package:proyecto_final/pantallas/carrito/carrito.dart';
import 'package:proyecto_final/pantallas/home/BarraNavegacion.dart';
import 'package:proyecto_final/pantallas/home/Inicio.dart';

class CarritoCompras extends StatelessWidget {
  makeitem(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(20),
          leading: Image.network(
            cart.productos[index].imagenUrl,
            height: double.infinity,
            width: 100,
            fit: BoxFit.contain,
          ),
          title: Text(cart.productos[index].nombre),
          trailing: Text("\$${cart.productos[index].precio.toStringAsFixed(2)}",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                if (cart.productos[index].cantidadEnCarrito > 0) {
                  // Reducir la cantidad en el carrito
                  cart.productos[index].cantidadEnCarrito--;
                  (context as Element).markNeedsBuild();
                }
              },
            ),
            Text(
              '${cart.productos[index].cantidadEnCarrito}', // Mostrar la cantidad en el carrito
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Aumentar la cantidad en el carrito
                cart.productos[index].cantidadEnCarrito++;
                (context as Element).markNeedsBuild();
              },
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (ctx, index) => makeitem(context, index),
        separatorBuilder: (ctx, index) => Divider(color: Colors.grey[300]),
        itemCount: cart.obtenerCantidadTotal(),
      ),
      bottomSheet: Container(
        child: ElevatedButton(
          onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentScreen()),
          );
          },
          child: Text(
            'Proceder al pago',
          ),
        ),
      ),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _expiryDateController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pago",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //validar datos tarjeta
              TextFormField(
                controller: _cardNumberController,
                keyboardType: TextInputType.number,
                maxLength: 16, // Limitar a 16 dígitos
                decoration: InputDecoration(
                  labelText: 'Número de tarjeta (16 digitos)',
                ),
                validator: (value) {
                  if (value!.isEmpty || value.length != 16) {
                    return 'Por favor, ingresa un número de tarjeta válido';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _expiryDateController,
                keyboardType: TextInputType.number,
                maxLength: 4, // Limitar a 4 dígitos
                decoration: InputDecoration(
                  labelText: 'Fecha de expiración (MM/YY)',
                ),
                validator: (value) {
                  if (value!.isEmpty || value.length != 4) {
                    return 'Por favor, ingresa una fecha de expiración válida';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _cvvController,
                keyboardType: TextInputType.number,
                maxLength: 3, // Limitar a 3 dígitos
                decoration: InputDecoration(
                  labelText: 'CVV',
                ),
                validator: (value) {
                  if (value!.isEmpty || value.length != 3) {
                    return 'Por favor, ingresa un CVV válido';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20), //pantalla confrmacion de pago
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentConfirmationScreen(),
                        ),
                      );
                    }
                  },
                  child: Text('Aceptar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//pantalla pago reali8zado
class PaymentConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pago Realizado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'El pago ha sido realizado',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _clearCart(); // Limpia el carrito segun
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => BarraNavegacion()));
              },
              child: Text('Regresar a Inicio'),
            ),
          ],
        ),
      ),
    );
  }

  // Función para vaciar el carrito
  void _clearCart() {
    cart.productos.clear();
  }
}
