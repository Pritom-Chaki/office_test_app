//
// Generated file. Do not edit.
//

// ignore_for_file: directives_ordering
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter_facebook_auth_web/flutter_facebook_auth_web.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';
import 'package:package_info_plus_web/package_info_plus_web.dart';
import 'package:video_player_web/video_player_web.dart';
import 'package:wakelock_web/wakelock_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  FlutterFacebookAuthPlugin.registerWith(registrar);
  GoogleSignInPlugin.registerWith(registrar);
  PackageInfoPlugin.registerWith(registrar);
  VideoPlayerPlugin.registerWith(registrar);
  WakelockWeb.registerWith(registrar);
  registrar.registerMessageHandler();
}
