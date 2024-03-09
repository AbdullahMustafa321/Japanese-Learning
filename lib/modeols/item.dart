import 'package:audioplayers/audioplayers.dart';

class Item {
  final String? image;
  final String enName;
  final String chName;
  final String sound;

  const Item({
    this.image,
    required this.enName,
    required this.chName,
    required this.sound,
  });

  PlaySound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound!));
  }
}
