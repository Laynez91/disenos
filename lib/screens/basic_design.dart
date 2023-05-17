import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //Imagen
        const Image(
          image: AssetImage('assets/landscape.jpg'),
        ),
        //Titulo
        const Title(),
        //Button section
        const ButtonSection(),
        //Descripción.
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
            'Aliqua do fugiat in quis ullamco ex nisi dolor mollit. Esse esse id do amet nostrud minim Lorem minim consectetur officia. Eu consectetur ea non in enim veniam minim nostrud dolore ad. Id ipsum aliqua sint aliquip esse cillum pariatur qui aute ipsum nisi culpa. Ea nulla laboris voluptate est reprehenderit et irure. Et proident irure ea ea. Et quis commodo magna non tempor.',
          ),
        )
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lae Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kanderstag, Switzerland',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.map, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 35,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
