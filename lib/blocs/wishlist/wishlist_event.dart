part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class StartWithlist extends WishlistEvent{}
class AddWithlistProduct extends WishlistEvent{
  final Product product;

  const AddWithlistProduct({required this.product});
   @override
  List<Object> get props => [product];
}

class RemoveWithlistProduct extends WishlistEvent{
  final Product product;

  const RemoveWithlistProduct({required this.product});
   @override
  List<Object> get props => [product];
}