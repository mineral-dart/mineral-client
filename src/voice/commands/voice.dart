import 'package:mineral/core.dart';
import 'package:mineral/api.dart';

import '../../constants.dart';

@Command(name: 'voice', description: 'Voice command description', scope: 'GUILD')
class Voice extends MineralCommand {
  @Subcommand(name: 'clear', description: 'Remove empty channels')
  Future<void> clear (CommandInteraction interaction) async {
    interaction.guild?.channels.cache.forEach((key, channel) async {
      if (channel.parent?.id == Categories.voices && channel is VoiceChannel) {
        await channel.delete();
      }
    });
  }
}
