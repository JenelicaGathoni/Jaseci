with entry{
#Lists
favorite_movies: list[str] = [];

favorite_movies.append("Foundation");
favorite_movies.append("Altered Carbon");
favorite_movies.append("The expanse");
favorite_movies.append("The Peripheral");

favorite_movie_ever: str = favorite_movies[0];
print(f"Jenelle's most favorite movie is {favorite_movie_ever} ");

#Dictionaries
movie_ratings: dict[str, int] = {
    "Foundation": 10,
    "Altered Carbon":9,
    "The expanse": 9.5,
    "The Peripheral":8.5,

};
print(f"The movie Foundation has a rating of {movie_ratings['Foundation']}");
}