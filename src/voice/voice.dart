import 'package:mineral/core.dart';

@Module(identifier: 'voice', label: 'Voice module')
class Voice extends MineralModule {
  @override
  List<MineralCommand> commands = [];

  @override
  List<MineralEvent> events = [];

  @override
  List<MineralStore> stores = [];
}
  