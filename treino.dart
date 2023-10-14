import 'dart:io';
import 'dart:math';

import 'personagem.dart';
import 'status.dart';

void main() {
  //final input = stdin.readLineSync();
  //stdout.writeln(input);

  Personagem personagem = Personagem.criarFicha();
  stdout.write(personagem.toString());
  print('\n');
  Personagem personagem2 = Personagem.criarFicha();
  stdout.write(personagem2.toString());
  print('\n');

  for (int i = 0; i < 100; i++) {
    final personagemAtacante = i.isEven ? personagem : personagem2;
    final personagemDefensor = i.isEven ? personagem2 : personagem;
    final rnd = Random().nextInt(30);
    final danoCausado =
        rnd + personagemAtacante.status.dano - personagemDefensor.status.defesa;
    final vidaPersonagem = personagemDefensor.status.vida - danoCausado;
    if (i.isEven) {
      personagem2 = personagem2.copyWith(
          status: personagem2.status.copyWith(vida: vidaPersonagem));
    } else {
      personagem.copyWith(
          status: personagem.status.copyWith(vida: vidaPersonagem));
    }

    print(
        '\n${personagemAtacante.nome} causou $danoCausado($rnd) ao ${personagemDefensor.nome}');
    if (vidaPersonagem <= 0) {
      print('${personagemDefensor.nome} Morreu!!');
      return;
    }
    print('${personagemDefensor.nome} ficou com $vidaPersonagem de vida');
  }
}
