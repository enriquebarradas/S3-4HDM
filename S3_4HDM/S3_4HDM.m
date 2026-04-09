Off[General::spell];

Model`Name      = "S3_4HDM";
Model`NameLaTeX = "S3 4HDM with inert doublet";
Model`Authors   = "Reconstructed from 4HDM_S3 base; cleaned by ChatGPT";
Model`Date      = "2026-03-31";

NameOfStates = {GaugeES, EWSB};

(* ------------------------------------------- *)
(* Global symmetry                             *)
(* ------------------------------------------- *)

Global[[1]] = {Z[2], Z2};
Z2p = 1;
Z2m = -1;

(* ------------------------------------------- *)
(* Gauge groups                                *)
(* ------------------------------------------- *)

Gauge[[1]] = {B,   U[1], hypercharge, g1, False, 1};
Gauge[[2]] = {WB, SU[2], left,        g2, True,  1};
Gauge[[3]] = {G,  SU[3], color,       g3, False, 1};

(* ------------------------------------------- *)
(* Fermion fields                              *)
(* ------------------------------------------- *)

FermionFields[[1]] = {q, 3, {uL, dL},   1/6, 2,  3, Z2p};
FermionFields[[2]] = {l, 3, {vL, eL},  -1/2, 2,  1, Z2p};
FermionFields[[3]] = {d, 3, conj[dR],   1/3, 1, -3, Z2p};
FermionFields[[4]] = {u, 3, conj[uR],  -2/3, 1, -3, Z2p};
FermionFields[[5]] = {e, 3, conj[eR],     1, 1,  1, Z2p};

(* ------------------------------------------- *)
(* Scalar fields                               *)
(* ------------------------------------------- *)

ScalarFields[[1]] = {Hs, 1, {Hsp, Hs0}, 1/2, 2, 1, Z2p};
ScalarFields[[2]] = {Ha, 1, {Hap, Ha0}, 1/2, 2, 1, Z2m};
ScalarFields[[3]] = {H1, 1, {H1p, H10}, 1/2, 2, 1, Z2p};
ScalarFields[[4]] = {H2, 1, {H2p, H20}, 1/2, 2, 1, Z2p};

(* ------------------------------------------- *)
(* Lagrangian before EWSB                      *)
(* ------------------------------------------- *)

DEFINITION[GaugeES][LagrangianInput]= {
    {LagScalar,{AddHC->False}},
   {LagYuk,{AddHC->True}}
};

LagScalar = (-1)*(
 mu1 (conj[H1].H1+conj[H2].H2)+ mu0 (conj[Hs].Hs)+ mu2 (conj[Ha].Ha)+ \
 lam1 ((conj[H1].H1).(conj[H1].H1)+(conj[H2].H2).(conj[H1].H1)+(conj[H1].H1).(conj[H2].H2)+(conj[H2].H2).(conj[H2].H2))+ \
 lam2 ((conj[H1].H2).(conj[H1].H2)-(conj[H2].H1).(conj[H1].H2)-(conj[H1].H2).(conj[H2].H1)+(conj[H2].H1).(conj[H2].H1))+ \
lam3 ((conj[H1].H1).(conj[H1].H1)-(conj[H2].H2).(conj[H1].H1)-(conj[H1].H1).(conj[H2].H2)+(conj[H2].H2).(conj[H2].H2)+(conj[H1].H2).(conj[H1].H2)+(conj[H2].H1).(conj[H1].H2)+(conj[H1].H2).(conj[H2].H1)+(conj[H2].H1).(conj[H2].H1))+ \
 lam4 ((conj[Hs].H1).(conj[H1].H2)+(conj[Hs].H1).(conj[H2].H1)+(conj[Hs].H2).(conj[H1].H1)-(conj[Hs].H2).(conj[H2].H2)+(conj[H2].H1).(conj[H1].Hs)+(conj[H1].H2).(conj[H1].Hs)+(conj[H1].H1).(conj[H2].Hs)-(conj[H2].H2).(conj[H2].Hs))+ \
 lam5 ((conj[Hs].Hs).(conj[H1].H1)+(conj[Hs].Hs).(conj[H2].H2))+ \
 lam6 ((conj[Hs].H1).(conj[H1].Hs)+(conj[Hs].H2).(conj[H2].Hs))+ \
 lam7 ((conj[Hs].H1).(conj[Hs].H1)+(conj[Hs].H2).(conj[Hs].H2)+(conj[H1].Hs).(conj[H1].Hs)+(conj[H2].Hs).(conj[H2].Hs))+ \
 lam8 ((conj[Hs].Hs).(conj[Hs].Hs))+ \
 lam10 ((conj[Ha].Ha).(conj[H1].H1)+(conj[Ha].Ha).(conj[H2].H2))+ \
 lam11 ((conj[Ha].H1).(conj[H1].Ha)+(conj[Ha].H2).(conj[H2].Ha))+ \
 lam12 ((conj[Ha].H1).(conj[Ha].H1)+(conj[Ha].H2).(conj[Ha].H2)+(conj[H1].Ha).(conj[H1].Ha)+(conj[H2].Ha).(conj[H2].Ha))+ \
 lam13 ((conj[Ha].Ha).(conj[Ha].Ha))+ \
 lam14 ((conj[Hs].Ha).(conj[Ha].Hs))
)

LagYuk = (-1)*( Yd conj[Hs].d.q + Ye conj[Hs].e.l - Yu Hs.u.q  )

(* ------------------------------------------- *)
(* Gauge sector after EWSB                     *)
(* ------------------------------------------- *)

DEFINITION[EWSB][GaugeSector] = {
  {{VB, VWB[3]},     {VP, VZ},          ZZ},
  {{VWB[1], VWB[2]}, {VWp, conj[VWp]},  ZW}
};

(* ------------------------------------------- *)
(* VEVs                                        *)
(* ------------------------------------------- *)

DEFINITION[EWSB][VEVs] = {
  {Hs0, {v1, 1/Sqrt[2]},       {sigs, I/Sqrt[2]}, {hhs, 1/Sqrt[2]}},
  {H10, {v2, Sqrt[3]/Sqrt[2]}, {sig1, I/Sqrt[2]}, {hh1, 1/Sqrt[2]}},
  {H20, {v2, 1/Sqrt[2]},       {sig2, I/Sqrt[2]}, {hh2, 1/Sqrt[2]}},
  {Ha0, {0, 0},                {siga, I/Sqrt[2]}, {hha, 1/Sqrt[2]}}
};

(* ------------------------------------------- *)
(* Matter sector                               *)
(* ------------------------------------------- *)

DEFINITION[EWSB][MatterSector] = {
  {{hhs, hh1, hh2},    {HhSM, ZH}},
  {{sigs, sig1, sig2}, {Ah,   ZA}},
  {{Hsp, H1p, H2p},    {Hp,   ZP}},

  {{{dL}, {conj[dR]}}, {{DL, Vd}, {DR, Ud}}},
  {{{uL}, {conj[uR]}}, {{UL, Vu}, {UR, Uu}}},
  {{{eL}, {conj[eR]}}, {{EL, Ve}, {ER, Ue}}}
};

(* ------------------------------------------- *)
(* Dirac spinors                               *)
(* ------------------------------------------- *)

DEFINITION[EWSB][DiracSpinors] = {
  Fd -> {DL, conj[DR]},
  Fe -> {EL, conj[ER]},
  Fu -> {UL, conj[UR]},
  Fv -> {vL, 0}
};
DEFINITION[GaugeES][DiracSpinors] = {
  Fd1 -> {dL, 0},
  Fu1 -> {uL, 0},
  Fe1 -> {eL, 0},
  Fv1 -> {vL, 0},
  Fd2 -> {0, dR},
  Fu2 -> {0, uR},
  Fe2 -> {0, eR}
};
