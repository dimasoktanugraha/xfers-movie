part of 'models.dart';

class MovieResponse extends Equatable{
    MovieResponse({
        this.page,
        this.results,
        this.totalPages,
        this.totalResults,
    });

    int page;
    List<MovieResult> results;
    int totalPages;
    int totalResults;

    factory MovieResponse.fromJson(Map<String, dynamic> json) => MovieResponse(
        page: json["page"],
        results: List<MovieResult>.from(json["results"].map((x) => MovieResult.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };

  @override
  List<Object> get props => [page, results, totalPages, totalResults];
}

class MovieResult  extends Equatable{
    MovieResult({
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount,
    });

    bool adult;
    String backdropPath;
    List<int> genreIds;
    int id;
    String originalLanguage;
    String originalTitle;
    String overview;
    double popularity;
    String posterPath;
    String releaseDate;
    String title;
    bool video;
    double voteAverage;
    int voteCount;

    factory MovieResult.fromJson(Map<String, dynamic> json) => MovieResult(
      adult: json["adult"],
      backdropPath: json["backdrop_path"],
      genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
      id: json["id"],
      originalLanguage: json["original_language"],
      originalTitle: json["original_title"],
      overview: json["overview"] ?? "default overview",
      popularity: json["popularity"].toDouble(),
      posterPath: json["poster_path"] ?? "/d7px1FQxW4tngdACVRsCSaZq0Xl.jpg",
      releaseDate: json["release_date"]  ?? "2000-20-20",
      title: json["title"]  ?? "Film",
      video: json["video"],
      voteAverage: json["vote_average"].toDouble() ?? 7.1,
      voteCount: json["vote_count"],
    );

    Map<String, dynamic> toJson() => {
      "adult": adult,
      "backdrop_path": backdropPath,
      "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
      "id": id,
      "original_language": originalLanguage,
      "original_title": originalTitle,
      "overview": overview ?? "default overview",
      "popularity": popularity,
      "poster_path": posterPath ?? "/d7px1FQxW4tngdACVRsCSaZq0Xl.jpg",
      "release_date": releaseDate  ?? "2000-20-20",
      "title": title ?? "Film",
      "video": video,
      "vote_average": voteAverage ?? 7.1,
      "vote_count": voteCount,
    };

  @override
  List<Object> get props => [adult, backdropPath, genreIds, id, originalLanguage, originalTitle, overview, popularity, posterPath, releaseDate, title, video, voteAverage, voteCount];
}

MovieResponse mockMovie = MovieResponse(
  page: 1,
  results: [
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    ),
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    ),
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    ),
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    ),
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    ),
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    ),
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    ),
    MovieResult(
      adult: false,
      backdropPath: "/zO1nXPpmJylWVHg2eL00HysZqE5.jpg",
      genreIds: [
        28,
        16,
        878,
        10751
      ],
      id: 13640,
      originalLanguage: "en",
      originalTitle: "Superman: Doomsday",
      overview: "When LexCorp accidentally unleashes a murderous creature, Superman meets his greatest challenge as a champion. Based on the \"The Death of Superman\" storyline that appeared in DC Comics' publications in the 1990s.",
      popularity: 130.615,
      posterPath: "/itvuWm7DFWWzWgW0xgiaKzzWszP.jpg",
      releaseDate: "2007-09-18",
      title: "Superman: Doomsday",
      video: false,
      voteAverage: 6.6,
      voteCount: 384
    )
  ],
  totalPages: 8,
  totalResults: 156
);