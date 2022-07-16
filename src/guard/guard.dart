import 'package:mineral/core.dart';

import 'events/accept_rules.dart';

@Module(identifier: 'guard', label: 'Guard module')
class Guard extends MineralModule {
  @override
  List<MineralCommand> commands = [];

  @override
  List<MineralEvent> events = [
    AcceptRules()
  ];

  @override
  List<MineralStore> stores = [];
}
