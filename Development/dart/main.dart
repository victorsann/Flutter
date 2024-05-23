class MainClassEntity {
  final String property;

  MainClassEntity(this.property);
}

class MapClass {
  String name;
  String age;
  String profession;

  MapClass(
    this.name,
    this.age,
    this.profession,
  );
}

class ChildClass extends MainClassEntity {
  MapClass myMap = MapClass(
    "Victor",
    "22",
    "",
  );

  ChildClass(super.property);
}

main() {
  final some = ChildClass("Hello World");

  if (some.myMap.profession.isEmpty) {
    some.myMap.profession = "Unemployed";
  }

  print(Map.from(some.));
}
