Restaurant.destroy_all


restaurants = [
    {name: "Karamanlidika", address: "Sokratous, Athens", phone_number: "+302108078890", category: "italian"},
    {name: "Umami", address: "Berlin", phone_number: "+332199208890", category: "belgian"},
    {name: "Fidel", address: "Zografou, Athens", phone_number: "+302108078230", category: "french"},
    {name: "Podilato", address: "Dimokratias 34, Athens", phone_number: "+302108040874", category: "italian"},
    {name: "Telis", address: "Psyri, Athens", phone_number: "+3021033785590", category: "chinese"}
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end