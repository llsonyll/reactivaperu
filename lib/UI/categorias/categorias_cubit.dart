import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriaCubit extends Cubit<int> {
  CategoriaCubit() : super(0);

  void updateCategory(int idCategoria) => emit(idCategoria);
}
