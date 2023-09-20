import 'package:equatable/equatable.dart';

class ModelCategory extends Equatable {
  const ModelCategory(
      {required this.title, required this.imgPath, required this.indexPositon});

  final String title;
  final String imgPath;
  final int indexPositon;

  @override
  // TODO: implement props
  List<Object?> get props => throw [title, imgPath, indexPositon];
}
