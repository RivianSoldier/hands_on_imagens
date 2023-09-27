import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hasImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagens + StatefulWidget'),
      ),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  hasImage = true;
                });
              },
              child: SizedBox(
                  height: 300,
                  width: 300,
                  child: hasImage
                      ? Image.asset('assets/imagens/foto.jpeg')
                      : const Text('Clique aqui para adicionar uma imagem')),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Resetar Imagem'),
          )
        ],
      ),
    );
  }
}







// ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: isActive ? Colors.blue : Colors.yellow,
//         ),
//         child: const Text('Esse é um botão'),
//         onPressed: () {
//           setState(() {
//             isActive = !isActive;
//           });
//         },
//       ),