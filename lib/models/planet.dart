import '../core/app_assets.dart';

class Planet {
  String name;
  String imagePath;
  String title;
  String planet3dPath;
  String about;
  Planet(
      {required this.name,
      required this.imagePath,
      required this.title,
      required this.planet3dPath,
      required this.about});
  static List<String> plantsName = [
    'Sun',
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune'
  ];
  static List<String> plantsImagePath = [
    AppAssets.sun,
    AppAssets.mercury,
    AppAssets.venus,
    AppAssets.earth,
    AppAssets.mars,
    AppAssets.jupiter,
    AppAssets.saturn,
    AppAssets.uranus,
    AppAssets.neptune,
  ];
  static List<String> plantsTitle = [
    "The Sun: Our Solar System's Star",
    "Mercury: The Closest Planet",
    "Venus: Earth's Toxic Twin",
    "Earth: Our Blue Marble",
    "Mars: The Red Planet",
    "Jupiter: The Gas Giant",
    "Saturn: The Ringed Planet",
    "Uranus: The Tilted Planet",
    "Neptune: The Distant World"
  ];
  static List<String> plants3dPath = [
    AppAssets.sun3d,
    AppAssets.mercury3d,
    AppAssets.venus3d,
    AppAssets.earth3d,
    AppAssets.mars3d,
    AppAssets.jupiter3d,
    AppAssets.saturn3d,
    AppAssets.uranus3d,
    AppAssets.neptune3d,
  ];
  static List<String> aboutList = [
    "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    "Mercury is the closest planet to the Sun and the smallest in our solar system. It has a barren, rocky surface covered in craters due to constant asteroid impacts. With virtually no atmosphere to retain heat, Mercury experiences extreme temperature fluctuations, from scorching hot days to freezing cold nights. Despite its proximity to the Sun, ice has been discovered in permanently shadowed craters at its poles.",
    "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
    "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object."
  ];

  static Planet getPlanetDetails(int index) {
    return Planet(
        name: plantsName[index],
        imagePath: plantsImagePath[index],
        title: plantsTitle[index],
        planet3dPath: plants3dPath[index],
        about: aboutList[index]);
  }

  static int getPlanetsLength() {
    return plantsName.length;
  }
}
