
import Custom "custom";
import Animal "animal";
import List "mo:base/List";

actor {



  public func fun () : async Custom.Coin {
    let c : Custom.Coin = {
        name = "fanatiq";
        max_supply = 1000000000;
        price = 1000 ;
    };
  };

  let a : Animal.Animal = {
     specie = "tigre";
    energie = 10000;
  };

  public func create_animal_then_takes_a_break (s : Text, e : Nat) : async Animal.Animal {
     let r : Animal.Animal = {
        specie = s;
        energie = e;
     };

     let b : Animal.Animal = Animal.animal_sleep (r);
  };
 
 let anim : List.List<Animal.Animal> = List.nil<Animal.Animal>();

 public func push_animal(a: Animal.Animal) : () {
     ignore List.push(a, anim);
    }; 


  public func get_animals() : async [Animal.Animal] {
        List.toArray(anim);
    }; 
};

 