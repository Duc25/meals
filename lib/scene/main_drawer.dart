import 'package:flutter/material.dart';
import 'package:meals/widget/drawer_item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
            ])),
            child: Row(
              children: [
                const Icon(
                  Icons.fastfood,
                  size: 48,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              ],
            ),
          ),
          DrawerItem(
            icon: Icons.restaurant,
            label: 'Meals',
            onTap: () {
              onSelectScreen('meals');
            },
          ),
          DrawerItem(
            icon: Icons.settings,
            label: 'Filter',
            onTap: () {
              onSelectScreen('filter');
            },
          ),
        ],
      ),
    );
  }
}
