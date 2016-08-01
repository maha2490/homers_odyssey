# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Place.create! [
# ******** LODGING ********	

{ name: "Epic Hotel", address: "270 Biscayne Blvd Way, Miami, FL 33131", phone: "(305) 424-5226", website: "http://www.epichotel.com", lat: nil, lng: nil , category: "lodging"},

{ name: "Hotel Urbano", address: "2500 Brickell Ave, Miami, FL 33129", phone: "(305) 854-2070", website: "http://www.hotelurbanomiami.com", lat: nil, lng: nil, category: "lodging"},

{ name: "Fortune House Hotel", address: "185 SE 14th Terrace, Miami, FL 33131", phone: "(305) 349-5200", website: "http://www.fortunehousehotel.com", lat: nil, lng: nil, category: "lodging"},

{ name: "Mandarin Oriental, Miami", address: "500 Brickell Key Dr, Miami, FL 33131", phone: "(305) 913-8288", website: "http://www.mandarinoriental.com/miami", lat: nil, lng: nil, category: "lodging"},

{ name: "Marriott Stanton South Beach", address: "161 Ocean Dr, Miami Beach, FL 33139", phone: "(305) 536-7700", website: "http://www.marriott.com/hotels/travel/miamb-marriott-stanton-south-beach", lat: nil, lng: nil, category: "lodging"}
]


sleep 1

Place.create! [
# ******** RECREATION ********

{ name: "South Pointe Park", address: "1 Washington Ave, Miami Beach, FL 33139", phone: "(305) 673-7000", website: "http://web.miamibeachfl.gov/parksandrecreation/scroll.aspx?id=57993", lat: nil, lng: nil, category: "recreation"},

{ name: "Pinetree Park", address: "Collins and 81 Street, Miami Beach, FL 33140", phone: "(305) 673-7730", website: "http://web.miamibeachfl.gov/parksandrecreation/scroll.aspx?id=49658", lat: nil, lng: nil, category: "recreation"},

{ name: "Blanche Park", address: "Shipping Ave and Virginia Street, Miami, FL 33133", phone: "(305) 859-2705", website: "http://www.miamigov.com/parks/", lat: nil, lng: nil, category: "recreation"},

{ name: "Margaret Pace Park", address: "1750 N Bayshore Drive, Miami, FL 33132", phone: "(305) 860-3823", website: "http://www.miamigov.com/parks/", lat: nil, lng: nil, category: "recreation"},

{ name: "Coconut Grove Dog Park", address: "2171 S Bayshore Dr, Miami, FL 33133", phone: "(305) 575-5256", website: "http://www.miamigov.com/parks/dogparks.html", lat: nil, lng: nil, category: "recreation"}
]


sleep 1

Place.create! [
# ******** SERVICES ********

{ name: "Four Legged Pet Care", address: "1111 Brickell Bay Dr, Miami, FL 33131", phone: "(305) 975-4065", website: "http://www.fourleggedpetcare.com/", lat: nil, lng: nil, category: "services"},

{ name: "Fun Paw Care", address: "900 16th Street Miami, FL 33139", phone: "(786) 372-0299", website: "http://www.funpawcare.com/", lat: nil, lng: nil, category: "services"},

{ name: "Downtown Dogs Miami", address: "950 Brickell Bay Dr, Miami, FL 33131", phone: "(305) 747-1580", website: "http://downtowndogsmiami.com", lat: nil, lng: nil, category: "services"},

{ name: "Paws In The City", address: "150 SE 3rd Ave, Miami, FL 33131", phone: "(305) 922-9488", website: "http://www.pawsinthecityllc.com/", lat: nil, lng: nil, category: "services"},

{ name: "The Litter Sitter - Dog Walking & Pet Care", address: "360 Meridian Ave, Miami Beach, FL 33139", phone: "(305) 918-2739", website: "http://www.thelittersitter.com/", lat: nil, lng: nil, category: "services"}
]


sleep 1

Place.create! [
# ******** SUPPLIES ********

{ name: "Animal Crackers", address: "280 NE 2nd St, Miami, FL 33132", phone: "(305) 374-8004", website: "http://www.animalcrackersdelivers.com/", lat: nil, lng: nil, category: "supplies"},

{ name: "StarDog Brickell", address: "55 SW 11th St, Miami, FL 33130", phone: "(305) 374-2210", website: "http://dogfoodmiami.com/", lat: nil, lng: nil, category: "supplies"},

{ name: "PetSmart Miami (Midtown)", address: "3101 N Miami Ave, Miami, FL 33127", phone: "(305) 573-8026", website: "http://stores.petsmart.com/1412?utm_source=google&utm_medium=organic&utm_campaign=google-my-business", lat: nil, lng: nil, category: "supplies"},

{ name: "Petco Animal Supplies", address: "1121 5th St, Miami Beach, FL 33139", phone: "(305) 531-1678", website: "http://stores.petco.com/fl/miamibeach/pet-supplies-miamibeach-fl-1521.html", lat: nil, lng: nil, category: "supplies"},

{ name: "Dog Bar", address: "1684 Jefferson Ave, Miami Beach, FL 33139", phone: "(305) 532-5654", website: "http://www.dogbar.com/", lat: nil, lng: nil, category: "supplies"}
]


sleep 1

Place.create! [
# ******** MEDICAL ********

{ name: "Brickell Bay Animal Hospital", address: "940 Brickell Bay Dr, Miami, FL 33131", phone: "(786) 231-1111", website: "http://brickellbayanimalhospital.com/", lat: nil, lng: nil, category: "medical"},

{ name: "VCA Brickell Animal Hospital", address: "130 SW 8th St, Miami, FL 33130", phone: "(786) 235-7387", website: "http://www.vcahospitals.com/brickell?utm_source=maps&utm_medium=organic&utm_campaign=VCA_Brickell_Animal_Hospital", lat: nil, lng: nil, category: "medical"},

{ name: "Knowles Animal Clinics", address: "1000 NW 27th Ave, Miami, FL 33125", phone: "(305) 649-1234", website: "http://www.knowlesanimalclinics.com/", lat: nil, lng: nil, category: "medical"},

{ name: "Miami Animal Hospital", address: "4701 W Flagler St, Miami, FL 33134", phone: "(305) 443-4777", website: "http://miamianimalhospital.com/", lat: nil, lng: nil, category: "medical"},

{ name: "Silver Bluff Animal Clinic", address: "2515 SW 27th Ave, Miami, FL 33133", phone: "(305) 859-7979", website: "http://www.silverbluffanimalclinic.com/", lat: nil, lng: nil, category: "medical"}

]