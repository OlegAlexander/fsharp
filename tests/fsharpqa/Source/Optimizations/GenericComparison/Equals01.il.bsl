
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern FSharp.Core
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly Equals01
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.FSharpInterfaceDataVersionAttribute::.ctor(int32,
                                                                                                      int32,
                                                                                                      int32) = ( 01 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 01 00 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public FSharpSignatureData.Equals01
{
  // Offset: 0x00000000 Length: 0x00000230
}
.mresource public FSharpOptimizationData.Equals01
{
  // Offset: 0x00000238 Length: 0x000000B6
}
.module Equals01.dll
// MVID: {61F0294F-0759-50B1-A745-03834F29F061}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07450000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi sealed Equals01
       extends [mscorlib]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .class abstract auto ansi sealed nested public EqualsMicroPerfAndCodeGenerationTests
         extends [mscorlib]System.Object
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
    .method public static bool  f4_triple() cil managed
    {
      // Code size       24 (0x18)
      .maxstack  4
      .locals init ([0] bool x,
               [1] int32 i)
      .language '{AB4F38C9-B6E6-43BA-BE3B-58080B2CCCE3}', '{994B45C4-E6E9-11D2-903F-00C04FA302A1}', '{5A869D0B-6611-11D3-BD2A-0000F80849BD}'
      .line 5,5 : 8,29 'C:\\GitHub\\dsyme\\fsharp\\tests\\fsharpqa\\source\\Optimizations\\GenericComparison\\Equals01.fsx'
      IL_0000:  ldc.i4.0
      IL_0001:  stloc.0
      .line 6,6 : 8,24 ''
      IL_0002:  nop
      .line 7,7 : 8,24 ''
      IL_0003:  nop
      .line 8,8 : 8,11 ''
      IL_0004:  ldc.i4.0
      IL_0005:  stloc.1
      IL_0006:  br.s       IL_000e

      .line 9,9 : 12,26 ''
      IL_0008:  ldc.i4.0
      IL_0009:  stloc.0
      IL_000a:  ldloc.1
      IL_000b:  ldc.i4.1
      IL_000c:  add
      IL_000d:  stloc.1
      .line 8,8 : 18,20 ''
      IL_000e:  ldloc.1
      IL_000f:  ldc.i4     0x989681
      IL_0014:  blt.s      IL_0008

      .line 10,10 : 8,9 ''
      IL_0016:  ldloc.0
      IL_0017:  ret
    } // end of method EqualsMicroPerfAndCodeGenerationTests::f4_triple

  } // end of class EqualsMicroPerfAndCodeGenerationTests

} // end of class Equals01

.class private abstract auto ansi sealed '<StartupCode$Equals01>'.$Equals01$fsx
       extends [mscorlib]System.Object
{
} // end of class '<StartupCode$Equals01>'.$Equals01$fsx


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************