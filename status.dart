class Status {
  final int vida;
  final int mana;
  final int dano;
  final int defesa;

  Status({
    required this.vida,
    required this.mana,
    required this.dano,
    required this.defesa,
  });

  Status copyWith({
    int? vida,
    int? mana,
    int? dano,
    int? defesa,
  }) {
    return Status(
      vida: vida ?? this.vida,
      mana: mana ?? this.mana,
      dano: dano ?? this.dano,
      defesa: defesa ?? this.defesa,
    );
  }

  @override
  String toString() {
    return '\tvida: $vida \n\tmana: $mana \n\tdano: $dano \n\tdefesa: $defesa';
  }
}
