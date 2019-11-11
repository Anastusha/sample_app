 person1 = {}
 person2 = {
     first: "Popa",
     :last => "Popnaya"
 }
 person3 = {
     "first" => "Natya"
 }
person3[:last] = "Pasikova"

 person1["first"] = "Anya"
 person1["last"] = "Pasikova"

params ={
    father: person2, 
    mother: person1,
    child: person3
}
puts person1
puts person2
puts person3
puts params
puts  ({ "a" => 100, "b" => 200 }.merge({ "a" => 50, "c" => 5, b: 300 }))