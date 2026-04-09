ParticleDefinitions[GaugeES] = {

  {VB,  {Description -> "B-Boson"}},
  {VWB, {Description -> "W-Bosons"}},
  {VG,  {Description -> "Gluon"}},

  {gB,  {Description -> "B-Boson Ghost"}},
  {gWB, {Description -> "W-Boson Ghost"}},
  {gG,  {Description -> "Gluon Ghost"}},

  {uL,  {Description -> "Left-Up-Quark"}},
  {dL,  {Description -> "Left-Down-Quark"}},
  {uR,  {Description -> "Right-Up-Quark"}},
  {dR,  {Description -> "Right-Down-Quark"}},

  {vL,  {Description -> "Left-Lepton"}},
  {eL,  {Description -> "Left-Electron"}},
  {eR,  {Description -> "Right-Electron"}},



  {Fd1, {
    PDG -> {0,0,0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> -1/3,
    FeynArtsNr -> 201,
    LaTeX -> "d_L",
    OutputName -> "Fd1"
  }},
  {Fu1, {
    PDG -> {0,0,0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 2/3,
    FeynArtsNr -> 202,
    LaTeX -> "u_L",
    OutputName -> "Fu1"
  }},
  {Fe1, {
    PDG -> {0,0,0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> -1,
    FeynArtsNr -> 203,
    LaTeX -> "e_L",
    OutputName -> "Fe1"
  }},
  {Fv1, {
    PDG -> {0,0,0},
    Mass -> {0,0,0},
    Width -> {0,0,0},
    ElectricCharge -> 0,
    FeynArtsNr -> 204,
    LaTeX -> "\nu_L",
    OutputName -> "Fv1"
  }},
  {Fd2, {
    PDG -> {0,0,0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> -1/3,
    FeynArtsNr -> 205,
    LaTeX -> "d_R",
    OutputName -> "Fd2"
  }},
  {Fu2, {
    PDG -> {0,0,0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 2/3,
    FeynArtsNr -> 206,
    LaTeX -> "u_R",
    OutputName -> "Fu2"
  }},
  {Fe2, {
    PDG -> {0,0,0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> -1,
    FeynArtsNr -> 207,
    LaTeX -> "e_R",
    OutputName -> "Fe2"
  }},
  {Hs,  {Description -> "Higgs doublet s"}},
  {H1,  {Description -> "Higgs doublet 1"}},
  {H2,  {Description -> "Higgs doublet 2"}},
  {Ha,  {Description -> "Inert Higgs doublet"}},

  {Hs0, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    FeynArtsNr -> 101,
    LaTeX -> "H_s^0",
    OutputName -> "Hs0"
  }},
  {Hsp, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 1,
    FeynArtsNr -> 102,
    LaTeX -> "H_s^+",
    OutputName -> "Hsp"
  }},

  {Ha0, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    FeynArtsNr -> 103,
    LaTeX -> "H_a^0",
    OutputName -> "Ha0"
  }},
  {Hap, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 1,
    FeynArtsNr -> 104,
    LaTeX -> "H_a^+",
    OutputName -> "Hap"
  }},

  {H10, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    FeynArtsNr -> 105,
    LaTeX -> "H_1^0",
    OutputName -> "H10"
  }},
  {H1p, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 1,
    FeynArtsNr -> 106,
    LaTeX -> "H_1^+",
    OutputName -> "H1p"
  }},

  {H20, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    FeynArtsNr -> 107,
    LaTeX -> "H_2^0",
    OutputName -> "H20"
  }},
  {H2p, {
    PDG -> {0},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 1,
    FeynArtsNr -> 108,
    LaTeX -> "H_2^+",
    OutputName -> "H2p"
  }}
};


ParticleDefinitions[EWSB] = {

  {VP, {
    Description -> "Photon",
    PDG -> {22},
    Mass -> 0,
    Width -> 0,
    ElectricCharge -> 0,
    LaTeX -> "\\gamma",
    OutputName -> "A"
  }},

  {VZ, {
    Description -> "Z-Boson",
    Goldstone -> Ah[{1}],
    PDG -> {23},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    LaTeX -> "Z",
    OutputName -> "Z"
  }},

  {VWp, {
    Description -> "W+ - Boson",
    Goldstone -> Hp[{1}],
    PDG -> {24},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 1,
    LaTeX -> {"W^+","W^-"},
    OutputName -> {"Wp","Wm"}
  }},

  {VG, {
    Description -> "Gluon",
    PDG -> {21},
    Mass -> 0,
    Width -> 0,
    ElectricCharge -> 0,
    LaTeX -> "g",
    OutputName -> "g"
  }},

  {gP, {
    Description -> "Photon Ghost",
    PDG -> {0},
    Mass -> 0,
    Width -> 0,
    ElectricCharge -> 0,
    LaTeX -> "\\eta^{\\gamma}",
    OutputName -> "gA"
  }},

  {gZ, {
    Description -> "Z-Boson Ghost",
    PDG -> {0},
    Mass -> Mass[VZ],
    Width -> Automatic,
    ElectricCharge -> 0,
    LaTeX -> "\\eta^Z",
    OutputName -> "gZ"
  }},

  {gWp, {
    Description -> "Positive W+ - Boson Ghost",
    PDG -> {0},
    Mass -> Mass[VWp],
    Width -> Automatic,
    ElectricCharge -> 1,
    LaTeX -> "\\eta^+",
    OutputName -> "gWp"
  }},

  {gWpC, {
    Description -> "Negative W+ - Boson Ghost",
    PDG -> {0},
    Mass -> Mass[VWp],
    Width -> Automatic,
    ElectricCharge -> -1,
    LaTeX -> "\\eta^-",
    OutputName -> "gWC"
  }},

  {gG, {
    Description -> "Gluon Ghost",
    PDG -> {0},
    Mass -> 0,
    Width -> 0,
    ElectricCharge -> 0,
    LaTeX -> "\\eta^G",
    OutputName -> "gG"
  }},

  {Fd, {
    Description -> "Down-Quarks",
    PDG -> {1, 3, 5},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> -1/3,
    FeynArtsNr -> 4,
    LaTeX -> "d",
    OutputName -> "d"
  }},

  {Fu, {
    Description -> "Up-Quarks",
    PDG -> {2, 4, 6},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 2/3,
    FeynArtsNr -> 3,
    LaTeX -> "u",
    OutputName -> "u"
  }},

  {Fe, {
    Description -> "Leptons",
    PDG -> {11, 13, 15},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> -1,
    FeynArtsNr -> 2,
    LaTeX -> "e",
    OutputName -> "e"
  }},

  {Fv, {
    Description -> "Neutrinos",
    PDG -> {12, 14, 16},
    Mass -> {0, 0, 0},
    Width -> {0, 0, 0},
    ElectricCharge -> 0,
    FeynArtsNr -> 1,
    LaTeX -> "\\nu",
    OutputName -> "nu"
  }},

  {HhSM, {
    PDG -> {25, 35, 45},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    FeynArtsNr -> 1,
    LaTeX -> {"h_1","h_2","h_3"},
    OutputName -> {"h1","h2","h3"}
  }},

  {Ah, {
    PDG -> {0, 36, 46},
    Mass -> {0, Automatic, Automatic},
    Width -> {0, Automatic, Automatic},
    ElectricCharge -> 0,
    FeynArtsNr -> 2,
    LaTeX -> {"G^0","A_1^0","A_2^0"},
    OutputName -> {"G0","A1","A2"}
  }},

  {Hp, {
    PDG -> {0, 37, 47},
    Mass -> {0, Automatic, Automatic},
    Width -> {0, Automatic, Automatic},
    ElectricCharge -> 1,
    FeynArtsNr -> 3,
    LaTeX -> {"G^+","H_1^+","H_2^+"},
    OutputName -> {"Gp","Hp1","Hp2"}
  }},

  {hha, {
    PDG -> {9900035},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    FeynArtsNr -> 8,
    LaTeX -> "h_a",
    OutputName -> "hha"
  }},

  {siga, {
    PDG -> {9900036},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 0,
    FeynArtsNr -> 9,
    LaTeX -> "A_a^0",
    OutputName -> "Aha"
  }},

  {Hap, {
    PDG -> {9900037},
    Mass -> Automatic,
    Width -> Automatic,
    ElectricCharge -> 1,
    FeynArtsNr -> 10,
    LaTeX -> {"H_a^+","H_a^-"},
    OutputName -> {"Hap","Ham"}
  }}
};


WeylFermionAndIndermediate = {

  {dL,   {LaTeX -> "d_L"}},
  {uL,   {LaTeX -> "u_L"}},
  {eL,   {LaTeX -> "e_L"}},
  {vL,   {LaTeX -> "\\nu_L"}},

  {dR,   {LaTeX -> "d_R"}},
  {uR,   {LaTeX -> "u_R"}},
  {eR,   {LaTeX -> "e_R"}},

  {DL,   {LaTeX -> "D_L"}},
  {DR,   {LaTeX -> "D_R"}},
  {UL,   {LaTeX -> "U_L"}},
  {UR,   {LaTeX -> "U_R"}},
  {EL,   {LaTeX -> "E_L"}},
  {ER,   {LaTeX -> "E_R"}},

  {sigs, {LaTeX -> "A_s"}},
  {hhs,  {LaTeX -> "h_s"}},
  {sig1, {LaTeX -> "A_1"}},
  {hh1,  {LaTeX -> "h_1"}},
  {sig2, {LaTeX -> "A_2"}},
  {hh2,  {LaTeX -> "h_2"}},
  {siga, {LaTeX -> "A_a"}},
  {hha,  {LaTeX -> "h_a"}},

  {Hsp,  {LaTeX -> "H_s^+"}},
  {H1p,  {LaTeX -> "H_1^+"}},
  {H2p,  {LaTeX -> "H_2^+"}},
  {Hap,  {LaTeX -> "H_a^+"}},

  {Hs0,  {LaTeX -> "H_s^0"}},
  {H10,  {LaTeX -> "H_1^0"}},
  {H20,  {LaTeX -> "H_2^0"}},
  {Ha0,  {LaTeX -> "H_a^0"}},

  {Hs,   {LaTeX -> "H_s"}},
  {H1,   {LaTeX -> "H_1"}},
  {H2,   {LaTeX -> "H_2"}},
  {Ha,   {LaTeX -> "H_a"}},

  {l,    {LaTeX -> "l"}},
  {q,    {LaTeX -> "q"}},
  {d,    {LaTeX -> "d"}},
  {u,    {LaTeX -> "u"}},
  {e,    {LaTeX -> "e"}},

  {VB,   {LaTeX -> "B"}},
  {VG,   {LaTeX -> "G"}},
  {VWB,  {LaTeX -> "W"}}
};
