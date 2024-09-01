var _player_id = 124; // Replace with the actual player ID
var player_name = global.my1; // Replace with the actual player name
var _score = 1000; // Replace with the player's score

var urlos = "https://permeating-coasts.000webhostapp.com/insert_score.php"; // Replace with your server's URL and PHP script to insert scores
var post_data = "player_id=" + string(_player_id) + "&player_name=" + string(player_name) + "&score=" + string(_score);
var post_data_2 = "alias=Andoyt2"
var postData = "player_name=" + string(player_name);
urlas = http_post_string(urlos, post_data);
