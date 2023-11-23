import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Hello, World!'),
            backgroundColor: Colors.deepPurple),
        body: const Center(
          child: Text('Hello, World!'),
        ),
        backgroundColor: Colors.deepPurple[100],
      ),
    ),
  );
}

/// Basic Material App, with a centered text widget.
///
// void main() {
//   runApp(
//     const MaterialApp(
//       home: Center(
//         child: Text('Hello, World!'),
//       ),
//     ),
//   );
// }


/// Scaffold
/// 
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//             title: const Text('Hello, World!'),
//             backgroundColor: Colors.deepPurple),
//         body: const Center(
//           child: Text('Hello, World!'),
//         ),
//         backgroundColor: Colors.deepPurple[100],
//       ),
//     ),
//   );
// }


  

