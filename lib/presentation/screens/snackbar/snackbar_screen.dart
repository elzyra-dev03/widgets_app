import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y dialogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                      children: [const Text("here are some licenses")],
                      context: context);
                },
                child: const Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text("Mostrar Dialogo"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showCustomSnackbar(context);
          },
          label: const Text("Mostrar Snackbar"),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("YUH"),
      duration: const Duration(seconds: 1),
      action: SnackBarAction(
          label: 'Ok!', onPressed: () => showCustomSnackbar(context)),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Seguro?"),
        content: const Text("aqui estan unas vainas"),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text("Cancelar")),
          FilledButton(
              onPressed: () => context.pop(), child: const Text("Aceptar"))
        ],
      ),
    );
  }
}
