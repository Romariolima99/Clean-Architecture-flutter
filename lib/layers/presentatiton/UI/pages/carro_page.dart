import 'package:clean_arquiteture/layers/data/datasources/local/get_carros_por_local_datasource_imp.dart';
import 'package:clean_arquiteture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_arquiteture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_arquiteture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:clean_arquiteture/layers/presentatiton/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  CarroController controller = CarroController(
      GetCarrosPorCorUsecaseImp(
        GetCarrosPorCorRepositoryImp(
          GetCarrosPorLocalDatasourceImp(),
        ),
      ),
      SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp()
       )
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( padding: EdgeInsets.all(24),
      child: Text(controller.carro.placa),
      ),
    );
  }
}
