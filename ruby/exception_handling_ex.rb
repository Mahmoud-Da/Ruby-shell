soccer_team_player_number = 11
my_soccer_team_players = ["Josh", "Rick", "Sam", "Mike"]
for i in 1..soccer_team_player_number
  begin
    puts my_soccer_team_players[i]
    raise unless my_soccer_team_players[i]
  rescue
    puts "The number of players is less or more than 11"
  end
end
