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

=begin
Michigan

ann arbor
battle creek
central michigan
detroit metro
flint
grand rapids
holland
jackson
kalamazoo
lansing
monroe
muskegon
northern michigan
port huron
saginaw-midland-baycity
southwest michigan
the thumb
upper peninsula
Minnesota

bemidji
brainerd
duluth / superior
mankato
minneapolis / st paul
rochester
southwest MN
st cloud
Mississippi

gulfport / biloxi
hattiesburg
jackson
meridian
north mississippi
southwest MS
Missouri

columbia / jeff city
joplin
kansas city
kirksville
lake of the ozarks
southeast missouri
springfield
st joseph
st louis

Montana

billings
bozeman
butte
great falls
helena
kalispell
missoula
eastern montana
Nebraska

grand island
lincoln
north platte
omaha / council bluffs
scottsbluff / panhandle
Nevada

elko
las vegas
reno / tahoe
New Hampshire

new hampshire
New Jersey

central NJ
jersey shore
north jersey
south jersey
New Mexico

albuquerque
clovis / portales
farmington
las cruces
roswell / carlsbad
santa fe / taos
New York

albany
binghamton
buffalo
catskills
chautauqua
elmira-corning
finger lakes
glens falls
hudson valley
ithaca
long island
new york city
oneonta
plattsburgh-adirondacks
potsdam-canton-massena
rochester
syracuse
twin tiers NY/PA
utica-rome-oneida
watertown
North Carolina

asheville
boone
charlotte
eastern NC
fayetteville
greensboro
hickory / lenoir
jacksonville
outer banks
raleigh / durham / CH
wilmington
winston-salem
North Dakota

bismarck
fargo / moorhead
grand forks
north dakota
Ohio

akron / canton
ashtabula
athens
chillicothe
cincinnati
cleveland
columbus
dayton / springfield
lima / findlay
mansfield
sandusky
toledo
tuscarawas co
youngstown
zanesville / cambridge
Oklahoma

lawton
northwest OK
oklahoma city
stillwater
tulsa
Oregon

bend
corvallis/albany
east oregon
eugene
klamath falls
medford-ashland
oregon coast
portland
roseburg
salem
Pennsylvania

altoona-johnstown
cumberland valley
erie
harrisburg
lancaster
lehigh valley
meadville
philadelphia
pittsburgh
poconos
reading
scranton / wilkes-barre
state college
williamsport
york
Rhode Island

rhode island
South Carolina

charleston
columbia
florence
greenville / upstate
hilton head
myrtle beach
South Dakota

northeast SD
pierre / central SD
rapid city / west SD
sioux falls / SE SD
south dakota
Tennessee

chattanooga
clarksville
cookeville
jackson
knoxville
memphis
nashville
tri-cities
Texas

abilene
amarillo
austin
beaumont / port arthur
brownsville
college station
corpus christi
dallas / fort worth
deep east texas
del rio / eagle pass
el paso
galveston
houston
killeen / temple / ft hood
laredo
lubbock
mcallen / edinburg
odessa / midland
san angelo
san antonio
san marcos
southwest TX
texoma
tyler / east TX
victoria
waco
wichita falls
Utah

logan
ogden-clearfield
provo / orem
salt lake city
st george
Vermont

vermont
Virginia

charlottesville
danville
fredericksburg
hampton roads
harrisonburg
lynchburg
new river valley
richmond
roanoke
southwest VA
winchester
Washington

bellingham
kennewick-pasco-richland
moses lake
olympic peninsula
pullman / moscow
seattle-tacoma
skagit / island / SJI
spokane / coeur d'alene
wenatchee
yakima
West Virginia

charleston
eastern panhandle
huntington-ashland
morgantown
northern panhandle
parkersburg-marietta
southern WV
west virginia (old)
Wisconsin

appleton-oshkosh-FDL
eau claire
green bay
janesville
kenosha-racine
la crosse
madison
milwaukee
northern WI
sheboygan
wausau
Wyoming

wyoming
Territories

guam-micronesia
puerto rico
U.S. virgin islands"

arrays = []
idxs = []
array = string.split("\n").delete_if{|a| a == ""}
array.each do |a|
    if a[0] == a[0].upcase
     idxs << array.index(a)
    end
end

i = 0
while i < 52
	arrays << array.slice(idxs[i]..idxs[i+1]-1)
	i += 1
end

arrays.each do |a|
	state = a.shift
	for i in 1..a.length
		unless a[i] == nil
		city = City.create(name:a[i], state: state, country: "United States")
		if city.save
			puts "name: #{a[i]}, state: #{state}, country:#{"United States"} Created"
		else puts "city not saved"
		end
		end
	end
puts "-------------------------------------"
end
=end

###################################
# parsed_state_city = string.split("\n").delete_if{|a| a == ""}

# state_city_hash = {}
# current_city = nil
# parsed_state_city.each do |name|
#   if name.capitalize == name
#     state_city_hash[name] = []
#     current_city = name
#   else
#     state_city_hash[current_city] << name
#   end
# end



