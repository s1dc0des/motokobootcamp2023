import Array "mo:base/Array";

actor Day3 {

    // a simple function to pass as high order function
    let f = func(n : Nat) : Nat {
        return (n + 1);
    };

    public func riddle(array : [Nat]) : async [Nat] {
        return (Array.map<Nat, Nat>(array, f));
    };
};
