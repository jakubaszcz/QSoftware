using System;
using System.Threading.Tasks;
using Microsoft.Quantum.Simulation.Simulators;
using Microsoft.Quantum.Simulation.Core;


class Program
{
    static async Task Main(string[] args)
    {
        using var sim = new QuantumSimulator();

        // Setting up the cities
        string[] cities = { "London", "Paris", "Berlin", "Madrid", "Kyiv", "Rome" };

        // Symmetric 6×6 distance matrix in kilometers (approximate, for testing)
        double[,] distances = {
            // London, Paris, Berlin, Madrid, Kyiv, Rome
            {    0,  344,  930, 1260, 2130, 1435 }, // London
            {  344,    0, 1050, 1050, 2020, 1100 }, // Paris
            {  930, 1050,    0, 1860, 1200, 1180 }, // Berlin
            { 1260, 1050, 1860,    0, 2860, 1360 }, // Madrid
            { 2130, 2020, 1200, 2860,    0, 1700 }, // Kyiv
            { 1435, 1100, 1180, 1360, 1700,    0 }  // Rome
        };

        // Create arrays for Q#
        var matrices =
            new QArray<QArray<double>>(
                Enumerable.Range(0, distances.GetLength(0))
                    .Select(i =>
                        new QArray<double>(
                            Enumerable.Range(0, distances.GetLength(1))
                                .Select(j => distances[i, j])
                        )
                    )
                );

    var order = await QSoftware.UseMatrix.Run(sim, matrices);

    string[] oCities = order.ToArray();

    for (int i = 0; i < oCities.Length; i++) Console.WriteLine($"la : {oCities[i]}");
}
}
