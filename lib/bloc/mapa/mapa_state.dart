part of 'mapa_bloc.dart';

@immutable
class MapaState {

  final bool mapaListo;

  MapaState({
    this.mapaListo = false
  });

  MapaState copywith({
    bool mapaListo
  }) => new MapaState(
    mapaListo: mapaListo ?? this.mapaListo
  );

}
