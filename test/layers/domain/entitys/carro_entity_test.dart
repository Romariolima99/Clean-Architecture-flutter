import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'AAA0000', qPortas: 2, valor: 1000.00,);
    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'AAA0000', qPortas: 2, valor: 1000.00,);
    expect(carroEntity.qPortas, 2);
  });
  test('Espero que o valor real seja 2000.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'AAA0000', qPortas: 2, valor: 1000.00,);
    var result = 2000.00;
    expect(carroEntity.valorReal, result);
  });
  test('Espero que o valor real seja 0.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'AAA0000', qPortas: 0, valor: 1000.00,);
    var result = 0.00;
    expect(carroEntity.valorReal, result);
  });

  test('Espero que o valor seja 30000.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'AAA0000', qPortas: 2, valor: 15000.00,);
    var result = 30000.00;
    carroEntity.setValorCarro();
    expect(carroEntity.valor, result);
  });



}
