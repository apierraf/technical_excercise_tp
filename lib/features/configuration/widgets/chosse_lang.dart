import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/core/enums/app_enums.dart';
import 'package:tecnical_excercise_tp/shared/locale/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:tecnical_excercise_tp/shared/network/dio_config.dart';

class ChosseLang extends ConsumerWidget {
  const ChosseLang({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var locale = ref.watch(localeControllersProvider);
    return AlertDialog(
      title: Text(AppLocalizations.of(context)?.chose_lang ?? ''),
      content: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.2,
        width: double.maxFinite,
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: LocaleType.values.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(index == 0 ? 'English' : 'Español'),
              onTap: () {
                ref
                    .read(localeControllersProvider.notifier)
                    .changeLocale(LocaleType.values[index].name);

                ref.invalidate(dioConfigProvider);
                context.pop();
              },
              trailing: locale == LocaleType.values[index].name
                  ? const Icon(Icons.check)
                  : null,
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(AppLocalizations.of(context)?.cancel ?? ''),
        ),
      ],
    );
  }
}
