import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Char "mo:base/Char";

actor {


    //challenge 1
 public func nat_to_nat8 (n : Nat) : async Nat8 {
     if (n >= 0 and n<= 255){
       return (Nat8.fromNat(n));   
     } else {
         0;
     }
     
 };

//challenge 2
 public func max_number_with_n_bits (n : Nat) : async Nat {
     var a = 0;
    for (i in Iter.range(0, n-1)) {
         a += 2 ** (n - 1 - i);
    };
    a;
 };

 //challenge 3


 //challenge 4

public func capitalize_character (c : Char) : async Text {
     
var char : Nat32 = Char.toNat32(c);
char -= 32 ;
let e : Char = Char.fromNat32(char);
return (Char.toText (e));
};

//challenge 5

public func capitalize_text (t : Text) : async Text {
    var a : Text = "";
    for(char in t.chars()){
	let b : Text = await capitalize_character (char);
    a := a # b;
};
a;
};

//challenge 6
public func is_inside (t: Text, c : Char) : async Bool {
   for(char in t.chars()){
       if (char == c){
           return true;
       }
   };
   return false;
};

//challenge 7
public func trim_whitespace (t : Text) : async Text {
    var rep : Text = "";
    for (char in t.chars()){
        let a : Text = Char.toText(char);
        if (a != " "){
            rep := rep # a;
        }
    };

    rep;
};

//challenge 8
public func duplicated_character (t : Text) : async Text {
   var a : Nat = 0;
    for (char in t.chars()){
        var b : Nat = 0;
        for (val in t.chars()){
          if (char == val and a != b){
             return (Char.toText(char));
          };
          b :=1;
        };
        a += 1;
    };
    return t;
};

//challenge 9

    
};