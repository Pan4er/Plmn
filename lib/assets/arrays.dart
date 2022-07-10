class Arrays {
  List na = List(34);
  List nb = List(43);
  List nc = List(40);
  List na2 = List(20);
  List nb2 = List(34);
  List nb3 = List(38);
  List nb4 = List(23);
  List nb5 = List(46);
  List nb6 = List(44);
  List nb7 = List(30);
  List<List> nm = new List.generate(9, (i) => new List(9));

  List ia = List(34);
  List ib = List(43);
  List ic = List(40);
  List ia2 = List(20);
  List ib2 = List(34);
  List ib3 = List(38);
  List ib4 = List(23);
  List ib5 = List(46);
  List ib6 = List(44);
  List ib7 = List(30);

  List ja = List(34);
  List jb = List(43);
  List jc = List(40);
  List ja2 = List(20);
  List jb2 = List(34);
  List jb3 = List(38);
  List jb4 = List(23);
  List jb5 = List(46);
  List jb6 = List(44);
  List jb7 = List(30);

  List n0 = List(9);
  List j0 = List(9);

  double n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, h;

  Arrays() {
    ia[1 - 1] = 0; // +
    ja[1 - 1] = -2; // +
    na[1 - 1] = 0.14632971213167E+00; // +
    ia[2 - 1] = 0; // +
    ja[2 - 1] = -1; // +
    na[2 - 1] = -0.84548187169114E+00; // +
    ia[3 - 1] = 0; // +
    ja[3 - 1] = 0; // +
    na[3 - 1] = -0.37563603672040E+01; // +
    ia[4 - 1] = 0;
    ja[4 - 1] = 1;
    na[4 - 1] = 0.33855169168385E+01;
    ia[5 - 1] = 0;
    ja[5 - 1] = 2;
    na[5 - 1] = -0.95791963387872E+00;
    ia[6 - 1] = 0;
    ja[6 - 1] = 3;
    na[6 - 1] = 0.15772038513228E+00;
    ia[7 - 1] = 0;
    ja[7 - 1] = 4;
    na[7 - 1] = -0.16616417199501E-01;
    ia[8 - 1] = 0;
    ja[8 - 1] = 5;
    na[8 - 1] = 0.81214629983568E-03;
    ia[9 - 1] = 1;
    ja[9 - 1] = -9;
    na[9 - 1] = 0.28319080123804E-03;
    ia[10 - 1] = 1;
    ja[10 - 1] = -7;
    na[10 - 1] = -0.60706301565874E-03;
    ia[11 - 1] = 1;
    ja[11 - 1] = -1;
    na[11 - 1] = -0.18990068218419E-01;
    ia[12 - 1] = 1;
    ja[12 - 1] = 0;
    na[12 - 1] = -0.32529748770505E-01;
    ia[13 - 1] = 1;
    ja[13 - 1] = 1;
    na[13 - 1] = -0.21841717175414E-01;
    ia[14 - 1] = 1;
    ja[14 - 1] = 3;
    na[14 - 1] = -0.52838357969930E-04;
    ia[15 - 1] = 2;
    ja[15 - 1] = -3;
    na[15 - 1] = -0.47184321073267E-03;
    ia[16 - 1] = 2;
    ja[16 - 1] = 0;
    na[16 - 1] = -0.30001780793026E-03;
    ia[17 - 1] = 2;
    ja[17 - 1] = 1;
    na[17 - 1] = 0.47661393906987E-04;
    ia[18 - 1] = 2;
    ja[18 - 1] = 3;
    na[18 - 1] = -0.44141845330846E-05;
    ia[19 - 1] = 2;
    ja[19 - 1] = 17;
    na[19 - 1] = -0.72694996297594E-15;
    ia[20 - 1] = 3;
    ja[20 - 1] = -4;
    na[20 - 1] = -0.31679644845054E-04;
    ia[21 - 1] = 3;
    ja[21 - 1] = 0;
    na[21 - 1] = -0.28270797985312E-05;
    ia[22 - 1] = 3;
    ja[22 - 1] = 6;
    na[22 - 1] = -0.85205128120103E-09;
    ia[23 - 1] = 4;
    ja[23 - 1] = -5;
    na[23 - 1] = -0.22425281908000E-05;
    ia[24 - 1] = 4;
    ja[24 - 1] = -2;
    na[24 - 1] = -0.65171222895601E-06;
    ia[25 - 1] = 4;
    ja[25 - 1] = 10;
    na[25 - 1] = -0.14341729937924E-12;
    ia[26 - 1] = 5;
    ja[26 - 1] = -8;
    na[26 - 1] = -0.40516996860117E-06;
    ia[27 - 1] = 8;
    ja[27 - 1] = -11;
    na[27 - 1] = -0.12734301741641E-08;
    ia[28 - 1] = 8;
    ja[28 - 1] = -6;
    na[28 - 1] = -0.17424871230634E-09;
    ia[29 - 1] = 21;
    ja[29 - 1] = -29;
    na[29 - 1] = -0.68762131295531E-18;
    ia[30 - 1] = 23;
    ja[30 - 1] = -31;
    na[30 - 1] = 0.14478307828521E-19;
    ia[31 - 1] = 29;
    ja[31 - 1] = -38;
    na[31 - 1] = 0.26335781662795E-22;
    ia[32 - 1] = 30;
    ja[32 - 1] = -39;
    na[32 - 1] = -0.11947622640071E-22;
    ia[33 - 1] = 31;
    ja[33 - 1] = -40;
    na[33 - 1] = 0.18228094581404E-23;
    ia[34 - 1] = 32;
    ja[34 - 1] = -41;
    na[34 - 1] = -0.93537087292458E-25;

    j0[1 - 1] = 0;
    n0[1 - 1] = -0.96927686500217E+01;
    j0[2 - 1] = 1;
    n0[2 - 1] = 0.10086655968018E+02;
    j0[3 - 1] = -5;
    n0[3 - 1] = -0.56087911283020E-02;
    j0[4 - 1] = -4;
    n0[4 - 1] = 0.71452738081455E-01;
    j0[5 - 1] = -3;
    n0[5 - 1] = -0.40710498223928E+00;
    j0[6 - 1] = -2;
    n0[6 - 1] = 0.14240819171444E+01;
    j0[7 - 1] = -1;
    n0[7 - 1] = -0.43839511319450E+01;
    j0[8 - 1] = 2;
    n0[8 - 1] = -0.28408632460772E+00;
    j0[9 - 1] = 3;
    n0[9 - 1] = 0.21268463753307E-01;

    ib[1 - 1] = 1;
    jb[1 - 1] = 0;
    nb[1 - 1] = -0.17731742473213E-02;
    ib[2 - 1] = 1;
    jb[2 - 1] = 1;
    nb[2 - 1] = -0.17834862292358E-01;
    ib[3 - 1] = 1;
    jb[3 - 1] = 2;
    nb[3 - 1] = -0.45996013696365E-01;
    ib[4 - 1] = 1;
    jb[4 - 1] = 3;
    nb[4 - 1] = -0.57581259083432E-01;
    ib[5 - 1] = 1;
    jb[5 - 1] = 6;
    nb[5 - 1] = -0.50325278727930E-01;
    ib[6 - 1] = 2;
    jb[6 - 1] = 1;
    nb[6 - 1] = -0.33032641670203E-04;
    ib[7 - 1] = 2;
    jb[7 - 1] = 2;
    nb[7 - 1] = -0.18948987516315E-03;
    ib[8 - 1] = 2;
    jb[8 - 1] = 4;
    nb[8 - 1] = -0.39392777243355E-02;
    ib[9 - 1] = 2;
    jb[9 - 1] = 7;
    nb[9 - 1] = -0.43797295650573E-01;
    ib[10 - 1] = 2;
    jb[10 - 1] = 36;
    nb[10 - 1] = -0.26674547914087E-04;
    ib[11 - 1] = 3;
    jb[11 - 1] = 0;
    nb[11 - 1] = 0.20481737692309E-07;
    ib[12 - 1] = 3;
    jb[12 - 1] = 1;
    nb[12 - 1] = 0.43870667284435E-06;
    ib[13 - 1] = 3;
    jb[13 - 1] = 3;
    nb[13 - 1] = -0.32277677238570E-04;
    ib[14 - 1] = 3;
    jb[14 - 1] = 6;
    nb[14 - 1] = -0.15033924542148E-02;
    ib[15 - 1] = 3;
    jb[15 - 1] = 35;
    nb[15 - 1] = -0.40668253562649E-01;
    ib[16 - 1] = 4;
    jb[16 - 1] = 1;
    nb[16 - 1] = -0.78847309559367E-09;
    ib[17 - 1] = 4;
    jb[17 - 1] = 2;
    nb[17 - 1] = 0.12790717852285E-07;
    ib[18 - 1] = 4;
    jb[18 - 1] = 3;
    nb[18 - 1] = 0.48225372718507E-06;
    ib[19 - 1] = 5;
    jb[19 - 1] = 7;
    nb[19 - 1] = 0.22922076337661E-05;
    ib[20 - 1] = 6;
    jb[20 - 1] = 3;
    nb[20 - 1] = -0.16714766451061E-10;
    ib[21 - 1] = 6;
    jb[21 - 1] = 16;
    nb[21 - 1] = -0.21171472321355E-02;
    ib[22 - 1] = 6;
    jb[22 - 1] = 35;
    nb[22 - 1] = -0.23895741934104E+02;
    ib[23 - 1] = 7;
    jb[23 - 1] = 0;
    nb[23 - 1] = -0.59059564324270E-17;
    ib[24 - 1] = 7;
    jb[24 - 1] = 11;
    nb[24 - 1] = -0.12621808899101E-05;
    ib[25 - 1] = 7;
    jb[25 - 1] = 25;
    nb[25 - 1] = -0.38946842435739E-01;
    ib[26 - 1] = 8;
    jb[26 - 1] = 8;
    nb[26 - 1] = 0.11256211360459E-10;
    ib[27 - 1] = 8;
    jb[27 - 1] = 36;
    nb[27 - 1] = -0.82311340897998E+01;
    ib[28 - 1] = 9;
    jb[28 - 1] = 13;
    nb[28 - 1] = 0.19809712802088E-07;
    ib[29 - 1] = 10;
    jb[29 - 1] = 4;
    nb[29 - 1] = 0.10406965210174E-18;
    ib[30 - 1] = 10;
    jb[30 - 1] = 10;
    nb[30 - 1] = -0.10234747095929E-12;
    ib[31 - 1] = 10;
    jb[31 - 1] = 14;
    nb[31 - 1] = -0.10018179379511E-08;
    ib[32 - 1] = 16;
    jb[32 - 1] = 29;
    nb[32 - 1] = -0.80882908646985E-10;
    ib[33 - 1] = 16;
    jb[33 - 1] = 50;
    nb[33 - 1] = 0.10693031879409E+00;
    ib[34 - 1] = 18;
    jb[34 - 1] = 57;
    nb[34 - 1] = -0.33662250574171E+00;
    ib[35 - 1] = 20;
    jb[35 - 1] = 20;
    nb[35 - 1] = 0.89185845355421E-24;
    ib[36 - 1] = 20;
    jb[36 - 1] = 35;
    nb[36 - 1] = 0.30629316876232E-12;
    ib[37 - 1] = 20;
    jb[37 - 1] = 48;
    nb[37 - 1] = -0.42002467698208E-05;
    ib[38 - 1] = 21;
    jb[38 - 1] = 21;
    nb[38 - 1] = -0.59056029685639E-25;
    ib[39 - 1] = 22;
    jb[39 - 1] = 53;
    nb[39 - 1] = 0.37826947613457E-05;
    ib[40 - 1] = 23;
    jb[40 - 1] = 39;
    nb[40 - 1] = -0.12768608934681E-14;
    ib[41 - 1] = 24;
    jb[41 - 1] = 26;
    nb[41 - 1] = 0.73087610595061E-28;
    ib[42 - 1] = 24;
    jb[42 - 1] = 40;
    nb[42 - 1] = 0.55414715350778E-16;
    ib[43 - 1] = 24;
    jb[43 - 1] = 58;
    nb[43 - 1] = -0.94369707241210E-06;

    ic[1 - 1] = 0;
    jc[1 - 1] = 0;
    nc[1 - 1] = 0.10658070028513E+01;
    ic[2 - 1] = 0;
    jc[2 - 1] = 0;
    nc[2 - 1] = -0.15732845290239E+02;
    ic[3 - 1] = 0;
    jc[3 - 1] = 1;
    nc[3 - 1] = 0.20944396974307E+02;
    ic[4 - 1] = 0;
    jc[4 - 1] = 2;
    nc[4 - 1] = -0.76867707878716E+01;
    ic[5 - 1] = 0;
    jc[5 - 1] = 7;
    nc[5 - 1] = 0.26185947787954E+01;
    ic[6 - 1] = 0;
    jc[6 - 1] = 10;
    nc[6 - 1] = -0.28080781148620E+01;
    ic[7 - 1] = 0;
    jc[7 - 1] = 12;
    nc[7 - 1] = 0.12053369696517E+01;
    ic[8 - 1] = 0;
    jc[8 - 1] = 23;
    nc[8 - 1] = -0.84566812812502E-02;
    ic[9 - 1] = 1;
    jc[9 - 1] = 2;
    nc[9 - 1] = -0.12654315477714E+01;
    ic[10 - 1] = 1;
    jc[10 - 1] = 6;
    nc[10 - 1] = -0.11524407806681E+01;
    ic[11 - 1] = 1;
    jc[11 - 1] = 15;
    nc[11 - 1] = 0.88521043984318E+00;
    ic[12 - 1] = 1;
    jc[12 - 1] = 17;
    nc[12 - 1] = -0.64207765181607E+00;
    ic[13 - 1] = 2;
    jc[13 - 1] = 0;
    nc[13 - 1] = 0.38493460186671E+00;
    ic[14 - 1] = 2;
    jc[14 - 1] = 2;
    nc[14 - 1] = -0.85214708824206E+00;
    ic[15 - 1] = 2;
    jc[15 - 1] = 6;
    nc[15 - 1] = 0.48972281541877E+01;
    ic[16 - 1] = 2;
    jc[16 - 1] = 7;
    nc[16 - 1] = -0.30502617256965E+01;
    ic[17 - 1] = 2;
    jc[17 - 1] = 22;
    nc[17 - 1] = 0.39420536879154E-01;
    ic[18 - 1] = 2;
    jc[18 - 1] = 26;
    nc[18 - 1] = 0.12558408424308E+00;
    ic[19 - 1] = 3;
    jc[19 - 1] = 0;
    nc[19 - 1] = -0.27999329698710E+00;
    ic[20 - 1] = 3;
    jc[20 - 1] = 2;
    nc[20 - 1] = 0.13899799569460E+01;
    ic[21 - 1] = 3;
    jc[21 - 1] = 4;
    nc[21 - 1] = -0.20189915023570E+01;
    ic[22 - 1] = 3;
    jc[22 - 1] = 16;
    nc[22 - 1] = -0.82147637173963E-02;
    ic[23 - 1] = 3;
    jc[23 - 1] = 26;
    nc[23 - 1] = -0.47596035734923E+00;
    ic[24 - 1] = 4;
    jc[24 - 1] = 0;
    nc[24 - 1] = 0.43984074473500E-01;
    ic[25 - 1] = 4;
    jc[25 - 1] = 2;
    nc[25 - 1] = -0.44476435428739E+00;
    ic[26 - 1] = 4;
    jc[26 - 1] = 4;
    nc[26 - 1] = 0.90572070719733E+00;
    ic[27 - 1] = 4;
    jc[27 - 1] = 26;
    nc[27 - 1] = 0.70522450087967E+00;
    ic[28 - 1] = 5;
    jc[28 - 1] = 1;
    nc[28 - 1] = 0.10770512626332E+00;
    ic[29 - 1] = 5;
    jc[29 - 1] = 3;
    nc[29 - 1] = -0.32913623258954E+00;
    ic[30 - 1] = 5;
    jc[30 - 1] = 26;
    nc[30 - 1] = -0.50871062041158E+00;
    ic[31 - 1] = 6;
    jc[31 - 1] = 0;
    nc[31 - 1] = -0.22175400873096E-01;
    ic[32 - 1] = 6;
    jc[32 - 1] = 2;
    nc[32 - 1] = 0.94260751665092E-01;
    ic[33 - 1] = 6;
    jc[33 - 1] = 26;
    nc[33 - 1] = 0.16436278447961E+00;
    ic[34 - 1] = 7;
    jc[34 - 1] = 2;
    nc[34 - 1] = -0.13503372241348E-01;
    ic[35 - 1] = 8;
    jc[35 - 1] = 26;
    nc[35 - 1] = -0.14834345352472E-01;
    ic[36 - 1] = 9;
    jc[36 - 1] = 2;
    nc[36 - 1] = 0.57922953628084E-03;
    ic[37 - 1] = 9;
    jc[37 - 1] = 26;
    nc[37 - 1] = 0.32308904703711E-02;
    ic[38 - 1] = 10;
    jc[38 - 1] = 0;
    nc[38 - 1] = 0.80964802996215E-04;
    ic[39 - 1] = 10;
    jc[39 - 1] = 1;
    nc[39 - 1] = -0.16557679795037E-03;
    ic[40 - 1] = 11;
    jc[40 - 1] = 26;
    nc[40 - 1] = -0.44923899061815E-04;

    n1 = 0.11670521452767E+04;
    n2 = -0.72421316703206E+06;
    n3 = -0.17073846940092E+02;
    n4 = 0.12020824702470E+05;
    n5 = -0.32325550322333E+07;
    n6 = 0.14915108613530E+02;
    n7 = -0.48232657361591E+04;
    n8 = 0.40511340542057E+06;
    n9 = -0.23855557567849E+00;
    n10 = 0.65017534844798E+03;
    h = 0.72421316703206E+06;

    ia2[1 - 1] = 0;
    ja2[1 - 1] = 0;
    na2[1 - 1] = -0.23872489924521E+03;
    ia2[2 - 1] = 0;
    ja2[2 - 1] = 1;
    na2[2 - 1] = 0.40421188637945E+03;
    ia2[3 - 1] = 0;
    ja2[3 - 1] = 2;
    na2[3 - 1] = 0.11349746881718E+03;
    ia2[4 - 1] = 0;
    ja2[4 - 1] = 6;
    na2[4 - 1] = -0.58457616048039E+01;
    ia2[5 - 1] = 0;
    ja2[5 - 1] = 22;
    na2[5 - 1] = -0.15285482413140E-03;
    ia2[6 - 1] = 0;
    ja2[6 - 1] = 32;
    na2[6 - 1] = -0.10866707695377E-05;
    ia2[7 - 1] = 1;
    ja2[7 - 1] = 0;
    na2[7 - 1] = -0.13391744872602E+02;
    ia2[8 - 1] = 1;
    ja2[8 - 1] = 1;
    na2[8 - 1] = 0.43211039183559E+02;
    ia2[9 - 1] = 1;
    ja2[9 - 1] = 2;
    na2[9 - 1] = -0.54010067170506E+02;
    ia2[10 - 1] = 1;
    ja2[10 - 1] = 3;
    na2[10 - 1] = 0.30535892203916E+02;
    ia2[11 - 1] = 1;
    ja2[11 - 1] = 4;
    na2[11 - 1] = -0.65964749423638E+01;
    ia2[12 - 1] = 1;
    ja2[12 - 1] = 10;
    na2[12 - 1] = 0.93965400878363E-02;
    ia2[13 - 1] = 1;
    ja2[13 - 1] = 32;
    na2[13 - 1] = 0.11573647505340E-06;
    ia2[14 - 1] = 2;
    ja2[14 - 1] = 10;
    na2[14 - 1] = -0.25858641282073E-04;
    ia2[15 - 1] = 2;
    ja2[15 - 1] = 32;
    na2[15 - 1] = -0.40644363084799E-08;
    ia2[16 - 1] = 3;
    ja2[16 - 1] = 10;
    na2[16 - 1] = 0.66456186191635E-07;
    ia2[17 - 1] = 3;
    ja2[17 - 1] = 32;
    na2[17 - 1] = 0.80670734103027E-10;
    ia2[18 - 1] = 4;
    ja2[18 - 1] = 32;
    na2[18 - 1] = -0.93477771213947E-12;
    ia2[19 - 1] = 5;
    ja2[19 - 1] = 32;
    na2[19 - 1] = 0.58265442020601E-14;
    ia2[20 - 1] = 6;
    ja2[20 - 1] = 32;
    na2[20 - 1] = -0.15020185953503E-16;

    ib2[1 - 1] = 0;
    jb2[1 - 1] = 0;
    nb2[1 - 1] = 0.10898952318288E+04;
    ib2[2 - 1] = 0;
    jb2[2 - 1] = 1;
    nb2[2 - 1] = 0.84951654495535E+03;
    ib2[3 - 1] = 0;
    jb2[3 - 1] = 2;
    nb2[3 - 1] = -0.10781748091826E+03;
    ib2[4 - 1] = 0;
    jb2[4 - 1] = 3;
    nb2[4 - 1] = 0.33153654801263E+02;
    ib2[5 - 1] = 0;
    jb2[5 - 1] = 7;
    nb2[5 - 1] = -0.74232016790248E+01;
    ib2[6 - 1] = 0;
    jb2[6 - 1] = 20;
    nb2[6 - 1] = 0.11765048724356E+02;
    ib2[7 - 1] = 1;
    jb2[7 - 1] = 0;
    nb2[7 - 1] = 0.18445749355790E+01;
    ib2[8 - 1] = 1;
    jb2[8 - 1] = 1;
    nb2[8 - 1] = -0.41792700549624E+01;
    ib2[9 - 1] = 1;
    jb2[9 - 1] = 2;
    nb2[9 - 1] = 0.62478196935812E+01;
    ib2[10 - 1] = 1;
    jb2[10 - 1] = 3;
    nb2[10 - 1] = -0.17344563108114E+02;
    ib2[11 - 1] = 1;
    jb2[11 - 1] = 7;
    nb2[11 - 1] = -0.20058176862096E+03;
    ib2[12 - 1] = 1;
    jb2[12 - 1] = 9;
    nb2[12 - 1] = 0.27196065473796E+03;
    ib2[13 - 1] = 1;
    jb2[13 - 1] = 11;
    nb2[13 - 1] = -0.45511318285818E+03;
    ib2[14 - 1] = 1;
    jb2[14 - 1] = 18;
    nb2[14 - 1] = 0.30919688604755E+04;
    ib2[15 - 1] = 1;
    jb2[15 - 1] = 44;
    nb2[15 - 1] = 0.25226640357872E+06;
    ib2[16 - 1] = 2;
    jb2[16 - 1] = 0;
    nb2[16 - 1] = -0.61707422868339E-02;
    ib2[17 - 1] = 2;
    jb2[17 - 1] = 2;
    nb2[17 - 1] = -0.31078046629583E+00;
    ib2[18 - 1] = 2;
    jb2[18 - 1] = 7;
    nb2[18 - 1] = 0.11670873077107E+02;
    ib2[19 - 1] = 2;
    jb2[19 - 1] = 36;
    nb2[19 - 1] = 0.12812798404046E+09;
    ib2[20 - 1] = 2;
    jb2[20 - 1] = 38;
    nb2[20 - 1] = -0.98554909623276E+09;
    ib2[21 - 1] = 2;
    jb2[21 - 1] = 40;
    nb2[21 - 1] = 0.28224546973002E+10;
    ib2[22 - 1] = 2;
    jb2[22 - 1] = 42;
    nb2[22 - 1] = -0.35948971410703E+10;
    ib2[23 - 1] = 2;
    jb2[23 - 1] = 44;
    nb2[23 - 1] = 0.17227349913197E+10;
    ib2[24 - 1] = 3;
    jb2[24 - 1] = 24;
    nb2[24 - 1] = -0.13551334240775E+05;
    ib2[25 - 1] = 3;
    jb2[25 - 1] = 44;
    nb2[25 - 1] = 0.12848734664650E+08;
    ib2[26 - 1] = 4;
    jb2[26 - 1] = 12;
    nb2[26 - 1] = 0.13865724283226E+01;
    ib2[27 - 1] = 4;
    jb2[27 - 1] = 32;
    nb2[27 - 1] = 0.23598832556514E+06;
    ib2[28 - 1] = 4;
    jb2[28 - 1] = 44;
    nb2[28 - 1] = -0.13105236545054E+08;
    ib2[29 - 1] = 5;
    jb2[29 - 1] = 32;
    nb2[29 - 1] = 0.73999835474766E+04;
    ib2[30 - 1] = 5;
    jb2[30 - 1] = 36;
    nb2[30 - 1] = -0.55196697030060E+06;
    ib2[31 - 1] = 5;
    jb2[31 - 1] = 42;
    nb2[31 - 1] = 0.37154085996233E+07;
    ib2[32 - 1] = 6;
    jb2[32 - 1] = 34;
    nb2[32 - 1] = 0.19127729239660E+05;
    ib2[33 - 1] = 6;
    jb2[33 - 1] = 44;
    nb2[33 - 1] = -0.41535164835634E+06;
    ib2[34 - 1] = 7;
    jb2[34 - 1] = 28;
    nb2[34 - 1] = -0.62459855192507E+02;

    ib3[1 - 1] = 0;
    jb3[1 - 1] = 0;
    nb3[1 - 1] = 0.14895041079516E+04;
    ib3[2 - 1] = 0;
    jb3[2 - 1] = 1;
    nb3[2 - 1] = 0.74307798314034E+03;
    ib3[3 - 1] = 0;
    jb3[3 - 1] = 2;
    nb3[3 - 1] = -0.97708318797837E+02;
    ib3[4 - 1] = 0;
    jb3[4 - 1] = 12;
    nb3[4 - 1] = 0.24742464705674E+01;
    ib3[5 - 1] = 0;
    jb3[5 - 1] = 18;
    nb3[5 - 1] = -0.63281320016026E+00;
    ib3[6 - 1] = 0;
    jb3[6 - 1] = 24;
    nb3[6 - 1] = 0.11385952129658E+01;
    ib3[7 - 1] = 0;
    jb3[7 - 1] = 28;
    nb3[7 - 1] = -0.47811863648625E+00;
    ib3[8 - 1] = 0;
    jb3[8 - 1] = 40;
    nb3[8 - 1] = 0.85208123431544E-02;
    ib3[9 - 1] = 1;
    jb3[9 - 1] = 0;
    nb3[9 - 1] = 0.93747147377932E+00;
    ib3[10 - 1] = 1;
    jb3[10 - 1] = 2;
    nb3[10 - 1] = 0.33593118604916E+01;
    ib3[11 - 1] = 1;
    jb3[11 - 1] = 6;
    nb3[11 - 1] = 0.33809355601454E+01;
    ib3[12 - 1] = 1;
    jb3[12 - 1] = 12;
    nb3[12 - 1] = 0.16844539671904E+00;
    ib3[13 - 1] = 1;
    jb3[13 - 1] = 18;
    nb3[13 - 1] = 0.73875745236695E+00;
    ib3[14 - 1] = 1;
    jb3[14 - 1] = 24;
    nb3[14 - 1] = -0.47128737436186E+00;
    ib3[15 - 1] = 1;
    jb3[15 - 1] = 28;
    nb3[15 - 1] = 0.15020273139707E+00;
    ib3[16 - 1] = 1;
    jb3[16 - 1] = 40;
    nb3[16 - 1] = -0.21764114219750E-02;
    ib3[17 - 1] = 2;
    jb3[17 - 1] = 2;
    nb3[17 - 1] = -0.21810755324761E-01;
    ib3[18 - 1] = 2;
    jb3[18 - 1] = 8;
    nb3[18 - 1] = -0.10829784403677E+00;
    ib3[19 - 1] = 2;
    jb3[19 - 1] = 18;
    nb3[19 - 1] = -0.46333324635812E-01;
    ib3[20 - 1] = 2;
    jb3[20 - 1] = 40;
    nb3[20 - 1] = 0.71280351959551E-04;
    ib3[21 - 1] = 3;
    jb3[21 - 1] = 1;
    nb3[21 - 1] = 0.11032831789999E-03;
    ib3[22 - 1] = 3;
    jb3[22 - 1] = 2;
    nb3[22 - 1] = 0.18955248387902E-03;
    ib3[23 - 1] = 3;
    jb3[23 - 1] = 12;
    nb3[23 - 1] = 0.30891541160537E-02;
    ib3[24 - 1] = 3;
    jb3[24 - 1] = 24;
    nb3[24 - 1] = 0.13555504554949E-02;
    ib3[25 - 1] = 4;
    jb3[25 - 1] = 2;
    nb3[25 - 1] = 0.28640237477456E-06;
    ib3[26 - 1] = 4;
    jb3[26 - 1] = 12;
    nb3[26 - 1] = -0.10779857357512E-04;
    ib3[27 - 1] = 4;
    jb3[27 - 1] = 18;
    nb3[27 - 1] = -0.76462712454814E-04;
    ib3[28 - 1] = 4;
    jb3[28 - 1] = 24;
    nb3[28 - 1] = 0.14052392818316E-04;
    ib3[29 - 1] = 4;
    jb3[29 - 1] = 28;
    nb3[29 - 1] = -0.31083814331434E-04;
    ib3[30 - 1] = 4;
    jb3[30 - 1] = 40;
    nb3[30 - 1] = -0.10302738212103E-05;
    ib3[31 - 1] = 5;
    jb3[31 - 1] = 18;
    nb3[31 - 1] = 0.28217281635040E-06;
    ib3[32 - 1] = 5;
    jb3[32 - 1] = 24;
    nb3[32 - 1] = 0.12704902271945E-05;
    ib3[33 - 1] = 5;
    jb3[33 - 1] = 40;
    nb3[33 - 1] = 0.73803353468292E-07;
    ib3[34 - 1] = 6;
    jb3[34 - 1] = 28;
    nb3[34 - 1] = -0.11030139238909E-07;
    ib3[35 - 1] = 7;
    jb3[35 - 1] = 2;
    nb3[35 - 1] = -0.81456365207833E-13;
    ib3[36 - 1] = 7;
    jb3[36 - 1] = 28;
    nb3[36 - 1] = -0.25180545682962E-10;
    ib3[37 - 1] = 9;
    jb3[37 - 1] = 1;
    nb3[37 - 1] = -0.17565233969407E-17;
    ib3[38 - 1] = 9;
    jb3[38 - 1] = 40;
    nb3[38 - 1] = 0.86934156344163E-14;

    ib4[1 - 1] = -7;
    jb4[1 - 1] = 0;
    nb4[1 - 1] = -0.32368398555242E+13;
    ib4[2 - 1] = -7;
    jb4[2 - 1] = 4;
    nb4[2 - 1] = 0.73263350902181E+13;
    ib4[3 - 1] = -6;
    jb4[3 - 1] = 0;
    nb4[3 - 1] = 0.35825089945447E+12;
    ib4[4 - 1] = -6;
    jb4[4 - 1] = 2;
    nb4[4 - 1] = -0.58340131851590E+12;
    ib4[5 - 1] = -5;
    jb4[5 - 1] = 0;
    nb4[5 - 1] = -0.10783068217470E+11;
    ib4[6 - 1] = -5;
    jb4[6 - 1] = 2;
    nb4[6 - 1] = 0.20825544563171E+11;
    ib4[7 - 1] = -2;
    jb4[7 - 1] = 0;
    nb4[7 - 1] = 0.61074783564516E+06;
    ib4[8 - 1] = -2;
    jb4[8 - 1] = 1;
    nb4[8 - 1] = 0.85977722535580E+06;
    ib4[9 - 1] = -1;
    jb4[9 - 1] = 0;
    nb4[9 - 1] = -0.25745723604170E+05;
    ib4[10 - 1] = -1;
    jb4[10 - 1] = 2;
    nb4[10 - 1] = 0.31081088422714E+05;
    ib4[11 - 1] = 0;
    jb4[11 - 1] = 0;
    nb4[11 - 1] = 0.12082315865936E+04;
    ib4[12 - 1] = 0;
    jb4[12 - 1] = 1;
    nb4[12 - 1] = 0.48219755109255E+03;
    ib4[13 - 1] = 1;
    jb4[13 - 1] = 4;
    nb4[13 - 1] = 0.37966001272486E+01;
    ib4[14 - 1] = 1;
    jb4[14 - 1] = 8;
    nb4[14 - 1] = -0.10842984880077E+02;
    ib4[15 - 1] = 2;
    jb4[15 - 1] = 4;
    nb4[15 - 1] = -0.45364172676660E-01;
    ib4[16 - 1] = 6;
    jb4[16 - 1] = 0;
    nb4[16 - 1] = 0.14559115658698E-12;
    ib4[17 - 1] = 6;
    jb4[17 - 1] = 1;
    nb4[17 - 1] = 0.11261597407230E-11;
    ib4[18 - 1] = 6;
    jb4[18 - 1] = 4;
    nb4[18 - 1] = -0.17804982240686E-10;
    ib4[19 - 1] = 6;
    jb4[19 - 1] = 10;
    nb4[19 - 1] = 0.12324579690832E-06;
    ib4[20 - 1] = 6;
    jb4[20 - 1] = 12;
    nb4[20 - 1] = -0.11606921130984E-05;
    ib4[21 - 1] = 6;
    jb4[21 - 1] = 16;
    nb4[21 - 1] = 0.27846367088554E-04;
    ib4[22 - 1] = 6;
    jb4[22 - 1] = 20;
    nb4[22 - 1] = -0.59270038474176E-03;
    ib4[23 - 1] = 6;
    jb4[23 - 1] = 22;
    nb4[23 - 1] = 0.12918582991878E-02;

    ib5[1 - 1] = 1;
    jb5[1 - 1] = 0;
    nb5[1 - 1] = -0.39235983861984E+06;
    ib5[2 - 1] = 1;
    jb5[2 - 1] = 1;
    nb5[2 - 1] = 0.51526573827270E+06;
    ib5[3 - 1] = 1;
    jb5[3 - 1] = 2;
    nb5[3 - 1] = 0.40482443161048E+05;
    ib5[4 - 1] = 1;
    jb5[4 - 1] = 3;
    nb5[4 - 1] = -0.32193790923902E+03;
    ib5[5 - 1] = 1;
    jb5[5 - 1] = 6;
    nb5[5 - 1] = 0.96961424218694E+02;
    ib5[6 - 1] = 2;
    jb5[6 - 1] = 1;
    nb5[6 - 1] = -0.22867846371773E+02;
    ib5[7 - 1] = 2;
    jb5[7 - 1] = 2;
    nb5[7 - 1] = -0.44942914124357E+06;
    ib5[8 - 1] = 2;
    jb5[8 - 1] = 4;
    nb5[8 - 1] = -0.50118336020166E+04;
    ib5[9 - 1] = 2;
    jb5[9 - 1] = 7;
    nb5[9 - 1] = 0.35684463560015E+00;
    ib5[10 - 1] = 2;
    jb5[10 - 1] = 36;
    nb5[10 - 1] = 0.44235335848190E+05;
    ib5[11 - 1] = 3;
    jb5[11 - 1] = 0;
    nb5[11 - 1] = -0.13673388811708E+05;
    ib5[12 - 1] = 3;
    jb5[12 - 1] = 1;
    nb5[12 - 1] = 0.42163260207864E+06;
    ib5[13 - 1] = 3;
    jb5[13 - 1] = 3;
    nb5[13 - 1] = 0.22516925837475E+05;
    ib5[14 - 1] = 3;
    jb5[14 - 1] = 6;
    nb5[14 - 1] = 0.47442144865646E+03;
    ib5[15 - 1] = 3;
    jb5[15 - 1] = 35;
    nb5[15 - 1] = -0.14931130797647E+03;
    ib5[16 - 1] = 4;
    jb5[16 - 1] = 1;
    nb5[16 - 1] = -0.19781126320452E+06;
    ib5[17 - 1] = 4;
    jb5[17 - 1] = 2;
    nb5[17 - 1] = -0.23554399470760E+05;
    ib5[18 - 1] = 4;
    jb5[18 - 1] = 3;
    nb5[18 - 1] = -0.19070616302076E+05;
    ib5[19 - 1] = 5;
    jb5[19 - 1] = 7;
    nb5[19 - 1] = 0.55375669883164E+05;
    ib5[20 - 1] = 6;
    jb5[20 - 1] = 3;
    nb5[20 - 1] = 0.38293691437363E+04;
    ib5[21 - 1] = 6;
    jb5[21 - 1] = 16;
    nb5[21 - 1] = -0.60391860580567E+03;
    ib5[22 - 1] = 6;
    jb5[22 - 1] = 35;
    nb5[22 - 1] = 0.19363102620331E+04;
    ib5[23 - 1] = 7;
    jb5[23 - 1] = 0;
    nb5[23 - 1] = 0.42660643698610E+04;
    ib5[24 - 1] = 7;
    jb5[24 - 1] = 11;
    nb5[24 - 1] = -0.59780638872718E+04;
    ib5[25 - 1] = 7;
    jb5[25 - 1] = 25;
    nb5[25 - 1] = -0.70401463926862E+03;
    ib5[26 - 1] = 8;
    jb5[26 - 1] = 8;
    nb5[26 - 1] = 0.33836784107553E+03;
    ib5[27 - 1] = 8;
    jb5[27 - 1] = 36;
    nb5[27 - 1] = 0.20862786635187E+02;
    ib5[28 - 1] = 9;
    jb5[28 - 1] = 13;
    nb5[28 - 1] = 0.33834172656196E-01;
    ib5[29 - 1] = 10;
    jb5[29 - 1] = 4;
    nb5[29 - 1] = -0.43124428414893E-04;
    ib5[30 - 1] = 10;
    jb5[30 - 1] = 10;
    nb5[30 - 1] = 0.16653791356412E+03;
    ib5[31 - 1] = 10;
    jb5[31 - 1] = 14;
    nb5[31 - 1] = -0.13986292055898E+03;
    ib5[32 - 1] = 16;
    jb5[32 - 1] = 29;
    nb5[32 - 1] = -0.78849547999872E+00;
    ib5[33 - 1] = 16;
    jb5[33 - 1] = 50;
    nb5[33 - 1] = 0.72132411753872E-01;
    ib5[34 - 1] = 18;
    jb5[34 - 1] = 57;
    nb5[34 - 1] = -0.59754839398283E-02;
    ib5[35 - 1] = 20;
    jb5[35 - 1] = 20;
    nb5[35 - 1] = -0.12141358953904E-04;
    ib5[36 - 1] = 20;
    jb5[36 - 1] = 35;
    nb5[36 - 1] = 0.23227096733871E-06;
    ib5[37 - 1] = 20;
    jb5[37 - 1] = 48;
    nb5[37 - 1] = -0.10538463566194E+02;
    ib5[38 - 1] = 21;
    jb5[38 - 1] = 21;
    nb5[38 - 1] = 0.20718925496502E+01;
    ib5[39 - 1] = 22;
    jb5[39 - 1] = 53;
    nb5[39 - 1] = -0.72193155260427E-01;
    ib5[40 - 1] = 23;
    jb5[40 - 1] = 39;
    nb5[40 - 1] = 0.20749887081120E-06;
    ib5[41 - 1] = 24;
    jb5[41 - 1] = 26;
    nb5[41 - 1] = -0.18340657911379E-01;
    ib5[42 - 1] = 24;
    jb5[42 - 1] = 40;
    nb5[42 - 1] = 0.29036272348696E-06;
    ib5[43 - 1] = 24;
    jb5[43 - 1] = 58;
    nb5[43 - 1] = 0.21037527893619E+00;
    ib5[44 - 1] = 24;
    jb5[44 - 1] = 26;
    nb5[44 - 1] = 0.25681239729999E-03;
    ib5[45 - 1] = 24;
    jb5[45 - 1] = 40;
    nb5[45 - 1] = -0.12799002933781E-01;
    ib5[46 - 1] = 24;
    jb5[46 - 1] = 58;
    nb5[46 - 1] = -0.82198102652018E-05;

    ib6[1 - 1] = 1;
    jb6[1 - 1] = 0;
    nb6[1 - 1] = 0.31687665083497E+06;
    ib6[2 - 1] = 1;
    jb6[2 - 1] = 1;
    nb6[2 - 1] = 0.20864175881858E+02;
    ib6[3 - 1] = 1;
    jb6[3 - 1] = 2;
    nb6[3 - 1] = -0.39859399803599E+06;
    ib6[4 - 1] = 1;
    jb6[4 - 1] = 3;
    nb6[4 - 1] = -0.21816058518877E+02;
    ib6[5 - 1] = 1;
    jb6[5 - 1] = 6;
    nb6[5 - 1] = 0.22369785194242E+06;
    ib6[6 - 1] = 2;
    jb6[6 - 1] = 1;
    nb6[6 - 1] = -0.27841703445817E+04;
    ib6[7 - 1] = 2;
    jb6[7 - 1] = 2;
    nb6[7 - 1] = 0.99207436071480E+01;
    ib6[8 - 1] = 2;
    jb6[8 - 1] = 4;
    nb6[8 - 1] = -0.75197512299157E+05;
    ib6[9 - 1] = 2;
    jb6[9 - 1] = 7;
    nb6[9 - 1] = 0.29708605951158E+04;
    ib6[10 - 1] = 2;
    jb6[10 - 1] = 36;
    nb6[10 - 1] = -0.34406878548526E+01;
    ib6[11 - 1] = 3;
    jb6[11 - 1] = 0;
    nb6[11 - 1] = 0.38815564249115E+00;
    ib6[12 - 1] = 3;
    jb6[12 - 1] = 1;
    nb6[12 - 1] = 0.17511295085750E+05;
    ib6[13 - 1] = 3;
    jb6[13 - 1] = 3;
    nb6[13 - 1] = -0.14237112854449E+04;
    ib6[14 - 1] = 3;
    jb6[14 - 1] = 6;
    nb6[14 - 1] = 0.10943803364167E+01;
    ib6[15 - 1] = 3;
    jb6[15 - 1] = 35;
    nb6[15 - 1] = 0.89971619308495E+00;
    ib6[16 - 1] = 4;
    jb6[16 - 1] = 1;
    nb6[16 - 1] = -0.33759740098958E+04;
    ib6[17 - 1] = 4;
    jb6[17 - 1] = 2;
    nb6[17 - 1] = 0.47162885818355E+03;
    ib6[18 - 1] = 4;
    jb6[18 - 1] = 3;
    nb6[18 - 1] = -0.19188241993679E+01;
    ib6[19 - 1] = 5;
    jb6[19 - 1] = 7;
    nb6[19 - 1] = 0.41078580492196E+00;
    ib6[20 - 1] = 6;
    jb6[20 - 1] = 3;
    nb6[20 - 1] = -0.33465378172097E+00;
    ib6[21 - 1] = 6;
    jb6[21 - 1] = 16;
    nb6[21 - 1] = 0.13870034777505E+04;
    ib6[22 - 1] = 6;
    jb6[22 - 1] = 35;
    nb6[22 - 1] = -0.40663326195838E+03;
    ib6[23 - 1] = 7;
    jb6[23 - 1] = 0;
    nb6[23 - 1] = 0.41727347159610E+02;
    ib6[24 - 1] = 7;
    jb6[24 - 1] = 11;
    nb6[24 - 1] = 0.21932549434532E+01;
    ib6[25 - 1] = 7;
    jb6[25 - 1] = 25;
    nb6[25 - 1] = -0.10320050009077E+01;
    ib6[26 - 1] = 8;
    jb6[26 - 1] = 8;
    nb6[26 - 1] = 0.35882943516703E+00;
    ib6[27 - 1] = 8;
    jb6[27 - 1] = 36;
    nb6[27 - 1] = 0.52511453726066E-02;
    ib6[28 - 1] = 9;
    jb6[28 - 1] = 13;
    nb6[28 - 1] = 0.12838916450705E+02;
    ib6[29 - 1] = 10;
    jb6[29 - 1] = 4;
    nb6[29 - 1] = -0.28642437219381E+01;
    ib6[30 - 1] = 10;
    jb6[30 - 1] = 10;
    nb6[30 - 1] = 0.56912683664855E+00;
    ib6[31 - 1] = 10;
    jb6[31 - 1] = 14;
    nb6[31 - 1] = -0.99962954584931E-01;
    ib6[32 - 1] = 16;
    jb6[32 - 1] = 29;
    nb6[32 - 1] = -0.32632037778459E-02;
    ib6[33 - 1] = 16;
    jb6[33 - 1] = 50;
    nb6[33 - 1] = 0.23320922576723E-03;
    ib6[34 - 1] = 18;
    jb6[34 - 1] = 57;
    nb6[34 - 1] = -0.15334809857450E+00;
    ib6[35 - 1] = 20;
    jb6[35 - 1] = 20;
    nb6[35 - 1] = 0.29072288239902E-01;
    ib6[36 - 1] = 20;
    jb6[36 - 1] = 35;
    nb6[36 - 1] = 0.37534702741167E-03;
    ib6[37 - 1] = 20;
    jb6[37 - 1] = 48;
    nb6[37 - 1] = 0.17296691702411E-02;
    ib6[38 - 1] = 21;
    jb6[38 - 1] = 21;
    nb6[38 - 1] = -0.38556050844504E-03;
    ib6[39 - 1] = 22;
    jb6[39 - 1] = 53;
    nb6[39 - 1] = -0.35017712292608E-04;
    ib6[40 - 1] = 23;
    jb6[40 - 1] = 39;
    nb6[40 - 1] = -0.14566393631492E-04;
    ib6[41 - 1] = 24;
    jb6[41 - 1] = 26;
    nb6[41 - 1] = 0.56420857267269E-05;
    ib6[42 - 1] = 24;
    jb6[42 - 1] = 40;
    nb6[42 - 1] = 0.41286150074605E-07;
    ib6[43 - 1] = 24;
    jb6[43 - 1] = 58;
    nb6[43 - 1] = -0.20684671118824E-07;
    ib6[44 - 1] = 24;
    jb6[44 - 1] = 58;
    nb6[44 - 1] = 0.16409393674725E-08;

    ib7[1 - 1] = 1;
    jb7[1 - 1] = 0;
    nb7[1 - 1] = 0.90968501005365E+03;
    ib7[2 - 1] = 1;
    jb7[2 - 1] = 1;
    nb7[2 - 1] = 0.24045667088420E+04;
    ib7[3 - 1] = 1;
    jb7[3 - 1] = 2;
    nb7[3 - 1] = -0.59162326387130E+03;
    ib7[4 - 1] = 1;
    jb7[4 - 1] = 3;
    nb7[4 - 1] = 0.54145404128074E+03;
    ib7[5 - 1] = 1;
    jb7[5 - 1] = 6;
    nb7[5 - 1] = -0.27098308411192E+03;
    ib7[6 - 1] = 2;
    jb7[6 - 1] = 1;
    nb7[6 - 1] = 0.97976525097926E+03;
    ib7[7 - 1] = 2;
    jb7[7 - 1] = 2;
    nb7[7 - 1] = -0.46966772959435E+03;
    ib7[8 - 1] = 2;
    jb7[8 - 1] = 4;
    nb7[8 - 1] = 0.14399274604723E+02;
    ib7[9 - 1] = 2;
    jb7[9 - 1] = 7;
    nb7[9 - 1] = -0.19104204230429E+02;
    ib7[10 - 1] = 2;
    jb7[10 - 1] = 36;
    nb7[10 - 1] = 0.53299167111971E+01;
    ib7[11 - 1] = 3;
    jb7[11 - 1] = 0;
    nb7[11 - 1] = -0.21252975375934E+02;
    ib7[12 - 1] = 3;
    jb7[12 - 1] = 1;
    nb7[12 - 1] = -0.31147334413760E+00;
    ib7[13 - 1] = 3;
    jb7[13 - 1] = 3;
    nb7[13 - 1] = 0.60334840894623E+00;
    ib7[14 - 1] = 3;
    jb7[14 - 1] = 6;
    nb7[14 - 1] = -0.42764839702509E-01;
    ib7[15 - 1] = 3;
    jb7[15 - 1] = 35;
    nb7[15 - 1] = 0.58185597255259E-02;
    ib7[16 - 1] = 4;
    jb7[16 - 1] = 1;
    nb7[16 - 1] = -0.14597008284753E-01;
    ib7[17 - 1] = 4;
    jb7[17 - 1] = 2;
    nb7[17 - 1] = 0.56631175631027E-02;
    ib7[18 - 1] = 4;
    jb7[18 - 1] = 3;
    nb7[18 - 1] = -0.76155864584577E-04;
    ib7[19 - 1] = 5;
    jb7[19 - 1] = 7;
    nb7[19 - 1] = 0.22440342919332E-03;
    ib7[20 - 1] = 6;
    jb7[20 - 1] = 3;
    nb7[20 - 1] = -0.12561095013413E-04;
    ib7[21 - 1] = 6;
    jb7[21 - 1] = 16;
    nb7[21 - 1] = 0.63323132660934E-06;
    ib7[22 - 1] = 6;
    jb7[22 - 1] = 35;
    nb7[22 - 1] = -0.20541989675375E-05;
    ib7[23 - 1] = 7;
    jb7[23 - 1] = 0;
    nb7[23 - 1] = 0.36405370390082E-07;
    ib7[24 - 1] = 7;
    jb7[24 - 1] = 11;
    nb7[24 - 1] = -0.29759897789215E-06;
    ib7[25 - 1] = 7;
    jb7[25 - 1] = 25;
    nb7[25 - 1] = 0.10136618529763E-07;
    ib7[26 - 1] = 8;
    jb7[26 - 1] = 8;
    nb7[26 - 1] = 0.59925719692351E-11;
    ib7[27 - 1] = 8;
    jb7[27 - 1] = 36;
    nb7[27 - 1] = -0.20677870105164E-10;
    ib7[28 - 1] = 9;
    jb7[28 - 1] = 13;
    nb7[28 - 1] = -0.20874278181886E-10;
    ib7[29 - 1] = 10;
    jb7[29 - 1] = 4;
    nb7[29 - 1] = 0.10162166825089E-09;
    ib7[30 - 1] = 10;
    jb7[30 - 1] = 10;
    nb7[30 - 1] = -0.16429828281347E-09;

    nm[0][0] = 0.5132047;
    nm[0][1] = 0.2151778;
    nm[0][2] = -0.2818107;
    nm[0][3] = 0.1778064;
    nm[0][4] = -0.04176610;
    nm[0][5] = 0;
    nm[0][6] = 0;
    nm[1][0] = 0.3205656;
    nm[1][1] = 0.7317883;
    nm[1][2] = -1.070786;
    nm[1][3] = 0.4605040;
    nm[1][4] = 0;
    nm[1][5] = -0.01578386;
    nm[1][6] = 0;
    nm[2][0] = 0;
    nm[2][1] = 1.241044;
    nm[2][2] = -1.263184;
    nm[2][3] = 0.2340379;
    nm[2][4] = 0;
    nm[2][5] = 0;
    nm[2][6] = 0;
    nm[3][0] = 0;
    nm[3][1] = 1.476783;
    nm[3][2] = 0;
    nm[3][3] = -0.4924179;
    nm[3][4] = 0.1600435;
    nm[3][5] = 0;
    nm[3][6] = -0.003629481;
    nm[4][0] = -0.7782567;
    nm[4][1] = 0;
    nm[4][2] = 0;
    nm[4][3] = 0;
    nm[4][4] = 0;
    nm[4][5] = 0;
    nm[4][6] = 0;
    nm[5][0] = 0.1885447;
    nm[5][1] = 0;
    nm[5][2] = 0;
    nm[5][3] = 0;
    nm[5][4] = 0;
    nm[5][5] = 0;
    nm[5][6] = 0;
  }
}