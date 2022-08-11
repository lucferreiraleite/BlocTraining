import 'package:flutter/material.dart';
import 'package:flutter_counter/basic_bloc/blocs/imc.bloc.dart';

class AndroidApp extends StatefulWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  State<AndroidApp> createState() => _AndroidAppState();
}

void main() {
  runApp(const AndroidApp());
}

class _AndroidAppState extends State<AndroidApp> {
  var bloc = ImcBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Qual sua altura?',
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: bloc.heightControl,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              const Text(
                'Qual seu peso?',
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: bloc.weightControl,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bloc.calculator();
                  });
                },
                child: const Icon(Icons.apple),
              ),
              const SizedBox(height: 8),
              Text(
                bloc.result,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
