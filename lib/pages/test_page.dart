import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final formKey = GlobalKey<FormState>();
  final investMensal = TextEditingController();
  final anosDeInvestimento = TextEditingController();
  final rentabilidadeAnual = TextEditingController();
  final resultado = TextEditingController();
  final valorInvestido = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 200, 251, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                    color: Color.fromRGBO(211, 211, 211, 1),
                  ),
                  child: Center(
                    child: Text(
                      'R\$',
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  child: Padding(
                    padding: EdgeInsets.all(1),
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
                ),
              ],
            ),
          ),
          Form(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                    color: Color.fromRGBO(211, 211, 211, 1),
                  ),
                  child: Center(
                    child: Text(
                      '%',
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: TextFormField(
                      controller: rentabilidadeAnual,
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
                ),
              ],
            ),
          ),
          Form(
            child: Container(
              height: 50,
              width: 250,
              child: Padding(
                padding: EdgeInsets.all(1),
                child: TextFormField(
                  controller: anosDeInvestimento,
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
            ),
          )
        ],
      ),
    );
  }
}
