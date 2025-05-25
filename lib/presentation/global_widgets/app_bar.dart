import 'package:aafiqah_portfolio/core/index.dart';
import 'package:flutter/material.dart';

class AppBarPortfolio extends StatelessWidget {
  const AppBarPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.sizeOf(context).width;

    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Row(
        children: [
          AppLogo(),
          Spacer(),
          AppMenus(),
          if (sizeWidth > 900) Spacer(),
          AppLanguageToggle(),
          AppThemeToggle(),
        ],
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Portfolio', style: context.textStyle.titleLgBold);
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.sizeOf(context).width;
    return sizeWidth > 900
        ? Row(
          spacing: 120,
          children: [
            Text(context.languageTexts.home),
            Text(context.languageTexts.aboutMe),
            Text(context.languageTexts.portfolio),
            Text(context.languageTexts.contact),
          ],
        )
        : PopupMenuButton(
          icon: Icon(Icons.menu_rounded),
          itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text(context.languageTexts.home)),
              PopupMenuItem(child: Text(context.languageTexts.aboutMe)),
              PopupMenuItem(child: Text(context.languageTexts.portfolio)),
              PopupMenuItem(child: Text(context.languageTexts.contact)),
            ];
          },
        );
  }
}

class AppLanguageToggle extends StatelessWidget {
  const AppLanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context).width;
    return PopupMenuButton(
      itemBuilder: (context) {
        return [PopupMenuItem(child: Text('English')), PopupMenuItem(child: Text('Malay'))];
      },
    );
  }
}

class AppThemeToggle extends StatelessWidget {
  const AppThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context).width;
    return Switch(value: false, onChanged: (value) {});
  }
}
