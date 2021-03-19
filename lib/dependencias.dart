import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/data/local/persistent_storage_local_impl.dart';
import 'package:reactiva/data/persistent_storage_repository.dart';

List<RepositoryProvider> buildRepositories() {
  return [
    RepositoryProvider<PersistentStorageRepository>(
        create: (_) => PersistentStorageLocalImpl()),
  ];
}
