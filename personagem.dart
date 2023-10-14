import 'dart:io';

import 'status.dart';

class Personagem {
  final String nome;
  final Status status;

  Personagem({
    required this.nome,
    required this.status,
  });

  Personagem copyWith({
    String? nome,
    Status? status,
  }) {
    return Personagem(
      nome: nome ?? this.nome,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'nome: $nome \nstatus:\n${status.toString()}';
  }

  static Personagem criarFicha() {
    stdout.write('Digite o nome do personagem: ');
    final nome = stdin.readLineSync();

    stdout.write('Digite a vida do personagem: ');
    final vida = stdin.readLineSync();

    stdout.write('Digite a mana do personagem: ');
    final mana = stdin.readLineSync();

    stdout.write('Digite o dano do personagem: ');
    final dano = stdin.readLineSync();

    stdout.write('Digite a defesa do personagem: ');
    final defesa = stdin.readLineSync();

    final Status status = Status(
      vida: int.parse(vida ?? '0'),
      mana: int.parse(mana ?? '0'),
      dano: int.parse(dano ?? '0'),
      defesa: int.parse(defesa ?? '0'),
    );
    final Personagem personagem =
        Personagem(nome: nome ?? 'sem nome', status: status);
    return personagem;
  }
}
