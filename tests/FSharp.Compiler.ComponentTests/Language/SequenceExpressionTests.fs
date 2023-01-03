﻿// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

module FSharp.Compiler.ComponentTests.Language.SequenceExpressionTests

open Xunit
open FSharp.Test.Compiler


[<Fact>]
let ``A sequence expression can yield from with clause``() =
    FSharp """
module SequenceTryWithTest
let sum =
    seq {
        for x in [0;1] do       
            try
                yield (10 /  x)
            with _ ->
                yield 100
    }
    |> Seq.sum
if sum <> 110 then
    failwith $"Sum was {sum} instead"
    """
    |> compileAndRun
    |> shouldSucceed
    |> ignore

[<Fact>]
let ``A sequence expression can yield from try and have empty with``() =
    FSharp """
module SequenceTryWithTest
let sum =
    seq {
        for x in [1;0] do       
            try
                yield (10 /  x)
            with _ ->
                printfn "Crash"
    }
    |> Seq.sum
if sum <> 10 then
    failwith $"Sum was {sum} instead"
    """
    |> compileAndRun
    |> shouldSucceed
    |> ignore

[<Fact>]
let ``A sequence expression can yield from with and have empty try``() =
    FSharp """
module SequenceTryWithTest
let sum =
    seq {
        for x in [1;0] do       
            try
                let result = (10 /  x)
                printfn "%A" result
            with _ ->
                yield 100
    }
    |> Seq.sum
if sum <> 100 then
    failwith $"Sum was {sum} instead"
    """
    |> compileAndRun
    |> shouldSucceed
    |> ignore


[<Fact>]
let ``A sequence expression can have implicit yields in try-with``() =
    FSharp """
module SequenceTryWithTest
let sum =
    seq {
        for x in [0;1] do       
            try
                (10 /  x)
            with _ ->
                100
    }
    |> Seq.sum
if sum <> 110 then
    failwith $"Sum was {sum} instead"
    """
    |> compileAndRun
    |> shouldSucceed
    |> ignore
 