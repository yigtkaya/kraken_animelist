import 'package:equatable/equatable.dart';

abstract class CharactersEvent extends Equatable {
  const CharactersEvent();

  @override
  List<Object> get props => [];
}

class OpenPageEvent extends CharactersEvent {
  final int id;

  const OpenPageEvent(this.id);
}
