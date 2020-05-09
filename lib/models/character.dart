import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({this.name, this.imagePath, this.description, this.colors});
}

List characters = [
  Character(
      name: "Naruto",
      imagePath: "assets/images/naruto.png",
      description:
          'Naruto was born on the night of October 10th to Minato Namikaze (the Fourth Hokage) and Kushina Uzumaki (the second jinchūriki of the Nine-Tails). He was named after Naruto Musasabi, the protagonist of Jiraiya\'s first book, which made the Sannin his godfather.[14] The Third Hokage made special arrangements for Minato to preserve Kushina\'s seal containing the Nine-Tails while she gave birth to Naruto in a remote location, escorted by midwives and Anbu. A masked man, Tobi, tracked down their location, however, killed the midwives and Anbu, and captured Naruto, forcing Minato to quickly rescue him and teleport him to a safe house.',
      colors: [Colors.orange.shade200, Colors.deepOrange.shade800]),
  Character(
      name: "Sakura",
      imagePath: "assets/images/sakura.png",
      description:
          'Sakura is the only child of Mebuki and Kizashi Haruno. She had an ordinary childhood, raised by her parents without any serious tragedy or complication. When she entered Konoha\'s Academy, some of the girls in her class started picking on her because of her broad forehead. Sakura tried to combat their teasing by hiding her forehead with her bangs, but this proved to the other girls that it bothered her and caused them to tease her even more. Ino Yamanaka, one of her classmates, saw this, defended Sakura from her bullies, and encouraged her to embrace her forehead rather than hide it.',
      colors: [Colors.pink.shade200, Colors.redAccent.shade700]),
  Character(
      name: "Sasuke",
      imagePath: "assets/images/sasuke.png",
      description:
          'Sasuke is the second and youngest son of Mikoto and Fugaku Uchiha; they named him after Sasuke Sarutobi in the hopes that he would someday be just as strong of a shinobi.[9] Sasuke grew up in the shadow of his older brother, Itachi, a natural prodigy who many in the Uchiha clan and the village would constantly compare Sasuke and any of his accomplishments to. Sasuke himself adored Itachi, never passing up an opportunity to spend time with him. Although Itachi welcomed his company, letting Sasuke watch him train and taking him on adventures into the forests,[10] Itachi in return rarely helped Sasuke himself become a better shinobi; when asked, he would often instead poke Sasuke\'s forehead and promise to do so some other time. Sasuke found this annoying, but didn\'t allow it to blemish his high opinion of his brother.',
      colors: [Colors.blue.shade200, Color(0xFF131058)]),
  Character(
      name: "Obito",
      imagePath: "assets/images/obito.png",
      description:
          'Obito grew up not knowing who his parents were; in the anime, he was left in the care of his grandmother.[7] Feeling alone in the world, Obito dreamed of becoming Hokage so that the people of the village would acknowledge his existence.[8] He enrolled in the Academy to help him achieve that goal, where he developed a one-sided rivalry with Kakashi Hatake, whose natural talent and popularity he was jealous of. He also became a close friend of Rin Nohara, whom he eventually fell in love with. After finally graduating some years later, Obito, Rin, and Kakashi were placed on a team under the leadership of Minato Namikaze.',
      colors: [Colors.greenAccent.shade400, Colors.green.shade900]),
  Character(
      name: "Kakashi",
      imagePath: "assets/images/kakashi.png",
      description:
          'Because his mother died when he was very young,[13] Kakashi was raised during his early years by his father, Sakumo. Sakumo was famed throughout the shinobi world, having saved Konoha on at least one occasion; Kakashi in particular revered his father. During one of Sakumo\'s missions - after Kakashi was enrolled in Konoha\'s Ninja Academy - Sakumo made the decision to save the lives of his teammates rather than complete the assignment. The mission\'s failure had disastrous consequences for the Land of Fire, causing many in Konoha, including the teammates he saved, to vilify him for abandoning his duties. Disgraced, Sakumo committed suicide. Seeing what his father went through and determined not to make the same mistakes, Kakashi decided that following the Shinobi Rules must always take priority.',
      colors: [Colors.purple.shade400, Colors.deepPurple.shade900]),
];
