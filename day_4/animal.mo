module {


    public type Animal = {
         specie : Text;
         energie : Nat;
    };

    public func animal_sleep (a : Animal) : Animal{
        let b = {
            specie = a.specie;
            energie = a.energie + 10;
        };
        
    };

};