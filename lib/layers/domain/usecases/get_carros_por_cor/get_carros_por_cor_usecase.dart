import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';

abstract class GetCarrosPorCorUsecase {
  CarroEntity call(String cor);
}
