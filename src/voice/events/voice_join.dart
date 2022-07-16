import 'package:mineral/core.dart';
import 'package:mineral/api.dart';

import '../../constants.dart';

@Event(Events.voiceConnect)
class VoiceJoin extends MineralEvent {
  Future<void> handle (GuildMember member, VoiceChannel? before, VoiceChannel after) async {
    if (after.id == Channels.createVoiceChannel) {
      final CategoryChannel? category = member.guild.channels.cache.get(Categories.voices);

      if (category != null) {
        await member.guild.channels.createVoiceChannel(
          label: member.user.username,
          categoryChannel: category,
        );
      }
    }
  }
}
