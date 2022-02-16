class Actors {
  List<Actor>? actors;

  Actors({this.actors});

  Actors.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      actors = <Actor>[];
      json['results'].forEach((v) {
        actors!.add(Actor.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (actors != null) {
      data['results'] = actors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Actor {
  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;
  List<String>? films;
  List<String>? species;
  List<String>? vehicles;
  List<String>? starships;
  String? created;
  String? edited;
  String? url;

  Actor(
      {this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url});

  Actor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    mass = json['mass'];
    hairColor = json['hair_color'];
    skinColor = json['skin_color'];
    eyeColor = json['eye_color'];
    birthYear = json['birth_year'];
    gender = json['gender'];
    homeworld = json['homeworld'];
    films = json['films'].cast<String>();
    species = json['species'].cast<String>();
    vehicles = json['vehicles'].cast<String>();
    starships = json['starships'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['height'] = height;
    data['mass'] = mass;
    data['hair_color'] = hairColor;
    data['skin_color'] = skinColor;
    data['eye_color'] = eyeColor;
    data['birth_year'] = birthYear;
    data['gender'] = gender;
    data['homeworld'] = homeworld;
    data['films'] = films;
    data['species'] = species;
    data['vehicles'] = vehicles;
    data['starships'] = starships;
    data['created'] = created;
    data['edited'] = edited;
    data['url'] = url;
    return data;
  }
}