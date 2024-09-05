pragma circom 2.1.2;

include "../circomlib/circuits/mimcsponge.circom";

template BabyRoll(k) {
    signal input initial_state_root;
    signal input sender_pubkey[2], sender_balance;
    signal input sender_proof_elements[k], sender_proof_positions[k];
}

template LeafExistance(l) {
    signal input root;
    signal input data[l];
    signal input proof_elements[k], proof_positions[k];
}

component hasher = MimcSponge(l, 220, 1);
hasher.ins <== data;
hasher.k <== 1;


component main = BabyRoll(1);