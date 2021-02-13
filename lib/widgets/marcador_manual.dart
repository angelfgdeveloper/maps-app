part of 'widgets.dart';

class MarcadorManual extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusquedaBloc, BusquedaState>(
      builder: (context, state) {
        if ( state.seleccionManual ) {
          return _BuildMarcadorManual();
        } else {
          return Container();
        }
      },
    );
  }
}

class _BuildMarcadorManual extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [

        // Boton regresar
        Positioned(
          top: 70.0,
          left: 20.0,
          child: FadeInLeft(
            duration: Duration(milliseconds: 150),
            child: CircleAvatar(
              maxRadius: 25.0,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black87),
                onPressed: () {
                  BlocProvider.of<BusquedaBloc>(context).add( OnDesactivarMarcadorManual() );
                },
              ),
            ),
          )
        ),

        Center(
          child: Transform.translate(
            offset: Offset(0, -12),
            child: BounceInDown(
              from: 200.0,
              child: Icon(Icons.location_on, size: 50)
            )
          ),
        ),

        // Boton de confirmar destino
        Positioned(
          bottom: 70.0,
          left: 40.0,
          child: FadeIn(
            child: MaterialButton(
              minWidth: width - 120,
              child: Text('Confirmar destino', style: TextStyle(color: Colors.white )),
              color: Colors.black,
              shape: StadiumBorder(),
              elevation: 0.0,
              splashColor: Colors.transparent,
              onPressed: () {
                // TODO: Confirmar destino
              }
            ),
          )
        ),

      ],
    );
  }
}