collection = Collection.create(name: 'Top 30 Pokemon')
images = ["http://pkmncards.com/wp-content/uploads/charizard-legendary-treasures-ltr-19-ptcgo-1-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/lucario-black-white-promos-bw85-1-312x443.jpg",
"http://pkmncards.com/wp-content/uploads/gogoat-xy-promos-xy16-312x439.jpg",
"http://pkmncards.com/wp-content/uploads/darkrai-xy-promos-xy22-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/porygon-z-diamond-pearl-promos-dp35-312x429.jpg",
"http://pkmncards.com/wp-content/uploads/shuckle-heartgold-soulsilver-promos-hgss15-312x429.jpg",
"http://pkmncards.com/wp-content/uploads/toxicroak-g-diamond-pearl-promos-dp41-312x429.jpg",
"http://pkmncards.com/wp-content/uploads/chesnaught-ex-xy-promos-xy18-ptcgo-1-312x441.png",
"http://pkmncards.com/wp-content/uploads/zoroark-black-white-promos-bw19-ptcgo-1.png",
"http://pkmncards.com/wp-content/uploads/slurpuff-xy-promos-xy15-312x427.jpg",
"http://pkmncards.com/wp-content/uploads/miltank-flashfire-flf-83-ptcgo-1-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/greninja-xy-41-ptcgo-1-312x441@2x.png",
"http://pkmncards.com/wp-content/uploads/trevenant-xy-55-ptcgo-1-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/pyroar-flashfire-flf-20-ptcgo-1-312x441@2x.png",
"http://pkmncards.com/wp-content/uploads/charizard-ex-flashfire-flf-12-ptcgo-1-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/gengar-ex-phantom-forces-phf-34-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/primal-kyogre-ex-primal-clash-pcl-149-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/donphan-plasma-storm-pls-72-ptcgo-1-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/aromatisse-xy-93-ptcgo-1-312x441@2x.png",
"http://pkmncards.com/wp-content/uploads/m-gardevoir-ex-primal-clash-pcl-156-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/crobat-phantom-forces-phf-33-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/landorus-ex-boundaries-crossed-bcr-89-ptcgo-1-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/empoleon-plasma-freeze-plf-117-ptcgo-1-312x441@2x.png",
"http://pkmncards.com/wp-content/uploads/magnezone-plasma-storm-pls-46-ptcgo-1-312x441.png",
"http://pkmncards.com/wp-content/uploads/exeggutor-plasma-freeze-plf-5-ptcgo-1-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/lugia-ex-legendary-treasures-ltr-102-ptcgo-1-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/deoxys-ex-black-white-promos-bw82-ptcgo-1-312x441@2x.png",
"http://pkmncards.com/wp-content/uploads/pumpkaboo-phantom-forces-phf-44-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/joltik-phantom-forces-phf-26-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/genesect-ex-plasma-blast-plb-11-ptcgo-1-312x441@2x.png",
"http://pkmncards.com/wp-content/uploads/virizion-ex-plasma-blast-plb-9-ptcgo-1-312x441.png",
"http://pkmncards.com/wp-content/uploads/empoleon-plasma-freeze-plf-117-ptcgo-1-312x441@2x.png",
"http://pkmncards.com/wp-content/uploads/flareon-plasma-freeze-plf-12-ptcgo-1-312x441.png",
"http://pkmncards.com/wp-content/uploads/dialga-ex-phantom-forces-phf-62-312x441.jpg",
"http://pkmncards.com/wp-content/uploads/bronzong-phantom-forces-phf-61-312x441@2x.jpg",
"http://pkmncards.com/wp-content/uploads/seismitoad-ex-furious-fists-frf-106-ptcgo-1-312x441@2x.png"]

images.each do |image_url|
  begin
    Card.create(name: Faker::Pokemon.name,
                power: Faker::Beer.alcohol,
                value: Faker::Number.number(3),
                description: Faker::Hipster.paragraph,
                kind: ['water', 'air', 'earth', 'fire'].sample,
                img: image_url,
                collection_id: collection.id)
  rescue
    puts 'card tried to be created with dupe img'
  end
end

puts 'cards made'
