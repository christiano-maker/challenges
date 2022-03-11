
import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Cycles "mo:base/ExperimentalCycles";
import Debug "mo:base/Debug";



actor {

      public shared ({caller}) func is_anonymous () : async Bool {
        /* let a : Principal = Principal.fromText ("2vxsx-fae");
         Principal.equal(caller, a);*/
         Principal.isAnonymous(caller);
      };

      let favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);

      public shared ({caller}) func add_favorite_number (a : Nat) : async Text {
        switch(favoriteNumber.get(caller)) {
            case (null) {
                
                favoriteNumber.put(caller, a);
                "You've successfully registered your number";
            };
            case(?n){
                   "You've already registered your number";
            }
        }
         
      };

      public shared ({caller}) func show_favorite_number () : async ?Nat {
          favoriteNumber.get(caller);
      };

       public shared ({caller}) func update_favorite_number (a : Nat) : async Text {
          switch(favoriteNumber.get(caller)) {
            case (null) {
                
                favoriteNumber.put(caller, a);
                "You've successfully registered your number";
            };
            case(?n){
                ignore  favoriteNumber.replace(caller, a);
                   "You've successfully updated your number";
            }
        }
      };
       public shared ({caller}) func delete_favorite_number () : async Text {
          switch(favoriteNumber.get(caller)) {
            case (null) {
                
                
                "You don't have a favorite number registered";
            };
            case(?n){
                  favoriteNumber.delete(caller);
                   "You've successfully deleted your number";
            }
        }
      };

      public func balance() : async Nat {
        return(Cycles.balance())
    };

    public func deposit_cycles() : async Nat {
       let a : Nat = 1000000 ; 
       let received =  Cycles.accept (a);
       return received;
    };





};