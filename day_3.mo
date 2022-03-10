
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";



actor {

//challenge 1

private func swap (a : [var Nat], i : Nat, j : Nat) : async [Nat]{
  let e : Nat = a[i];
  let f : Nat = a[j];
  a[i] := f;
  a[j] := e;
 
 return(Array.freeze<Nat>(a));
};



//challenge 2
public func init_count (n : Nat) : async [Nat]{
 let array2 : [Nat] = Array.tabulate<Nat>(n, func(i:Nat) : Nat { i;}) ;
};

//challenge 3
public func seven (a : [Nat]) : async Text {
 for (v in a.vals()) {
    let e = Nat.toText(v);
    for (c in e.chars()){
        let d = Char.toText(c);
        if (d == "7"){
            return "Seven is found";
        };
    };

 };
 return "Seven is not found";
};

//challenge 4
public func nat_opt_to_nat (n : ?Nat, m : Nat) : async Nat {
    switch (n){
        case (null){
             m;
        };
        case (?a){
              a;
        };
    };
};

//challenge 5
public func day_of_the_week (n : Nat) : async ?Text {
 
       switch (n){
           case(1){?"lundi";};
           case(2){?"Mardi"};
           case(3){?"Mercredi"};
           case(4){?"Jeudi"};
           case(5){?"Vendredi"};
           case(6){?"Samedi"};
           case(7){?"Dimanchee"};
           case _ {null;};
       };
     
       
};

//challenge 6
public func populate_array (a : [?Nat]) : async [Nat] {
    let n : Nat = a.size();
let array2 : [Nat] = Array.tabulate<Nat>(n, func(i:Nat) : Nat { 
    
    switch (a[i]){
        case(?e){e;};
        case(null){0;};
    };

}) ;
};

//challenge 7: Write a function sum_of_array that takes an array [Nat] and returns the sum of a values in the array.
var x : Nat = 0;
let f = func (n : Nat) : Nat {
    x:= n + x;
    return x;
};
public func sum_of_array (a:[Nat]) : async Nat {
   x := 0;
   let e : [Nat] = Array.map<Nat, Nat>(a, f);
   let b : Nat = e.size() - 1;
   e[b];
};
  

//challenge 8: Write a function squared_array that takes an array [Nat] and returns a new array where each value has been squared.
let p = func (n : Nat) : Nat {
     return (n*n);
};
public func squared_array (a : [Nat]) : async [Nat] {
return (Array.map<Nat, Nat>(a, p));
};


//challenge 9 : Write a function increase_by_index that takes an array [Nat] and returns a new array where each number has been increased by it's corresponding index
let j = func (n : Nat) : Nat { 
     x +=1;
     return (n + x - 1);
};
public func increase_by_index (a : [Nat]) : async [Nat] {
   x := 0;
   return (Array.map<Nat, Nat>(a, j));
}

};

