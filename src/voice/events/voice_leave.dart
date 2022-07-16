import 'package:mineral/core.dart';
import 'package:mineral/api.dart';

import '../../constants.dart';

@Event(Events.voiceDisconnect)
class VoiceLeave extends MineralEvent {
  Future<void> handle (GuildMember member, VoiceChannel channel) async {
    if (channel.id != Channels.createVoiceChannel && channel.parent?.id == Categories.voices) {
      await channel.delete();
    }
  }
}
