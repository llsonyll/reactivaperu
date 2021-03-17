class SubCategoriaTienda {
  const SubCategoriaTienda({
    this.idCategoria,
    this.idSubCategoria,
    this.nombreSubCategoria,
  });

  final int idCategoria;
  final int idSubCategoria;
  final String nombreSubCategoria;
}

List<SubCategoriaTienda> subCategorias = [
  SubCategoriaTienda(
      idCategoria: 0, idSubCategoria: 0, nombreSubCategoria: 'Pollerias'),
  SubCategoriaTienda(
      idCategoria: 0, idSubCategoria: 1, nombreSubCategoria: 'Pizzas'),
  SubCategoriaTienda(
      idCategoria: 0, idSubCategoria: 2, nombreSubCategoria: 'Chifas'),
  SubCategoriaTienda(
      idCategoria: 0, idSubCategoria: 3, nombreSubCategoria: 'Parrillas'),
  SubCategoriaTienda(
      idCategoria: 0, idSubCategoria: 4, nombreSubCategoria: 'Picanterias'),
  SubCategoriaTienda(
      idCategoria: 0, idSubCategoria: 5, nombreSubCategoria: 'Cevicherias'),
];
