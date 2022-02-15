class Films {
  List<Movie>? results;

  Films({this.results});

  Films.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Movie>[];
      json['results'].forEach((v) {
        results!.add(Movie.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Movie {
  String? title;
  int? episodeId;
  String? director;

  Movie(
      {this.title,
      this.episodeId,
      this.director,
      });

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    episodeId = json['episode_id'];
    director = json['director'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['episode_id'] = episodeId;
    data['director'] = director;
    return data;
  }
}
