# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#make the categories

# category = Category.create([
#   { name: 'Advocacy & Human Rights' },
#   { name: 'Animals' },
#   { name: 'Arts & Culture' },
#   { name: 'Board Development' },
#   { name: 'Children & Youth' },
#   { name: 'Community' },
#   { name: 'Computers & Technology' },
#   { name: 'Crisis Support' },
#   { name: 'Disaster Relief' },
#   { name: 'Education & Literacy' },
#   { name: 'Emergency & Safety' },
#   { name: 'Employment' },
#   { name: 'Environment' },
#   { name: 'Faith-Based' },
#   { name: 'Health & Medicine' },
#   { name: 'Homeless & Housing' },
#   { name: 'Hunger' },
#   { name: 'Migrants & Refugees' },
#   { name: 'International' },
#   { name: 'Justice & Legal' },
#   { name: 'LGBT' },
#   { name: 'Media & Broadcasting' },
#   { name: 'People with Disabilities' },
#   { name: 'Politics' },
#   { name: 'Race & Ethnicity' },
#   { name: 'Seniors' },
#   { name: 'Sports & Recreation' },
#   { name: 'Veterans & Military Families' },
#   { name: 'Women'}
# ])


# Create Cities 
State.create({name: "Alabama"})
["auburn","birmingham","dothan","florence / muscle shoals","gadsden-anniston","huntsville / decatur","mobile","montgomery","tuscaloosa"].each do |c|
  City.create({name: c.titleize,  state_id: State.find_by_name("Alabama").id}) 
end 

State.create(name: "Alaska")
["anchorage / mat-su", "fairbanks","kenai peninsula","southeast alaska"].each do |city|
 City.create({name: city.titleize, state_id: State.find_by_name("Alaska").id}) 
end 

State.create(name: "Arizona") 
["flagstaff / sedona", "mohave county", "phoenix", "prescott","show low","sierra vista","tucson","yuma"].each do |city|
 City.create({name: city.titleize, state_id: State.find_by_name("Arizona").id})
end 

State.create(name:"Arkansas") 
["fayetteville","fort smith","jonesboro","little rock","texarkana"].each do |city|
 City.create(name: city.titleize, state_id: State.find_by_name("Arkansas").id)
end 

State.create(name: "California")
["bakersfield","chico","fresno / madera","gold country","hanford-corcoran",
"humboldt county","imperial county","inland empire","los angeles","mendocino county",
"merced","modesto","monterey bay","orange county","palm springs","redding","sacramento",
"san diego","san francisco bay area","san luis obispo","santa barbara","santa maria","siskiyou county","stockton","susanville","ventura county","visalia-tulare","yuba-sutter"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("California"))
end 
 
State.create(name: "Colorado")
["boulder","colorado springs","denver","eastern CO","fort collins / north CO","high rockies","pueblo","western slope"].each do |city|
  City.create(name: city.titleize, state_id: State.find_by_name("Colorado").id)
end 

State.create(name: "Connecticut")
["eastern CT","hartford","new haven", "northwest CT"].each do |city|
  City.create(name: city.titleize, state_id: State.find_by_name("Connecticut").id) 
end 

State.create(name: "Delaware")
City.create(name: "Delaware", state_id: State.find_by_name("Delaware").id)

State.create(name: "District of Columbia")
City.create(name: "Washington", state_id: State.find_by_name("District of Columbia").id)

State.create(name: "Florida")
["broward county","daytona beach","florida keys","fort lauderdale","ft myers / SW florida","gainesville",
"heartland florida","jacksonville","lakeland","miami / dade","north central FL","ocala","okaloosa / walton",
"orlando","panama city","pensacola","sarasota-bradenton","south florida","space coast","st augustine",
"tallahassee","tampa bay area","treasure coast","palm beach county"].each do |city|
  City.create(name: city.titleize, state_id: State.find_by_name("Florida").id)
end


State.create(name: "Georgia")
["albany", "athens","atlanta","augusta","brunswick","columbus","macon / warner robins","northwest GA",
"savannah / hinesville","statesboro","valdosta"].each do |city|
 City.create(name: city.titleize, state_id: State.find_by_name("Georgia").id)
end 

State.create(name: "Hawaii")
City.create(name: "Hawaii", state_id: State.find_by_name("Hawaii").id)

State.create(name: "Idaho")
["boise","east idaho","lewiston / clarkston","twin falls"].each do |city|
 City.create(name: city.titleize, state_id: State.find_by_name("Idaho").id)
end

State.create(name: "Illinois")
["bloomington-normal","champaign urbana","chicago","decatur","la salle co","mattoon-charleston","peoria",
"rockford","southern illinois","springfield","western IL"].each do |city|
 City.create(name: city.titleize, state_id: State.find_by_name("Illinois").id)
end 

State.create(name: "Indiana") 
["bloomington", "evansville","fort wayne","indianapolis","kokomo","lafayette / west lafayette","muncie / anderson","richmond","south bend / michiana","terre haute"].each do |city|
 City.create(name: city.titleize, state_id: State.find_by_name("Indiana").id)
end 

State.create(name: "Iowa")
["ames","cedar rapids","des moines","dubuque","fort dodge","iowa city", "mason city", "quad cities",
"sioux city","southeast IA","waterloo / cedar falls"].each do |city|
 City.create(name: city.titleize, state_id: State.find_by_name("Iowa").id) 
end 

State.create(name: "Kansas")
["lawrence","manhattan","northwest KS","salina","southeast KS","southwest KS","topeka","wichita"].each do |city|
 City.create(name: city.titleize, state_id: State.find_by_name("Kansas").id)
end 


State.create(name: "Kentucky")
["bowling green","eastern kentucky","lexington","louisville","owensboro","western KY"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("Kentucky") )
end

State.create(name:"Louisiana")
["baton rouge","central louisiana","houma","lafayette","lake charles","monroe","new orleans","shreveport"].each do |city|
    City.create(name: city.titleize, state: State.find_by_name("Louisiana"))
end

State.create(name: "Maine") 
City.create(name: "Maine", state: State.find_by_name("Maine")) 

State.create(name: "Maryland")
["annapolis","baltimore","eastern shore","frederick","southern maryland","western maryland"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("Maryland")) 
end 

State.create(name: "Massachusetts") 
["boston","cape cod / islands","south coast","western massachusetts","worcester / central MA"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("Massachusetts")) 
end 

State.create(name: "Michigan")
["ann arbor","battle creek","central michigan","detroit metro","flint","grand rapids","holland","jackson",
"kalamazoo","lansing","monroe","muskegon","northern michigan","port huron","saginaw-midland-baycity",
"southwest michigan","the thumb","upper peninsula"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Michigan"))
end 

State.create(name: "Minnesota")
["bemidji","brainerd","duluth / superior","mankato","minneapolis / st paul","rochester","southwest MN","st cloud"
].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Minnesota"))
end 

State.create(name: "Mississippi")
["gulfport / biloxi","hattiesburg","jackson","meridian","north mississippi","southwest MS"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Mississippi"))
end 
State.create(name: "Missouri") 
["columbia / jeff city","joplin","kansas city","kirksville","lake of the ozarks","southeast missouri","springfield","st joseph","st louis"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Missouri")) 
end 

State.create(name: "Montana")
["billings","bozeman","butte","great falls","helena","kalispell","missoula","eastern montana"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Montana"))
end 

State.create(name: "Nebraska") 
["grand island","lincoln","north platte","omaha / council bluffs","scottsbluff / panhandle"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("Nebraska"))
end 

State.create(name: "Nevada")
["elko","las vegas","reno / tahoe"].each do |city|
  City.create(name: "Nevada", state: State.find_by_name("Nevada")) 
end 

State.create(name: "New Hampshire") 
City.create(name: "New Hampshire", state: State.find_by_name("New Hampshire"))

State.create(name: "New Jersey")
["central NJ","jersey shore","north jersey","south jersey"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("New Jersey"))
end 

State.create(name: "New Mexico") 
["albuquerque","clovis / portales","farmington","las cruces","roswell / carlsbad","santa fe / taos"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("New Mexico")) 
end 

State.create(name: "New York") 
["albany","binghamton","buffalo","catskills","chautauqua","elmira-corning","finger lakes","glens falls",
 "hudson valley","ithaca","long island","new york city","oneonta","plattsburgh-adirondacks","potsdam-canton-massena", "rochester","syracuse","twin tiers NY/PA","utica-rome-oneida","watertown"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("New York"))
end 

State.create(name: "North Carolina")
["asheville","boone","charlotte","eastern NC","fayetteville","greensboro","hickory / lenoir","jacksonville",
 "outer banks","raleigh / durham / CH","wilmington","winston-salem"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("North Carolina"))
end 

State.create(name: "North Dakota")
["bismarck","fargo / moorhead","grand forks","north dakota"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("North Dakota"))
end 

State.create(name: "Ohio") 
["akron / canton","ashtabula","athens","chillicothe","cincinnati","cleveland","columbus",
"dayton / springfield","lima / findlay","mansfield","sandusky","toledo","tuscarawas co","youngstown","zanesville / cambridge"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("Ohio"))
end 

State.create(name: "Oklahoma")
["lawton","northwest OK","oklahoma city","stillwater","tulsa"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("Oklahoma"))
end 

State.create(name: "Oregon")
["bend","corvallis/albany","east oregon","eugene","klamath falls","medford-ashland","oregon coast","portland",
 "roseburg","salem"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Oregon"))
end 

State.create(name: "Pennsylvania")
["altoona-johnstown","cumberland valley","erie","harrisburg","lancaster","lehigh valley","meadville","philadelphia","pittsburgh","poconos","reading","scranton / wilkes-barre","state college","williamsport","york"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Pennsylvania"))
end 
              
State.create(name: "Rhode Island")
City.create(name: "Rhode Island", state: State.find_by_name("Rhode Island"))

State.create(name: "South Carolina")
["charleston","columbia","florence","greenville / upstate","hilton head","myrtle beach"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("South Carolina"))
end 

State.create(name: "South Dakota")
["northeast SD","pierre / central SD","rapid city / west SD","sioux falls / SE SD","south dakota"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("South Dakota"))
end 

State.create(name: "Tennessee")
["chattanooga","clarksville","cookeville","jackson","knoxville","memphis","nashville","tri-cities"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Tennessee"))
end 

State.create(name: "Texas")
["abilene","amarillo","austin","beaumont / port arthur","brownsville","college station","corpus christi","dallas / fort worth","deep east texas","del rio / eagle pass","el paso","galveston","houston","killeen / temple / ft hood",
"laredo","lubbock","mcallen / edinburg","odessa / midland","san angelo","san antonio","san marcos","southwest TX",
"texoma","tyler / east TX","victoria","waco","wichita falls"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Texas"))
end 

State.create(name: "Utah")
["logan","ogden-clearfield","provo / orem","salt lake city","st george"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Utah"))
end

State.create(name: "Vermont")
City.create(name: "Vermont", state: State.find_by_name("Vermont"))


State.create(name: "Virginia")
["charlottesville","danville","fredericksburg","hampton roads","harrisonburg","lynchburg","new river valley",
"richmond","roanoke","southwest VA","winchester"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Virginia"))
end 

State.create(name: "Washington") 
["bellingham","kennewick-pasco-richland","moses lake","olympic peninsula","pullman / moscow","seattle-tacoma",
"skagit / island / SJI","spokane / coeur d'alene","wenatchee","yakima"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Washington"))
end 

State.create(name: "West Virginia")
["charleston","eastern panhandle","huntington-ashland","morgantown","northern panhandle","parkersburg-marietta",
"southern WV","west virginia (old)"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("West Virginia"))
end

State.create(name: "Wisconsin")
["appleton-oshkosh-FDL", "eau claire","green bay","janesville","kenosha-racine","la crosse","madison","milwaukee",
"northern WI","sheboygan","wausau"].each do |city|
  City.create(name: city.titleize, state: State.find_by_name("Wisconsin"))
end 

State.create(name: "Wyoming")
City.create(name: "Wyoming", state: State.find_by_name("Wyoming"))

State.create(name:"Territories")
["guam-micronesia","puerto rico", "U.S. virgin islands"].each do |city|
 City.create(name: city.titleize, state: State.find_by_name("Territories"))
end 


