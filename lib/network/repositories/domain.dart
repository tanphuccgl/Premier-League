import 'package:app/network/repositories/repository.dart';
import 'package:app/network/repositories/repository_impl.dart';
import 'package:app/network/repositories/repository_mock_impl.dart';

class Domain {
  static Domain? _internal;
  factory Domain() {
    _internal ??= Domain._();

    return _internal!;
  }

  late Repository repoMock;
  late Repository repo;

  Domain._() {
    repoMock = RepositoryMockImpl();
    repo = RepositoryImpl();
  }
}

class Endpoints {
  Endpoints._();

  static const String baseUrl = "http://localhost:9999/api";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // delay Mock
  static const int delayMock = 0;

  // endpoints

  static const String getClubModel = "$baseUrl/clubs/index";
  static const String getMatch = "$baseUrl/match/index";
  static const String getNewModel = "$baseUrl/news/index";
  static const String getPlayerModel = "$baseUrl/players/index";

  static const String getTableModel = "$baseUrl/table/index";
}
