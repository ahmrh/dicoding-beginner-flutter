class Manga {
  String name;
  String author;
  String description;
  String imageUrl;

  int totalChapter;

  List<String> genres;

  Manga({
    required this.name,
    required this.author,
    required this.description,
    required this.imageUrl,

    required this.totalChapter,
    required this.genres,
  });
}


var trendingMangaList = [
  Manga(
    name: 'Jujutsu Kaisen',
    author: 'Gege Akutami',
    description: 'Yuuji is a genius at track and field. But he has zero interest running around in circles, he\'s happy as a clam in the Occult Research Club. Although he\'s only in the club for kicks, things get serious when a real spirit shows up at school! Life\'s about to get really strange in Sugisawa Town #3 High School!',
    imageUrl: 'https://cdn.myanimelist.net/images/manga/3/210341l.jpg?_gl=1*14kulsl*_ga*Mjk5NDQxNjM4LjE2OTY4MTQwNjQ.*_ga_26FEP9527K*MTcwMTQyOTMwNy42LjEuMTcwMTQzMTE3MS41OC4wLjA.',

    totalChapter: 243,
    genres: ['Action', 'Supernatural', 'Drama', 'Tragedy'],
  ),

  Manga(
      name: 'One Piece',
      author: 'Eiichiro Oda',
      description: 'Gol D. Roger, a man referred to as the "Pirate King," is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the Pirate King is executed and the Great Age of Pirates begins.\n\nTwenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new Pirate King. Armed with just a straw hat, a small boat, and an elastic body, he sets out on a fantastic journey to gather his own crew and a worthy ship that will take them across the Grand Line to claim the greatest status on the high seas.',
      imageUrl: 'https://cdn.myanimelist.net/images/manga/3/250752l.jpg',

      totalChapter: 1100,
      genres: ['Action', 'Adventure', 'Comedy', 'Fantasy']
  ),


  Manga(
      name: 'Sousou no Frieren',
      author: 'Tsukasa Abe',
      description: 'The adventure is over but life goes on for an elf mage just beginning to learn what living is all about. Elf mage Frieren and her courageous fellow adventurers have defeated the Demon King and brought peace to the land. With the great struggle over, they all go their separate ways to live a quiet life. But as an elf, Frieren, nearly immortal, will long outlive the rest of her former party. How will she come to terms with the mortality of her friends? How can she find fulfillment in her own life, and can she learn to understand what life means to the humans around her? Frieren begins a new journey to find the answer.',
      imageUrl: 'https://cdn.myanimelist.net/images/manga/3/232121l.jpg?_gl=1*1319ys2*_ga*Mjk5NDQxNjM4LjE2OTY4MTQwNjQ.*_ga_26FEP9527K*MTcwMTQyOTMwNy42LjEuMTcwMTQzMTMzOC41MS4wLjA.',

      totalChapter: 117,
      genres: ['Adventure', 'Drama', 'Fantasy', 'Slice of Life']
  ),


  Manga(
    name: 'SPYxFAMILY',
    author: 'Tatsuya Endou',
    description: 'The master spy codenamed <Twilight> has spent most of his life on undercover missions, all for the dream of a better world. Yet one day he receives a particularly difficult order from command. For his mission, he must form a temporary family and start a new life?!',
    imageUrl: 'https://cdn.myanimelist.net/images/anime/1111/121262l.jpg',

    totalChapter: 90,
    genres: ['Action', 'Comedy', 'Romance', 'Slice of Life'],
  ),

  Manga(
    name: 'Attack on Titan',
    author: 'Hajime Isayama',
    description: 'Several hundred years ago, humans were nearly exterminated by Titans. Titans are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for pleasure rather than as a food source. A small percentage of humanity survived by walling themselves in a city protected by extremely high walls, even taller than the biggest of Titans. Flash forward to the present and the southern district of Shinganshina has not seen a Titan in over 100 years.\n\nTeenage boy Eren and his foster sister Mikasa witness something horrific as one of the outer district walls is damaged by a 60 meter (196.85 feet) Titan causing a breach in the wall. As the smaller Titans flood the city, the two kids watch in horror the tragic events that follow, as the Titans devour people unimpeded.\n\nEren vows that he will wipe out every single Titan and take revenge for all of mankind.',
    imageUrl: 'https://cdn.myanimelist.net/images/manga/2/37846l.jpg',

    totalChapter: 141,
    genres: ['Action', 'Fantasy', 'Psychological', 'Tragedy'],
  ),

];

var latestMangaList = [

  Manga(
      name: 'Sentai Daishikkaku',
      author: 'Negi Haruba',
      description: 'Thirteen years ago, suddenly the Villainous Army of evil appeared in their gigantic floating castle 10000 meters in the sky to invade Earth! The villainous army have reviving capabilities that make them immortal, making them a serious threat to humanity. To protect us against these invaders, the Divine Dragon Rangers, the Dragon Keepers, wield their miraculous powers and their weapons, Divine Tools, and continuously fight for our safety! The assault of the Villainous Army! The vigilance of the Dragon Keepers! Will they succeed in their conquest…? Find out in the action-packed superhero series of a lifetime!',
      imageUrl: 'https://mangadex.org/covers/7878c129-a33d-4bf9-b5d2-ff98cbe85bd6/1c7a6e58-e7b8-43d4-a873-75fbb59fb288.jpg.512.jpg',

      totalChapter: 119,
      genres: ['Action', 'Sci-Fi', 'Superhero', 'Comedy']
  ),

  Manga(
      name: 'The Archmage\'s Restaurant',
      author: 'Studio Inus',
      description: 'A man who was reincarnated in another world as a 9th class wizard and retired after saving the continent from a dragon war. He decides to open a small restaurant in the countryside, but his routine is anything but ordinary. On the second floor of his restaurant, there lives a black dragon who has transformed into a woman, named Rurin. She is greedy, cute and loyal to him, but also ignorant and clueless about the human world. They live a fun and warm life, serving customers, solving problems and growing violets in the garden.',
      imageUrl: 'https://mangadex.org/covers/91b67596-9bc3-48f5-8aad-02ff520fdfa9/e5a815d4-7a2b-4061-94f1-b6a18d008cc5.jpg.512.jpg',

      totalChapter: 7,
      genres: ['Slice of Life', 'Fantasy', 'Isekai', 'Comedy']
  ),

  Manga(
      name: 'SSS-Class Suicide Hunter',
      author: 'Shin Noah',
      description: 'In the mysterious, RPG dungeon-like Tower, Gongja Kim lives a mundane existence, envying all the star hunters. One day, his wish for more is granted with a legendary skill to copy others’ abilities… at the cost of his life. Before he can make sense of it, he’s killed by the #1 hunter, the Flame Emperor! But this activates his skill and now he’s copied a new one, the ability to travel back in time upon death.\n\nHow will Gongja use these skills to outplay the competition and rise to the top?',
      imageUrl: 'https://mangadex.org/covers/4a973243-952e-44d7-a50f-883b4b7c9cc2/7c58c258-f304-4c73-b7d9-2663063ce144.jpg.512.jpg',

      totalChapter: 101,
      genres: ['Action', 'Fantasy', 'Psychological', 'Comedy', ]
  ),

];

var popularMangaList = [
  Manga(
    name: 'Berserk',
    author: 'Kentarou Miura',
    description: 'Guts, known as the Black Swordsman, seeks sanctuary from the demonic forces attracted to him and his woman because of a demonic mark on their necks, and also vengeance against the man who branded him as an unholy sacrifice. Aided only by his titanic strength gained from a harsh childhood lived with mercenaries, a gigantic sword, and an iron prosthetic left hand, Guts must struggle against his bleak destiny, all the while fighting with a rage that might strip him of his humanity.',
    imageUrl: 'https://cdn.myanimelist.net/images/manga/1/157897l.jpg',

    totalChapter: 375,
    genres: ['Gore', 'Military', 'Mythology', 'Psychological']
  ),

  Manga(
      name: 'Vagabond',
      author: 'Eiji Yoshikawa',
      description: 'Growing up in the late 16th century Sengoku era Japan, Shinmen Takezou is shunned by the local villagers as a devil child due to his wild and violent nature. Running away from home with a fellow boy at age 17, Takezo joins the Toyotomi army to fight the Tokugawa clan at the Battle of Sekigahara. However, the Tokugawa win a crushing victory, leading to nearly three hundred years of Shogunate rule. Takezo and his friend manage to survive the battle and afterwards swear to do great things with their lives. However, after their paths separate, Takezo becomes a wanted criminal and must change his name and his nature in order to escape an ignoble death.',
      imageUrl: 'https://cdn.myanimelist.net/images/manga/1/259070l.jpg?_gl=1*5qirhk*_ga*Mjk5NDQxNjM4LjE2OTY4MTQwNjQ.*_ga_26FEP9527K*MTcwMTQyOTMwNy42LjEuMTcwMTQyOTQyMi4yNy4wLjA.',

      totalChapter: 327,
      genres: ['Action', 'Adventure', 'Drama', 'Historical']
  ),


  Manga(
      name: 'Monster',
      author: 'Naoki Urasawa',
      description: 'Monster weaves the riveting story of brilliant Dr. Kenzo Tenma, a famous surgeon with a promising career at a leading hospital. Tenma risks his reputation and promising career to save the life of a critically wounded young boy. Unbeknownst to him, this child is destined for a terrible fate.\n\nA string of strange and mysterious murders begin to occur soon afterward, ones that professionally benefit Dr. Tenma, and he emerges as the primary suspect. Conspiracies, serial murders, and a scathing depiction of the underbelly of hospital politics are all masterfully woven together in this compelling manga thriller.',
      imageUrl: 'https://cdn.myanimelist.net/images/manga/3/258224l.jpg?_gl=1*iububv*_ga*Mjk5NDQxNjM4LjE2OTY4MTQwNjQ.*_ga_26FEP9527K*MTcwMTQyOTMwNy42LjEuMTcwMTQyOTc1NS41OS4wLjA.',

      totalChapter: 162,
      genres: ['Mystery', 'Drama', 'Crime', 'Psychological']
  ),

  Manga(
      name: 'Vinland Saga',
      author: 'Makoto Yukimura',
      description: 'As a child, Thorfinn sat at the feet of the great Leif Ericson and thrilled to wild tales of a land far to the west. But his youthful fantasies were shattered by a mercenary raid. Raised by the Vikings who murdered his family, Thorfinn became a terrifying warrior, forever seeking to kill the band\'s leader, Askeladd, and avenge his father. Sustaining Thorfinn through his ordeal are his pride in his family and his dreams of a fertile westward land, a land without war or slavery… the land Leif called Vinland.',
      imageUrl: 'https://cdn.myanimelist.net/images/manga/2/188925l.jpg',

      totalChapter: 207,
      genres: ['Action', 'Adventure', 'Drama', 'Psychological']
  ),

];

var newMangaList = [

  Manga(
      name: 'Once You Know the True Meaning',
      author: 'Aki Konishi',
      description: 'At first glance, it\'s a four-panel comic that doesn\'t seem like much at all. However, when you read the last panel, the world changes completely!? When you turn the page, there is a newly drawn explanatory page. Mystery and horror that can be enjoyed by both children and adults. A collection of gems of short stories that will leave the world horrified by Aki Konishi, a master of 4-panel manga.',
      imageUrl: 'https://cdn.myanimelist.net/images/manga/1/292831l.jpg',

      totalChapter: 56,
      genres: ['Horror', 'Mystery']
  ),

  Manga(
      name: 'Sentai Daishikkaku',
      author: 'Negi Haruba',
      description: 'Thirteen years ago, suddenly the Villainous Army of evil appeared in their gigantic floating castle 10000 meters in the sky to invade Earth! The villainous army have reviving capabilities that make them immortal, making them a serious threat to humanity. To protect us against these invaders, the Divine Dragon Rangers, the Dragon Keepers, wield their miraculous powers and their weapons, Divine Tools, and continuously fight for our safety! The assault of the Villainous Army! The vigilance of the Dragon Keepers! Will they succeed in their conquest…? Find out in the action-packed superhero series of a lifetime!',
      imageUrl: 'https://mangadex.org/covers/7878c129-a33d-4bf9-b5d2-ff98cbe85bd6/1c7a6e58-e7b8-43d4-a873-75fbb59fb288.jpg.512.jpg',

      totalChapter: 119,
      genres: ['Action', 'Sci-Fi', 'Superhero', 'Comedy']
  ),

  Manga(
      name: 'The Archmage\'s Restaurant',
      author: 'Studio Inus',
      description: 'A man who was reincarnated in another world as a 9th class wizard and retired after saving the continent from a dragon war. He decides to open a small restaurant in the countryside, but his routine is anything but ordinary. On the second floor of his restaurant, there lives a black dragon who has transformed into a woman, named Rurin. She is greedy, cute and loyal to him, but also ignorant and clueless about the human world. They live a fun and warm life, serving customers, solving problems and growing violets in the garden.',
      imageUrl: 'https://mangadex.org/covers/91b67596-9bc3-48f5-8aad-02ff520fdfa9/e5a815d4-7a2b-4061-94f1-b6a18d008cc5.jpg.512.jpg',

      totalChapter: 7,
      genres: ['Slice of Life', 'Fantasy', 'Isekai', 'Comedy']
  ),

];
