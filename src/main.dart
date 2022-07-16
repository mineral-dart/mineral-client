import 'package:mineral/api.dart';
import 'package:mineral/core.dart';

import 'guard/guard.dart';
import 'voice/voice.dart';

void main () async {
  Kernel kernel = Kernel()
    ..modules.add(Guard())
      .add(VoiceModule())
    ..intents = [Intent.all];

  await kernel.init();
}
