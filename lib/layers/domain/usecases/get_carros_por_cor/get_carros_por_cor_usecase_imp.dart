import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUsecaseImp implements GetCarrosPorCorUsecase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'AAA-3322', qPortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'BBB-4411', qPortas: 2, valor: 2000.00);
  }
}
