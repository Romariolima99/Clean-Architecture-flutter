import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadePortas,
    required this.valorFinal,
  }) : super(placa: placa, qPortas: quantidadePortas, valor: valorFinal);

  Map toMap() {
    return {
      'placa': this.placa,
      'quantidadePortas': this.quantidadePortas,
      'valorFinal': this.valorFinal,
    };
  }

  static CarroDto  fronMap(Map map) {
    return CarroDto(
      placa: map['placa'],
      quantidadePortas: map['quantidadePortas'],
      valorFinal: map['valorFinal'],
    );
  }
}
