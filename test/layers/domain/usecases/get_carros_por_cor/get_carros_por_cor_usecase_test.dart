import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'AAA1122', qPortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'BBB5566', qPortas: 2, valor: 2000.00);
  }
}

void main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUsecase useCase = GetCarrosPorCorUsecaseImp(GetCarrosPorCorRepositoryImp(),);
    var result = useCase('azul');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar uma carro de quatro portas quando vermelho', () {
    GetCarrosPorCorUsecase useCase = GetCarrosPorCorUsecaseImp(GetCarrosPorCorRepositoryImp(),);
    var result = useCase('vermelho');
    expect(result.qPortas, 4);
  });

  test(
      'Deve retornar uma carro de duas portas quando qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUsecase useCase = GetCarrosPorCorUsecaseImp(GetCarrosPorCorRepositoryImp(),);
    var result = useCase('verde');
    expect(result.qPortas, 2);
  });
}
