import Debug "mo:base/Debug";
import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };

    //challenge 1
    public func add(n : Nat, m : Nat) : async Nat {
       n + m;
    };

    //challenge 2
    public func square(n : Nat) : async Nat {
       n * n;
    };

    //challenge 3
    public func days_to_second(n : Nat) : async Nat {
        n * 24 * 3600;
    };

    //challenge 4
   var a = 1;
   public func increment_counter (n : Nat) : async Nat {
       a += n;
       a;
    
   };

   public query func clear_counter () : async Nat {
       a := 0;
       a;
   };

   //challenge 5
   public func divide (n : Nat, m : Nat) : async Bool {
       if (n <= m){
           true;
       }
       else {
           false;
       };
   };

   //challenge 6
   public func is_even (n : Nat) : async Bool {
     let a = n % 2;
     if (a == 0){
         true;
     }
     else {
         false;
     };
   };

   let array : [Nat] = [1, 7, 3];

   //challenge 7
   public query func sum_of_array () : async Nat {
       var a = 0;

       for (v in array.vals()) {
           a := a + v;
       };
         a;
   };

   //challenge 8
   public query func maximum () : async Nat {
       var a = array.size();
       var b = 0;
       if (a > b){
             b := array[b];
         for (v in array.vals()){
          if (v > b){
            b := v;
          };
       };
       };
       b;
   };

   //challenge 9
   public func remove_from_array (a : [Nat], n : Nat) : async [Nat] {
        var b = a.size();
          for (v in a.vals()){
          if (v == n){
             b := b - 1;
            };
            
          };
          var o : Nat = 0 ;
          let x : [var Nat] = Array.init<Nat>(b, 0);
         for (v in a.vals()){
          if (v != n){
             x[o] := v;
             o := o + 1 ;
            };
            
          };
        let array2 : [Nat] = Array.tabulate<Nat>(b, func(i:Nat) : Nat {
             x[i];
           
            }) ;
          
          
          
    };

 // challenge 10
    public func selection_sort (a : [Nat]) : async [Nat] {
        Array.sort (a, Nat.compare);
    };

};
