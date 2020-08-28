class MoviesRepository {
  const MoviesRepository();

  Future<List<String>> getMovies() async {
    return [
      "https://m.media-amazon.com/images/M/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg",
      "https://lh3.googleusercontent.com/proxy/kB224O4fNyfJJVIyNvIdKDzLJmT1Nxw_3Bf5FCFwQHhwD4eOb4N3Z0v14Nw9twiykHAfqijPw3vLZ0NsKXYTJ8369cK5Ea12oAUqQjw",
      "https://fyrafix.files.wordpress.com/2011/08/url-7.jpg",
      "https://i.pinimg.com/474x/34/8b/9c/348b9ccc117ccac0133967ffb685e326.jpg"
    ];
  }


}
