import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).colorScheme; // busca el tema dentro del contexto

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImmageBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImmageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //* MediaQuery nos da info del celular que esta corriendo el dispositivo
    final size = MediaQuery.of(context).size; //* en este caso me da la medida del dispositivo

    return ClipRRect(
        //? Permite hacer bordes redondeados
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
            'https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif',
            width: size.width * 0.7,
            height: 150,
            fit: BoxFit.cover,
        ),
    );
  }
}
