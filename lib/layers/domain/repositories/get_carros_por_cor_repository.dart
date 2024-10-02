import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';

abstract class GetCarrosPorCorRepository{
  CarroEntity call (String cor);

}