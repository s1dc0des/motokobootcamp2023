import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Float "mo:base/Float";

actor Day2 {

    let words : [Text] = ["Motoko", "is", "the", "best", "language"];

    let n : Nat = 50;
    let t : Text = "Hello";

    public func convert_to_text(m : Nat) : async Text {
        return (Nat.toText(m));
    };

    var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];

    public func show_languages(language : Text) : async [Text] {
        return Array.freeze(languages);
    };

    var languagesTwo : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

    public func add_language(new_language : Text) : async [Text] {
        languagesTwo := Array.append<Text>(languagesTwo, [new_language]);
        return Array.freeze(languages);
    };

    //challanges

    public func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
        var size : Int = 0;
        for (val in array.vals()) {
            sum := sum + val;
            size += 1;
        };
        sum / size;
    };

    public func count_character(t : Text, c : Char) : async Nat {
        var noOfc : Nat = 0;
        for (a in t.chars()) {
            if (a == c) {
                noOfc += 1;
            };
        };
        noOfc;
    };

    public func factorial(n : Nat) : async Nat {
        var _n : Nat = n;
        var _total : Nat = 0;
        while (_n > 0) {
            _total := _total + (_n * (_n -1));
            _n := _n - 1;
        };
        _total;
    };

};
