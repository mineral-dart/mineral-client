import 'package:mineral/api.dart';
import 'package:mineral/core.dart';

import 'guard/guard.dart';

void main () async {
  Kernel kernel = Kernel()
    ..modules.add(Guard())
    ..intents = [Intent.all];

  await kernel.init();
}
