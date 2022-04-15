// import 'package:flutter/material.dart';
// import 'package:foodcommerce/models/models.dart';
part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable {
  const WishlistState();
  
  @override
  List<Object> get props => [];
}

class WishlistLoading extends WishlistState {}
class WishlistLoaded extends WishlistState {
  final Wishlist wishlist;
  const WishlistLoaded({this.wishlist = const Wishlist()});
}
class WishlistError extends WishlistState {}

