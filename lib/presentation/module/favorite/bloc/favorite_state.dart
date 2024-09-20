part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteState extends Equatable {}

class FavoriteInitial extends FavoriteState {
  @override
  List<Object?> get props => [];
}

class GetAllFavoriteState extends FavoriteState {
  final List<Hotel> favorites;
  GetAllFavoriteState({required this.favorites});
  @override
  List<Object?> get props => [favorites, DateTime.now().microsecond];
}

class FavoriteErrorState extends FavoriteState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}
