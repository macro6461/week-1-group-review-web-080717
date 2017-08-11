require 'pry'
## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
def get_bulbasaur_ability_url(pokemon)
  # pokemon[0][:abilities][0][:ability][:url]
  bulb = pokemon.find do |poke|
    poke[:name] == "bulbasaur"
  end
  bulb[:abilities][0][:ability][:url]
end

# How would you return the first pokemon with base experience over 40?

def first_pokemon_xp_over_40(pokemon)
  pokemon.find do |poke|
    poke[:base_experience] > 40
  end
end


# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)

def all_pokemon_xp_over_40(pokemon)
  pokemon.map do |poke|
    if poke[:base_experience] > 40
      poke[:name]
    end
  end
end

# How would you return an array of all of the pokemon's names?

def all_pokemon_names(pokemon)
  pokemon.map do |poke|
    poke[:name]
  end
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?

def pokemon_weight_over_60(pokemon)
  heavy_pokes = []
  pokemon.collect do |poke|
    if poke[:weight] > 60
      true
    else
      false
    end
  end
end

#  whatever method you use should return true if there are any such pokemon, false if not.
Pry.start
