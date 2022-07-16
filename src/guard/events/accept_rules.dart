import 'package:mineral/core.dart';
import 'package:mineral/api.dart';

import '../../constants.dart';

@Event(Events.acceptRules)
class AcceptRules extends MineralEvent {
  Future<void> handle (GuildMember member) async {
    final role = member.guild.roles.cache.get(Roles.member);
    if (role != null) {
      await member.roles.add(role.id);
    }
  }
}
