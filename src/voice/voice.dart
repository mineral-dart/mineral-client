import 'package:mineral/core.dart';

import 'commands/voice.dart';
import 'events/voice_join.dart';
import 'events/voice_leave.dart';

@Module(identifier: 'voice', label: 'Voice module')
class VoiceModule extends MineralModule {
  @override
  List<MineralCommand> commands = [
    Voice()
  ];

  @override
  List<MineralEvent> events = [
    VoiceJoin(),
    VoiceLeave(),
  ];

  @override
  List<MineralStore> stores = [];
}
