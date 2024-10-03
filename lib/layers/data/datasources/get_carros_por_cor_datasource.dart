import 'package:clean_arquiteture/layers/data/dto/carro_dto.dart';

abstract class GetCarrosPorCorDatasource {

  CarroDto call(String cor);
}