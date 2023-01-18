import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Int8 "mo:base/Int8";
import Int "mo:base/Int";
import Float "mo:base/Float";
import Blob "mo:base/Blob";

actor {
    // How much is the current memory capacity of a canister ?
    // canisters can have a max stable memory of 48 GB
    // there are two types of memories stable and heap memory
    // there is use basis stable memory if we dont define memory allocation while creating canisters

    var counter : Nat = 0; // let is immutable and var is mutable declaration

    public func increment_counter() : async () {
        counter := counter + 1;
    };

    var message : Text = "0";

    public query func change_message(new_message : Text) : async () {
        message := new_message;
        return;
    };

    public query func see_message() : async Text {
        message := "ic is awesome";
        return (message);
    };

    // false we cant remove async for just because queries are faster.
};
