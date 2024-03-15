// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyVetor extends StatefulWidget {
  const MyVetor({super.key});

  @override
  State<MyVetor> createState() => _MyVetorState();
}

class _MyVetorState extends State<MyVetor> {

  List<int> vetor = [10,4,8,9,6,2];
  String textoVetor = "";
  String textoSoma = "";
  String textoMaior = "";
  String textoMenor = "";
  int soma = 0, maior = 0, menor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Vetores em Dart",), 
        backgroundColor: const Color.fromARGB(255, 226, 106, 226),
        centerTitle: true,
        ),
      body: Center(child: Column(children: [
         SizedBox(height: 20,),
         Text("Vetor:" + textoVetor, style: TextStyle(fontSize: 19),),
         SizedBox(height: 20,),
         ElevatedButton(onPressed: (){
          mostrar();
          setState(() {
            
          });
         },
         child: Text("Mostrar vetor", style: TextStyle(color: Color.fromARGB(255, 226, 106, 226)),)),
         SizedBox(height: 20,),
         Text("Soma do vetor:" + textoSoma, style: TextStyle(fontSize: 19),),
         SizedBox(height: 20,),
         ElevatedButton(onPressed: (){
          mostrarSoma();
          setState(() {
            
          });
         },
         child: Text("Mostrar a soma", style: TextStyle(color: Color.fromARGB(255, 226, 106, 226)),), style: ButtonStyle(),),
         SizedBox(height: 20,),
         Text("Maior do vetor:" + textoMaior, style: TextStyle(fontSize: 19),),
         SizedBox(height: 20,),
         ElevatedButton(onPressed: (){
          mostrarMaior();
          setState(() {
            
          });
         },
         child: Text("Mostrar menor", style: TextStyle(color: Color.fromARGB(255, 226, 106, 226)),)),
         SizedBox(height: 20,),
         Text("Menor do vetor:" + textoMenor, style: TextStyle(fontSize: 19),),
         SizedBox(height: 20,),
         ElevatedButton(onPressed: (){
          mostrarMenor();
          setState(() {
            
          });
         },
         child: Text("Mostrar menor", style: TextStyle(color: Color.fromARGB(255, 226, 106, 226)),)),
      ])
      ,)
    );
  }

  void mostrar()
  {
    textoVetor = "";
    for(int i = 0; i < vetor.length; i++)
    {
      textoVetor = textoVetor + " " + vetor[i].toString();
    }
  }

  void mostrarSoma()
  {
    soma = 0;
    textoSoma = "";
    for(int i = 0; i < vetor.length; i++)
    {
      soma +=vetor[i];
    }
    textoSoma = textoSoma + " " + soma.toString();
  }

  void mostrarMaior()
  {
    textoMaior = "";
    maior = vetor[0];
    for(int i = 0; i < vetor.length; i++)
    {
      if(maior < vetor[i]){
        maior = vetor[i];
      }
    }
    textoMaior = textoMaior + " " + maior.toString();
  }

  void mostrarMenor()
  {
    textoMenor = "";
    menor = vetor[0];
    for(int i = 0; i < vetor.length; i++)
    {
      if(menor > vetor[i]){
        menor = vetor[i];
      }
    }
    textoMenor = textoMenor + " " + menor.toString();
  }
}