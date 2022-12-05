import 'dart:async';
import 'package:app_upeu/local/dao/ResultadoDao.dart';
import 'package:app_upeu/models/ResultadoModelo.dart';
import 'package:app_upeu/util/NetworConnection.dart';
import 'package:dio/dio.dart';

class ResultadoRepository {
  ResultadoLocate resultadoLocal;
  bool result;

  ResultadoRepository() {
    Dio _dio = Dio();
    _dio.options.headers["Content-Type"] = "application/json";
    resultadoLocal = ResultadoLocate();
  }

  Future<List<ResultadoModelo>> getResultado() async {
    return await resultadoLocal.getAllResultado();
  }

  Future<MsgModelo> deleteResultado(int id) async {
    return await resultadoLocal.deleteResultado(id);
  }

  Future<MsgModelo> updateResultado(int id, ResultadoModelo resultadom) async {
    return await resultadoLocal.updateResultado(resultadom);
  }

  Future<MsgModelo> createResultado(ResultadoModelo resultado) async {
    return await resultadoLocal.createResultado(resultado);
  }
}
