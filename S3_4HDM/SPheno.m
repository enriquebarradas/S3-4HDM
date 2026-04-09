(* ::Package:: *)

(*
   SPheno.m for S3_4HDM
   Conservative low-energy version intended to avoid the RGE-entanglement
   problems of lam1/lam3 seen in the full MakeSPheno[] run.
*)

OnlyLowEnergySPheno = True;

(* ----------------------------------------------------------- *)
(* Free input parameters                                       *)
(* ----------------------------------------------------------- *)

MINPAR = {
  {1,  TanBetaInput},
  {2,  mu2Input},
  {11, lam1Input},
  {12, lam2Input},
  {13, lam3Input},
  {14, lam4Input},
  {15, lam5Input},
  {16, lam6Input},
  {17, lam7Input},
  {18, lam8Input},
  {20, lam10Input},
  {21, lam11Input},
  {22, lam12Input},
  {23, lam13Input},
  {24, lam14Input}
};

EXTPAR = {};

(* ----------------------------------------------------------- *)
(* Tadpoles                                                    *)
(* ----------------------------------------------------------- *)

ParametersToSolveTadpoles = {mu0, mu1};

(* ----------------------------------------------------------- *)
(* Low-scale input                                             *)
(* ----------------------------------------------------------- *)

BoundaryLowScaleInput = {
  {TanBeta, TanBetaInput},
  {mu2,     mu2Input},
  {lam1,    lam1Input},
  {lam2,    lam2Input},
  {lam3,    lam3Input},
  {lam4,    lam4Input},
  {lam5,    lam5Input},
  {lam6,    lam6Input},
  {lam7,    lam7Input},
  {lam8,    lam8Input},
  {lam10,   lam10Input},
  {lam11,   lam11Input},
  {lam12,   lam12Input},
  {lam13,   lam13Input},
  {lam14,   lam14Input}
};

(* ----------------------------------------------------------- *)
(* Matching to SM quantities                                   *)
(* ----------------------------------------------------------- *)

DEFINITION[MatchingConditions] = {
  {v,  vSM},
  {Ye, YeSM},
  {Yd, YdSM},
  {Yu, YuSM},
  {g1, g1SM},
  {g2, g2SM},
  {g3, g3SM}
};

(* ----------------------------------------------------------- *)
(* Decays                                                      *)
(* ----------------------------------------------------------- *)

ListDecayParticles = {
  Fu, Fe, Fd,
  VZ, VWp,
  HhSM, Ah, Hp,
  hha, siga, Hap
};

ListDecayParticles3B = {
  {Fu, "Fu.f90"},
  {Fe, "Fe.f90"},
  {Fd, "Fd.f90"}
};

(* ----------------------------------------------------------- *)
(* Optional flags                                               *)
(* ----------------------------------------------------------- *)

FlagLoopContributions = True;
