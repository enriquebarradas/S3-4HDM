ParameterDefinitions = {

  (* ----------------------------- *)
  (* Standard gauge / EW inputs    *)
  (* ----------------------------- *)

  {aEWinv, {
     Description -> "inverse weak coupling constant at mZ",
     Real -> True,
     Value -> 137.035999679,
     LesHouches -> {SMINPUTS, 1},
     LaTeX -> "\\alpha^{-1}",
     OutputName -> aEWinv
  }},

  {AlphaS, {
     Description -> "Alpha Strong",
     Real -> True,
     Value -> 0.1184,
     LesHouches -> {SMINPUTS, 3},
     LaTeX -> "\\alpha_S",
     OutputName -> aS
  }},

  {Gf, {
     Description -> "Fermi's constant",
     Real -> True,
     Value -> 1.1663787*10^-5,
     LesHouches -> {SMINPUTS, 2},
     LaTeX -> "G_F",
     OutputName -> Gf
  }},

  {e, {
     Description -> "electric charge",
     DependenceNum -> 2*Sqrt[Pi/aEWinv],
     Real -> True,
     LaTeX -> "e",
     OutputName -> el
  }},

  {ThetaW, {
     Description -> "Weinberg-Angle",
     DependenceNum -> ArcSin[Sqrt[1 - Mass[VWp]^2/Mass[VZ]^2]],
     Real -> True,
     LaTeX -> "\\theta_W",
     OutputName -> TW
  }},

  {g1, {
     Description -> "Hypercharge-Coupling",
     DependenceNum -> e*Sec[ThetaW],
     GUTnormalization -> Sqrt[3/5],
     Real -> True,
     LesHouches -> {GAUGE, 1},
     LaTeX -> "g_1",
     OutputName -> g1
  }},

  {g2, {
     Description -> "Left-Coupling",
     DependenceNum -> e*Csc[ThetaW],
     Real -> True,
     LesHouches -> {GAUGE, 2},
     LaTeX -> "g_2",
     OutputName -> g2
  }},

  {g3, {
     Description -> "Strong-Coupling",
     DependenceNum -> 2*Sqrt[Pi*AlphaS],
     Real -> True,
     LesHouches -> {GAUGE, 3},
     LaTeX -> "g_3",
     OutputName -> g3
  }},

  (* ----------------------------- *)
  (* Scalar potential parameters   *)
  (* ----------------------------- *)

  {mu0, {
     Real -> True,
     LesHouches -> {HMIX, 20},
     LaTeX -> "\\mu_0",
     OutputName -> mu0
  }},

  {mu1, {
     Real -> True,
     LesHouches -> {HMIX, 21},
     LaTeX -> "\\mu_1",
     OutputName -> mu1
  }},

  {mu2, {
     Real -> True,
     LesHouches -> {HMIX, 22},
     LaTeX -> "\\mu_2",
     OutputName -> mu2
  }},

  {lam1, {
     Real -> True,
     LesHouches -> {HMIX, 31},
     LaTeX -> "\\lambda_1",
     OutputName -> lam1
  }},

  {lam2, {
     Real -> True,
     LesHouches -> {HMIX, 32},
     LaTeX -> "\\lambda_2",
     OutputName -> lam2
  }},

  {lam3, {
     Real -> True,
     LesHouches -> {HMIX, 33},
     LaTeX -> "\\lambda_3",
     OutputName -> lam3
  }},

  {lam4, {
     Real -> True,
     LesHouches -> {HMIX, 34},
     LaTeX -> "\\lambda_4",
     OutputName -> lam4
  }},

  {lam5, {
     Real -> True,
     LesHouches -> {HMIX, 35},
     LaTeX -> "\\lambda_5",
     OutputName -> lam5
  }},

  {lam6, {
     Real -> True,
     LesHouches -> {HMIX, 36},
     LaTeX -> "\\lambda_6",
     OutputName -> lam6
  }},

  {lam7, {
     Real -> True,
     LesHouches -> {HMIX, 37},
     LaTeX -> "\\lambda_7",
     OutputName -> lam7
  }},

  {lam8, {
     Real -> True,
     LesHouches -> {HMIX, 38},
     LaTeX -> "\\lambda_8",
     OutputName -> lam8
  }},

  {lam10, {
     Real -> True,
     LesHouches -> {HMIX, 40},
     LaTeX -> "\\lambda_{10}",
     OutputName -> lam10
  }},

  {lam11, {
     Real -> True,
     LesHouches -> {HMIX, 41},
     LaTeX -> "\\lambda_{11}",
     OutputName -> lam11
  }},

  {lam12, {
     Real -> True,
     LesHouches -> {HMIX, 42},
     LaTeX -> "\\lambda_{12}",
     OutputName -> lam12
  }},

  {lam13, {
     Real -> True,
     LesHouches -> {HMIX, 43},
     LaTeX -> "\\lambda_{13}",
     OutputName -> lam13
  }},

  {lam14, {
     Real -> True,
     LesHouches -> {HMIX, 44},
     LaTeX -> "\\lambda_{14}",
     OutputName -> lam14
  }},

  (* ----------------------------- *)
  (* EWSB / VEV sector            *)
  (* ----------------------------- *)

  {TanBeta, {
     Description -> "Tan Beta",
     Real -> True,
     LesHouches -> {HMIX, 2},
     LaTeX -> "\\tan\\beta",
     OutputName -> tb
  }},

  {v, {
     Description -> "EW-VEV",
     DependenceNum -> 2*Mass[VWp]/g2,
     Real -> True,
     LesHouches -> {HMIX, 3},
     LaTeX -> "v",
     OutputName -> v
  }},

  (* Consistent with the EWSB choice in S3_4HDM_corregido.m:
     <Hs0> = v1/Sqrt[2], <H10> = Sqrt[3] v2/Sqrt[2], <H20> = v2/Sqrt[2],
     so that v^2 = v1^2 + 4 v2^2 and TanBeta = 2 v2 / v1. *)
  {v1, {
     Real -> True,
     DependenceNum -> v/Sqrt[1 + TanBeta^2],
     LesHouches -> {HMIX, 102},
     LaTeX -> "v_1",
     OutputName -> v1
  }},

  {v2, {
     Real -> True,
     DependenceNum -> (TanBeta*v)/(2*Sqrt[1 + TanBeta^2]),
     LesHouches -> {HMIX, 103},
     LaTeX -> "v_2",
     OutputName -> v2
  }},

  {betaH, {
     Real -> True,
     DependenceNum -> ArcTan[TanBeta],
     LesHouches -> {HMIX, 10},
     LaTeX -> "\\beta",
     OutputName -> betaH
  }},

  (* ----------------------------- *)
  (* Fermion mixing matrices       *)
  (* ----------------------------- *)

  {Vd, {
     Description -> "Left-Down-Mixing-Matrix",
     Real -> False,
     LesHouches -> VDLMIX,
     LaTeX -> "V_d",
     OutputName -> ZDL
  }},

  {Ud, {
     Description -> "Right-Down-Mixing-Matrix",
     Real -> False,
     LesHouches -> UDRMIX,
     LaTeX -> "U_d",
     OutputName -> ZDR
  }},

  {Vu, {
     Description -> "Left-Up-Mixing-Matrix",
     Real -> False,
     LesHouches -> VULMIX,
     LaTeX -> "V_u",
     OutputName -> ZUL
  }},

  {Uu, {
     Description -> "Right-Up-Mixing-Matrix",
     Real -> False,
     LesHouches -> UURMIX,
     LaTeX -> "U_u",
     OutputName -> ZUR
  }},

  {Ve, {
     Description -> "Left-Lepton-Mixing-Matrix",
     Real -> False,
     LesHouches -> VELMIX,
     LaTeX -> "V_e",
     OutputName -> ZEL
  }},

  {Ue, {
     Description -> "Right-Lepton-Mixing-Matrix",
     Real -> False,
     LesHouches -> UERMIX,
     LaTeX -> "U_e",
     OutputName -> ZER
  }},

  (* ----------------------------- *)
  (* Yukawas                       *)
  (* ----------------------------- *)

  (* Only Hs couples to SM fermions in the current stable stage. *)
  {Yd, {
     Description -> "Down-Yukawa-Coupling",
     LesHouches -> YD,
     DependenceNum -> Sqrt[2]/v1 * {
       {Mass[Fd,1], 0, 0},
       {0, Mass[Fd,2], 0},
       {0, 0, Mass[Fd,3]}
     },
     LaTeX -> "Y_d",
     OutputName -> Yd
  }},

  {Yu, {
     Description -> "Up-Yukawa-Coupling",
     LesHouches -> YU,
     DependenceNum -> Sqrt[2]/v1 * {
       {Mass[Fu,1], 0, 0},
       {0, Mass[Fu,2], 0},
       {0, 0, Mass[Fu,3]}
     },
     LaTeX -> "Y_u",
     OutputName -> Yu
  }},

  {Ye, {
     Description -> "Lepton-Yukawa-Coupling",
     LesHouches -> YE,
     DependenceNum -> Sqrt[2]/v1 * {
       {Mass[Fe,1], 0, 0},
       {0, Mass[Fe,2], 0},
       {0, 0, Mass[Fe,3]}
     },
     LaTeX -> "Y_e",
     OutputName -> Ye
  }},

  (* ----------------------------- *)
  (* Scalar mixing matrices        *)
  (* ----------------------------- *)

  (* Do not use reserved standard descriptions here: the active scalar sector is 3x3. *)
  {ZH, {
     Real -> True,
     LesHouches -> SCALARMIX,
     LaTeX -> "Z^H",
     OutputName -> ZH
  }},

  {ZA, {
     Real -> True,
     LesHouches -> PSEUDOSCALARMIX,
     LaTeX -> "Z^A",
     OutputName -> ZA
  }},

  {ZP, {
     Real -> True,
     LesHouches -> CHARGEMIX,
     LaTeX -> "Z^+",
     OutputName -> ZP
  }},

  {ZW, {
     Description -> "W Mixing Matrix",
     Dependence -> {{1/Sqrt[2], 1/Sqrt[2]}, {-I/Sqrt[2], I/Sqrt[2]}},
     Real -> False,
     LaTeX -> "Z^W",
     OutputName -> ZW
  }},

  {ZZ, {
     Description -> "Photon-Z Mixing Matrix",
     Dependence -> {{Cos[ThetaW], -Sin[ThetaW]}, {Sin[ThetaW], Cos[ThetaW]}},
     Real -> True,
     LaTeX -> "Z^{\\gamma Z}",
     OutputName -> ZZ
  }}
};
