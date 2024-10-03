import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_arquiteture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUsecase _getCarrosPorCorUsecase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;

  CarroController(
    this._getCarrosPorCorUsecase,
    this._salvarCarroFavoritoUsecase,
  ){
    getCarrosPorCor('Vermelho');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) {
     carro = _getCarrosPorCorUsecase(cor);
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUsecase(carro);
  }
}
