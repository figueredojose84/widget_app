import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        /* tooltip: 'Boton flotante', */
        child: const Icon(Icons.back_hand_outlined),
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 8.0,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                label: const Text('elevated icon')),
            FilledButton(onPressed: () {}, child: const Text("filled")),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new_outlined),
                label: const Text('filled icon')),
            OutlinedButton(
              onPressed: () {},
              child: const Text('outlined'),
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new_outlined),
                label: const Text('outlined icon')),
            TextButton(
              onPressed: () {},
              child: const Text('text'),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new_outlined),
                label: const Text('text icon')),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ad_units_outlined),
            ),
            CustomButton(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ad_units_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colors.primary),
                iconColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              'Custom Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
