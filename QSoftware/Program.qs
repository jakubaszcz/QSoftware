namespace QSoftware {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    function RToInt(r : Result) : Int {
        if (r == One) { return 1; } else { return 0; }
    }

    @EntryPoint()
    operation HelloQ() : Unit {

        mutable sum = 0;

        // Boucle tant que la somme n'est pas 10
        repeat {
            use a = Qubit();

            H(a);                   // met en superposition
            let resultA = M(a);     // mesure
            let ai = RToInt(resultA);

            set sum += ai;

            Message($"Mesuré: {ai}, somme actuelle: {sum}, reste: {10 - sum}");
        } until (sum == 10);

        Message("Finish!");
    }
}
