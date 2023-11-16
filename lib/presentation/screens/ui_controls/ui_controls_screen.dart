import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UiControls(),
    );
  }
}

class _UiControls extends StatefulWidget {
  const _UiControls();

  @override
  State<_UiControls> createState() => _UiControlsState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsState extends State<_UiControls> {
  bool isDev = true;
  Transportation transport = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer mode"),
            subtitle: const Text("controles adicionales"),
            value: isDev,
            onChanged: (value) {
              isDev = value;
              setState(() {});
            }),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text(transport.toString()),
          children: [
            RadioListTile(
                title: const Text("Car"),
                subtitle: const Text("Viaje en carro"),
                value: Transportation.car,
                groupValue: transport,
                onChanged: ((value) {
                  transport = value!;
                  setState(() {});
                })),
            RadioListTile(
                title: const Text("Boat"),
                subtitle: const Text("Viaje en bote"),
                value: Transportation.boat,
                groupValue: transport,
                onChanged: ((value) {
                  transport = value!;
                  setState(() {});
                })),
            RadioListTile(
                title: const Text("Plane"),
                subtitle: const Text("Viaje en avión"),
                value: Transportation.plane,
                groupValue: transport,
                onChanged: ((value) {
                  transport = value!;
                  setState(() {});
                })),
            RadioListTile(
                title: const Text("Submarine"),
                subtitle: const Text("Viaje en submarino"),
                value: Transportation.submarine,
                groupValue: transport,
                onChanged: ((value) {
                  transport = value!;
                  setState(() {});
                })),
          ],
        ),
        CheckboxListTile(
            title: const Text("Desayuno"),
            value: wantsBreakfast,
            onChanged: (val) {
              wantsBreakfast = !wantsBreakfast;
              setState(() {});
            }),
        CheckboxListTile(
            title: const Text("Almuerzo"),
            value: wantsLunch,
            onChanged: (val) {
              wantsLunch = !wantsLunch;
              setState(() {});
            }),
        CheckboxListTile(
            title: const Text("Cena"),
            value: wantsDinner,
            onChanged: (val) {
              wantsDinner = !wantsDinner;
              setState(() {});
            }),
      ],
    );
  }
}
