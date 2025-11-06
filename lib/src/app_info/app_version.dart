import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    final IconData osLogo = Platform.isAndroid
        ? Icons.android_rounded
        : Platform.isIOS
        ? Icons.apple_rounded
        : Icons.code_rounded;

    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
        if (snapshot.hasData) {
          final String version = snapshot.data!.version;
          final String buildVersion = snapshot.data!.buildNumber;

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(osLogo, size: 20.0),
              ),
              Text(
                'v$version${kDebugMode ? ' ($buildVersion)' : ''}',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
