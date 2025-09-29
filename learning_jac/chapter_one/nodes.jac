#Nodes are like objects that have a specific location within a graph structure.
node User {
    has UserName: str;
    has email: str;
    has started_at: str;
}
node Game {
    has Title: str;
    has points: int = 0;

}

with entry{
    user = root ++> User(
        UserName = "alice",
        email = "alice@example.com",
        started_at= "2024-01-01"
    );

    game = user ++> Game(
        Title = "Chess",
        points = 20
    );

    print(f" {user[0].UserName} played {game[0].Title}");
}