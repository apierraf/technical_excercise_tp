import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tecnical_excercise_tp/features/configuration/widgets/chosse_lang.dart';

class ListSettings extends StatelessWidget {
  const ListSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      sections: [
        SettingsSection(
          tiles: [
            SettingsTile(
              title: Text(AppLocalizations.of(context)?.change_lang ?? ''),
              leading: const Icon(Icons.language),
              onPressed: (BuildContext context) {
                showDialog(
                  context: context,
                  builder: (context) => const ChosseLang(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
