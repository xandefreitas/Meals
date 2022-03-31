enum Complexity {
  SIMPLE,
  MEDIUM,
  DIFFICULT,
}
enum Cost {
  CHEAP,
  FAIR,
  EXPENSIVE,
}

class Meal {
  final int duration;
  final bool isVegan;
  final bool isVegetarian;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.duration,
    required this.isVegan,
    required this.isVegetarian,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.categories,
    required this.ingredients,
    required this.steps,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.SIMPLE:
        return 'Simples';
      case Complexity.MEDIUM:
        return 'Normal';
      case Complexity.DIFFICULT:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.CHEAP:
        return 'Barato';
      case Cost.FAIR:
        return 'Justo';
      case Cost.EXPENSIVE:
        return 'Caro';
      default:
        return 'Desconhecido';
    }
  }
}
