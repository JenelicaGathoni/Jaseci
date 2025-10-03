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

#Sets - unordered collection that does not allow duplicate items
Jenelle_favorite_movies: set[str] = {"Foundation","The Peripheral", "Altered Carbon", "The Expanse", "Foundation"};
Nicki_favorite_movies: set[str] = {"From", "The Summer I turned Pretty", "The Expanse", "The Peripheral"};

common_movies = Jenelle_favorite_movies.intersection(Nicki_favorite_movies);
print(f"jenelle and Nicki both love: {common_movies}");
all_movies = Jenelle_favorite_movies.union(Nicki_favorite_movies);
print(f"These are all the movies that were listed: {all_movies}");
print(Jenelle_favorite_movies);

#collection comprehensions:
character_age: list[int] = [72, 56, 13, 24, 83, 13, 25];
mature_characters: list[int] = [age for age in character_age if age >= 50];
print(mature_characters);
#increase each of their ages by 29 if they survive the first crisis
approximate_lifeline: list[int] = [age + 29 for age in character_age];
print(approximate_lifeline);
}