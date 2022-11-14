import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final investMensal = TextEditingController();
  final anosDeInvestimento = TextEditingController();
  final rentabilidadeAnual = TextEditingController();
  final resultado = TextEditingController();
  final valorInvestido = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: _sizebox(),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: investMensal,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: anosDeInvestimento,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Anos de Investimento',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: rentabilidadeAnual,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Rentabilidade Anual',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: resultado,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Resultado',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _sizebox() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Text('R\$'),
        ],
      ),
    );
  }
}
