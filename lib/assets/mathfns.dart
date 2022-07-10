import 'dart:math';
import 'dart:core';
import 'package:plmn/assets/arrays.dart';

class Mathfns {
  Mathfns() {}
  Arrays mainArr = Arrays();
  num sqr(num n) {
    return n * n;
  }

  num fn(num x, num n) {
    num m;
    num s;
    m = n.abs();
    switch (m) {
      case 0:
        s = 1;
        break;
      case 1:
        s = x;
        break;
      case 2:
        s = sqr(x);
        break;
      case 3:
        s = sqr(x) * x;
        break;
      case 4:
        s = sqr(sqr(x));
        break;
      case 5:
        s = sqr(sqr(x)) * x;
        break;
      case 6:
        s = sqr(sqr(x) * x);
        break;
      case 7:
        s = sqr(sqr(x) * x) * x;
        break;
      case 8:
        s = sqr(sqr(sqr(x)));
        break;
      case 9:
        s = sqr(sqr(sqr(x))) * x;
        break;
      case 10:
        s = sqr(sqr(sqr(x)) * x);
        break;
      case 11:
        s = sqr(sqr(sqr(x)) * x) * x;
        break;
      case 12:
        s = sqr(sqr(sqr(x) * x));
        break;
      case 13:
        s = sqr(sqr(sqr(x) * x)) * x;
        break;
      case 14:
        s = sqr(sqr(sqr(x) * x) * x);
        break;
      case 15:
        s = sqr(sqr(sqr(x) * x) * x) * x;
        break;
      case 16:
        s = sqr(sqr(sqr(sqr(x))));
        break;
      case 17:
        s = sqr(sqr(sqr(sqr(x)))) * x;
        break;
      case 18:
        s = sqr(sqr(sqr(sqr(x))) * x);
        break;
      case 19:
        s = sqr(sqr(sqr(sqr(x))) * x) * x;
        break;
      case 20:
        s = sqr(sqr(sqr(sqr(x)) * x));
        break;
      case 21:
        s = sqr(sqr(sqr(sqr(x)) * x)) * x;
        break;
      case 22:
        s = sqr(sqr(sqr(sqr(x)) * x) * x);
        break;
      case 23:
        s = sqr(sqr(sqr(sqr(x)) * x) * x) * x;
        break;
      case 24:
        s = sqr(sqr(sqr(sqr(x) * x)));
        break;
      case 25:
        s = sqr(sqr(sqr(sqr(x) * x))) * x;
        break;
      case 26:
        s = sqr(sqr(sqr(sqr(x) * x)) * x);
        break;
      case 27:
        s = sqr(sqr(sqr(sqr(x) * x)) * x) * x;
        break;
      case 28:
        s = sqr(sqr(sqr(sqr(x) * x) * x));
        break;
      case 29:
        s = sqr(sqr(sqr(sqr(x) * x) * x)) * x;
        break;
      case 30:
        s = sqr(sqr(sqr(sqr(x) * x) * x) * x);
        break;
      case 31:
        s = sqr(sqr(sqr(sqr(x) * x) * x) * x) * x;
        break;
      case 32:
        s = sqr(sqr(sqr(sqr(sqr(x)))));
        break;
      case 33:
        s = sqr(sqr(sqr(sqr(sqr(x))))) * x;
        break;
      case 34:
        s = sqr(sqr(sqr(sqr(sqr(x)))) * x);
        break;
      case 35:
        s = sqr(sqr(sqr(sqr(sqr(x)))) * x) * x;
        break;
      case 36:
        s = sqr(sqr(sqr(sqr(sqr(x))) * x));
        break;
      case 37:
        s = sqr(sqr(sqr(sqr(sqr(x))) * x)) * x;
        break;
      case 38:
        s = sqr(sqr(sqr(sqr(sqr(x))) * x) * x);
        break;
      case 39:
        s = sqr(sqr(sqr(sqr(sqr(x))) * x) * x) * x;
        break;
      case 40:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x)));
        break;
      case 41:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x))) * x;
        break;
      case 42:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x)) * x);
        break;
      case 43:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x)) * x) * x;
        break;
      case 44:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x) * x));
        break;
      case 45:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x) * x)) * x;
        break;
      case 46:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x) * x) * x);
        break;
      case 47:
        s = sqr(sqr(sqr(sqr(sqr(x)) * x) * x) * x) * x;
        break;
      case 48:
        s = sqr(sqr(sqr(sqr(sqr(x) * x))));
        break;
      case 49:
        s = sqr(sqr(sqr(sqr(sqr(x) * x)))) * x;
        break;
      case 50:
        s = sqr(sqr(sqr(sqr(sqr(x) * x))) * x);
        break;
      case 51:
        s = sqr(sqr(sqr(sqr(sqr(x) * x))) * x) * x;
        break;
      case 52:
        s = sqr(sqr(sqr(sqr(sqr(x) * x)) * x));
        break;
      case 53:
        s = sqr(sqr(sqr(sqr(sqr(x) * x)) * x)) * x;
        break;
      case 54:
        s = sqr(sqr(sqr(sqr(sqr(x) * x)) * x) * x);
        break;
      case 55:
        s = sqr(sqr(sqr(sqr(sqr(x) * x)) * x) * x) * x;
        break;
      case 56:
        s = sqr(sqr(sqr(sqr(sqr(x) * x) * x)));
        break;
      case 57:
        s = sqr(sqr(sqr(sqr(sqr(x) * x) * x))) * x;
        break;
      case 58:
        s = sqr(sqr(sqr(sqr(sqr(x) * x) * x)) * x);
        break;
    }
    if (n < 0) {
      s = 1 / s;
    }
    return s;
  }

  double ps(double t) {
    double et;
    double a;
    double b;
    double c;

    et = t + 273.15 + mainArr.n9 / (t + 273.15 - mainArr.n10);
    a = sqr(et) + mainArr.n1 * et + mainArr.n2;
    b = mainArr.n3 * sqr(et) + mainArr.n4 * et + mainArr.n5;
    c = mainArr.n6 * sqr(et) + mainArr.n7 * et + mainArr.n8;
    return sqr(sqr(2 * c / (-b + sqrt(sqr(b) - 4 * a * c))));
  }

  double ts(double p) {
    double be;
    double e;
    double f;
    double g;
    double d;

    be = sqrt(sqrt(p));
    e = sqr(be) + mainArr.n3 * be + mainArr.n6;
    f = mainArr.n1 * sqr(be) + mainArr.n4 * be + mainArr.n7;
    g = mainArr.n2 * sqr(be) + mainArr.n5 * be + mainArr.n8;
    d = 2 * g / (-f - sqrt(sqr(f) - 4 * e * g));
    return (mainArr.n10 +
                d -
                sqrt(sqr(mainArr.n10 + d) -
                    4 * (mainArr.n9 + mainArr.n10 * d))) /
            2 -
        273.15;
  }

  double pg(double t) {
    double te = t + 273.15;
    return 0.34805185628969E+03 +
        -0.11671859879975E+01 * te +
        0.10192970039326E-02 * sqr(te);
  }

  double tg(double p) {
    return 0.57254459862746E+03 +
        sqrt((p - 0.13918839778870E+02) / 0.10192970039326E-02) -
        273.15;
  }

  double v1(double p, double t) {
    double pim;
    double tam;
    double s;

    pim = 7.1 - p / 16.53;
    tam = 1386 / (t + 273.15) - 1.222;

    s = 0;
    //+
    for (int i = 1; i < 35; i++) {
      s = s +
          mainArr.na[i - 1] *
              mainArr.ia[i - 1] *
              fn(pim, mainArr.ia[i - 1] - 1) *
              fn(tam, mainArr.ja[i - 1]);
    }
    return (-s * 0.461526 * (t + 273.15) / 16530);
  }

  double h1(double p, double t) {
    double pim;
    double tam;
    double s;

    pim = 7.1 - p / 16.53;
    tam = 1386 / (t + 273.15) - 1.222;

    s = 0;
    //+
    for (int i = 1; i < 35; i++) {
      s = s +
          mainArr.na[i - 1] *
              mainArr.ja[i - 1] *
              fn(pim, mainArr.ia[i - 1]) *
              fn(tam, mainArr.ja[i - 1] - 1);
    }
    return s * 0.461526 * 1386;
  }

  double s1(double p, double t) {
    double pim;
    double tam;
    double s;

    pim = 7.1 - p / 16.53;
    tam = 1386 / (t + 273.15) - 1.222;
    s = 0;
    //+
    for (int i = 1; i < 35; i++) {
      s = s +
          mainArr.na[i - 1] *
              mainArr.ja[i - 1] *
              fn(pim, mainArr.ia[i - 1]) *
              fn(tam, mainArr.ja[i - 1] - 1);
    }
    s = s * 1386 / (t + 273.15);
    //+
    for (int i = 1; i < 35; i++) {
      s = s -
          mainArr.na[i - 1] *
              fn(pim, mainArr.ia[i - 1]) *
              fn(tam, mainArr.ja[i - 1]);
    }
    return s * 0.461526;
  }

  double t1(double p, double h) {
    double pim, etm, s;
    pim = p;
    etm = h / 2500 + 1;
    s = 0;
    //+
    for (int i = 1; i < 21; i++) {
      s = s +
          mainArr.na2[i - 1] *
              fn(pim, mainArr.ia2[i - 1]) *
              fn(etm, mainArr.ja2[i - 1]);
    }

    return s - 273.15;
  }

  double v2(double p, double t) {
    double pim, tam, s;
    pim = p;
    tam = 540 / (t + 273.15) - 0.5;
    s = 1 / pim;
    //+
    for (int i = 1; i < 44; i++) {
      s = s +
          mainArr.nb[i - 1] *
              mainArr.ib[i - 1] *
              fn(pim, mainArr.ib[i - 1] - 1) *
              fn(tam, mainArr.jb[i - 1]);
    }
    return s * 0.461526 * (t + 273.15) / 1000;
  }

  double h2(double p, double t) {
    double pim, tam, ta, s;
    pim = p;
    ta = 540 / (t + 273.15);
    tam = 540 / (t + 273.15) - 0.5;
    s = 0;
    //+
    for (int i = 1; i < 10; i++) {
      s = s +
          mainArr.n0[i - 1] * mainArr.j0[i - 1] * fn(ta, mainArr.j0[i - 1] - 1);
    }
    //+
    for (int i = 1; i < 44; i++) {
      s = s +
          mainArr.nb[i - 1] *
              mainArr.jb[i - 1] *
              fn(pim, mainArr.ib[i - 1]) *
              fn(tam, mainArr.jb[i - 1] - 1);
    }
    return s * 0.461526 * 540;
  }

  double s2(double p, double t) {
    double pim, tam, ta, s;
    pim = p;
    ta = 540 / (t + 273.15);
    tam = 540 / (t + 273.15) - 0.5;
    s = 0;
    //+
    for (int i = 1; i < 10; i++) {
      s = s +
          mainArr.n0[i - 1] * mainArr.j0[i - 1] * fn(ta, mainArr.j0[i - 1] - 1);
    }
    //+
    for (int i = 1; i < 44; i++) {
      s = s +
          mainArr.nb[i - 1] *
              mainArr.jb[i - 1] *
              fn(pim, mainArr.ib[i - 1]) *
              fn(tam, mainArr.jb[i - 1] - 1);
    }
    s = s * ta - log(pim);
    //+
    for (int i = 1; i < 10; i++) {
      s = s - mainArr.n0[i - 1] * fn(ta, mainArr.j0[i - 1]);
    }
    //+
    for (int i = 1; i < 44; i++) {
      s = s -
          mainArr.nb[i - 1] *
              fn(pim, mainArr.ib[i - 1]) *
              fn(tam, mainArr.jb[i - 1]);
    }

    return s * 0.461526;
  }

  double p3(double r, double t) {
    double de, ta, s;
    de = r / 322;
    ta = 647.096 / (t + 273.15);
    s = mainArr.nc[1 - 1] / de;
    //+
    for (int i = 2; i < 41; i++) {
      s = s +
          mainArr.nc[i - 1] *
              mainArr.ic[i - 1] *
              fn(de, mainArr.ic[i - 1] - 1) *
              fn(ta, mainArr.jc[i - 1]);
    }

    return s * 0.461526E-3 * de * r * (t + 273.15);
  }

  double h3(double r, double t) {
    double de, ta, s1, s2;
    de = r / 322;
    ta = 647.096 / (t + 273.15);
    s1 = 0;
    // +
    for (int i = 2; i < 41; i++) {
      s1 = s1 +
          mainArr.nc[i - 1] *
              mainArr.jc[i - 1] *
              fn(de, mainArr.ic[i - 1]) *
              fn(ta, mainArr.jc[i - 1] - 1);
    }

    s2 = mainArr.nc[1 - 1] / de;
    // +
    for (int i = 2; i < 41; i++) {
      s2 = s2 +
          mainArr.nc[i - 1] *
              mainArr.ic[i - 1] *
              fn(de, mainArr.ic[i - 1] - 1) *
              fn(ta, mainArr.jc[i - 1]);
    }

    return (ta * s1 + de * s2) * 0.461526 * (t + 273.15);
  }

  double s3(double r, double t) {
    double de, ta, s;
    de = r / 322;
    ta = 647.096 / (t + 273.15);
    s = 0;
    //+
    for (int i = 2; i < 41; i++) {
      s = s +
          mainArr.nc[i - 1] *
              mainArr.jc[i - 1] *
              fn(de, mainArr.ic[i - 1]) *
              fn(ta, mainArr.jc[i - 1] - 1);
    }
    s = s * ta - mainArr.nc[1 - 1] * log(de);
    //+
    for (int i = 2; i < 41; i++) {
      s = s -
          mainArr.nc[i - 1] *
              fn(de, mainArr.ic[i - 1]) *
              fn(ta, mainArr.jc[i - 1]);
    }

    return s * 0.461526;
  }

  double t2a(double p, double h) {
    double pim, etm, s;
    pim = p;
    etm = h / 2000 - 2.1;
    s = 0;
    //+
    for (int i = 1; i < 35; i++) {
      s = s +
          mainArr.nb2[i - 1] *
              fn(pim, mainArr.ib2[i - 1]) *
              fn(etm, mainArr.jb2[i - 1]);
    }

    return s - 273.15;
  }

  double t2b(double p, double h) {
    double pim, etm, s;
    pim = p - 2;
    etm = h / 2000 - 2.6;
    s = 0;
    //+
    for (int i = 1; i < 39; i++) {
      s = s +
          mainArr.nb3[i - 1] *
              fn(pim, mainArr.ib3[i - 1]) *
              fn(etm, mainArr.jb3[i - 1]);
    }

    return s - 273.15;
  }

  double t2c(double p, double h) {
    double pim, etm, s;
    pim = p + 25;
    etm = h / 2000 - 1.8;
    s = 0;
    //+
    for (int i = 1; i < 24; i++) {
      s = s +
          mainArr.nb4[i - 1] *
              fn(pim, mainArr.ib4[i - 1]) *
              fn(etm, mainArr.jb4[i - 1]);
    }

    return s - 273.15;
  }

  num fn2(num x, num n) {
    num m;
    num f;

    f = n - n.floorToDouble();
    m = 0;

    if ((f > 0.4) && (f < 0.6)) {
      m = 1;
    }

    if (((f > 0.2) && (f < 0.3)) || ((f > 0.7) && (f < 0.8))) {
      m = 2;
    }

    if (m == 0) {
      return fn(x, n.round()).toDouble();
    } else if (m == 1) {
      return sqrt(fn(x, (2 * n).round()).toDouble());
    } else {
      return sqrt(sqrt(fn(x, (4 * n).round()).toDouble()));
    }
  }

  double t2sa(double p, double s) {
    double pim, sig, s2;
    pim = p;
    sig = s / 2 - 2;
    s2 = 0;
    //+
    for (int i = 1; i < 47; i++) {
      s2 = s2 +
          mainArr.nb5[i - 1] *
              fn2(pim, mainArr.ib5[i - 1]) *
              fn(sig, mainArr.jb5[i - 1]);
    }

    return s2;
  }

  double t2sb(double p, double s) {
    double pim, sig, s2;
    pim = p;
    sig = 10 - s / 0.7853;
    s2 = 0;
    //+
    for (int i = 1; i < 45; i++) {
      s2 = s2 +
          mainArr.nb6[i - 1] *
              fn(pim, mainArr.ib6[i - 1]) *
              fn(sig, mainArr.jb6[i - 1]);
    }
    return s2;
  }

  double t2sc(double p, double s) {
    double pim, sig, s2;
    pim = p;
    sig = 2 - s / 2.9251;
    s2 = 0;
    //+
    for (int i = 1; i < 31; i++) {
      s2 = s2 +
          mainArr.nb6[i - 1] *
              fn(pim, mainArr.ib6[i - 1]) *
              fn(sig, mainArr.jb6[i - 1]);
    }

    return s2;
  }

  double r3(double p, double t) {
    double y, y1, y2, z;
    y = 1 / v2(pg(t), t);
    z = p3(y, t);

    if (z > p) {
      y2 = y;
      while (z > p) {
        y = y / 1.01;
        z = p3(y, t);
      }
      y1 = y;
    } else {
      y1 = y;
      while (z < p) {
        y = 1.2 * y;
        z = p3(y, t);
      }
      y2 = y;
    }

    y = (y1 + y2) / 2;
    z = p3(y, t);

    while ((z - p).abs() > 0.001) {
      if (z > p) {
        y2 = y;
      } else {
        y1 = y;
      }
      y = (y1 + y2) / 2;
      z = p3(y, t);
    }
    return y;
  }

  double t3(double p, double h) {
    double y, y1, y2, z, f1, f2, t2;
    f1 = h1(p, 350);
    t2 = tg(p);
    f2 = h2(p, t2);
    y = 350 + (t2 - 350) * (h - f1) / (f2 - f1);
    z = h3(r3(p, y), y);

    if (z > h) {
      y2 = y;
      while (z > h) {
        y = y - 1;
        z = h3(r3(p, y), y);
      }
      y1 = y;
    } else {
      y1 = y;
      while (z < h) {
        y = y + 1;
        z = h3(r3(p, y), y);
      }
      y2 = y;
    }

    y = (y1 + y2) / 2;
    z = h3(r3(p, y), y);

    while ((z - h).abs() > 0.01) {
      if (z > h) {
        y2 = y;
      } else {
        y1 = y;
        y = (y1 + y2) / 2;
        z = h3(r3(p, y), y);
      }
    }

    return y;
  }

  double t3s(double p, double s) {
    double y, y1, y2, z, f1, f2, t2;
    f1 = s1(p, 350);
    t2 = tg(p);
    f2 = s2(p, t2);
    y = 350 + (t2 - 350) * (s - f1) / (f2 - f1);
    z = s3(r3(p, y), y);

    if ((f2.isNaN) || (t2.isNaN) || (f1.isNaN) || (y.isNaN) || (z.isNaN)) {
      return 1;
    } else {
      if (z > s) {
        y2 = y;
        while (z > s) {
          y = y - 1;
          z = s3(r3(p, y), y);
        }
        y1 = y;
      } else {
        y1 = y;
        while (z < s) {
          y = y + 1;
          z = s3(r3(p, y), y);
        }
        y2 = y;
      }

      y = (y1 + y2) / 2;
      z = s3(r3(p, y), y);

      while ((z - s).abs().roundToDouble() > 0.01) {
        if (z > s) {
          y2 = y;
        } else {
          y1 = y;
        }
        y = (y1 + y2) / 2;
        z = s3(r3(p, y), y);
      }
      return y;
    }
  }

  double r3f(double t) {
    double x, y;
    x = 373.95 - t;
    y = 47 * sqrt(x);

    if (x < 1) {
      y = y + 8 * x;
    } else if (x < 4) {
      y = y + 5 + 2.5 * x;
    } else if (x < 9) {
      y = y + 15;
    } else if (x < 4) {
      y = y + 20 - 0.75 * x;
    }
    ;

    return y + 322;
  }

  double pg2(double h) {
    return 0.90584278514723E+03 -
        0.67955786399241E+00 * h +
        0.12809002730136E-03 * sqr(h);
  }

  double hg2(double p) {
    return 0.26526571908428E+04 +
        sqrt((p - 0.45257578905948E+01) / 0.12809002730136E-03);
  }

  double mu(double p, double x) {
    double u, v, A, B, C, D, E, mu0, k, kt, u1, u2, v4, r0, rm, s;

    s = 647.27 / (x + 273.15);
    u = s - 1.0;
    u1 = 1 / s - 1;
    u2 = sqr(u1);
    v = 1 / 317.763 / p - 1.0;
    v4 = sqr(sqr(v));
    A = ((((0.146543 * u - 0.551119) * u + 0.907919) * u - 0.130356) * u +
                0.162888) *
            u +
        0.501938;
    B = ((((0.0670665 - 0.0843370 * u) * u + 1.207552) * u + 0.673665) * u +
                0.789393) *
            u +
        0.235622;
    C = ((((0.195286 * u - 0.497089) * u - 0.687343) * u - 0.959456) * u -
                0.743539) *
            u -
        0.274637;
    D = ((((0.100754 - 0.032932 * u) * u + 0.213486) * u + 0.347247) * u +
                0.263129) *
            u +
        0.145831;
    E = ((((0.0602253 - 0.0202595 * u) * u - 0.0822904) * u - 0.0267758) * u -
                0.0253093) *
            u -
        0.0270448;

    r0 = sqrt(3.88937 + 5.11063 * s);

    if (u1 < 0) {
      u1 = -u1;
    }
    rm = 317.763 + 107.661 * exp(0.067174 * log(u1)) * exp(-543.48 * u1);
    k = s / p / rm;
    kt = k / (sqr(r0 / (r0 - 1 / p / rm)) - 2.25 * k);
    if (kt < 0) {
      kt = -kt;
    }
    mu0 = sqrt(1 / s) /
        (((0.0105287 - 0.0036744 * s) * s + 0.0177624) * s + 0.0181583);

    return exp(((((E * v + D) * v + C) * v + B) * v + A) / 317.763 / p) * mu0 +
        0.01204 * kt * exp(-102.4 * v4 - 5279 * u2) * mu0 +
        0.1432 * exp(-1107 * v4 - 308000 * u2) * mu0;
  }

  double la(double p, double x) {
    double r, u, v, w, A, B, C, D, E, F;

    r = 647.27 / (x + 273.15);
    u = r - 1.0;
    v = 3.1416999e-3 / p;
    w = v - 1.0;
    A = (((8.7127675 - 1.8525999 * u) * u + 5.2246158) * u + 1.7018363) * u +
        1.3293046;
    B = (((0.9340469 * u - 9.5000611) * u - 10.124111) * u - 2.2156845) * u -
        0.40452437;
    C = ((4.3786606 * u + 4.9874687) * u + 1.6511057) * u + 0.2440949;
    D = ((-0.91783782 * u - 0.27297694) * u - 0.76736002) * u + 0.018660751;
    E = (0.37283344 - 0.43083393 * u) * u - 0.12961068;
    F = (0.13333849 * u - 0.1120316) * u + 0.044809953;

    return exp(v * (((((F * w + E) * w + D) * w + C) * w + B) * w + A)) /
        sqrt(r) /
        (((5.25597e-3 - 2.0187e-3 * r) * r + 1.411166e-2) * r + 2.02223e-3);
  }

  double pul(int n, double p, double x) {
    switch (n) {
      case 1:
        if (x > h1(p, 350)) {
          return t3(p, x);
        } else {
          return t1(p, x);
        }
        break;

      case 2:
        if (x > 350) {
          return h3(r3(p, x), x);
        } else {
          return h1(p, x);
        }
        break;

      case 3:
        if (x > 350) {
          return 1 / r3(p, x);
        } else {
          return v1(p, x);
        }
        break;

      case 4:
        if (x > 350) {
          return s3(r3(p, x), x);
        } else {
          return s1(p, x);
        }
        break;

      case 5:
        return ps(x);
        break;

      case 6:
        if (x > 350) {
          return h3(r3f(x), x);
        } else {
          return h1(ps(x), x);
        }
        break;

      case 7:
        if (x > 350) {
          return 1 / r3f(x);
        } else {
          return v1(ps(x), x);
        }
        break;

      case 8:
        if (x > 350) {
          return s3(r3f(x), x);
        } else {
          return s1(ps(x), x);
        }
        break;

      case 9:
        return 235.6 *
            exp(1.256 * log((374.15 - x) / 647.3)) *
            (1 - 0.625 * ((374.15 - x) / 647.3));
        break;

      case 10:
        return ts(p);
        break;

      case 11:
        if (x < 350) {
          return h2(ps(x), x);
        } else {
          return h3(r3(ps(x), x), x);
        }
        break;

      case 12:
        if (x < 350) {
          return v2(ps(x), x);
        } else {
          return 1 / r3(ps(x), x);
        }
        break;

      case 13:
        if (x < 350) {
          return s2(ps(x), x);
        } else {
          return s3(r3(ps(x), x), x);
        }
        break;

      case 14:
        if (p < 4) {
          return t2a(p, x);
        } else if (p < pg2(x)) {
          return t2b(p, x);
        } else if (p < 16.5) {
          return t2c(p, x);
        } else if (x > h2(p, tg(p))) {
          return t2c(p, x);
        } else {
          return t3(p, x);
        }
        break;

      case 15:
        if (x < 350) {
          return h2(p, x);
        } else if (p > pg(x)) {
          return h3(r3(p, x), x);
        } else {
          return h2(p, x);
        }
        break;

      case 16:
        if (x < 350) {
          return v2(p, x);
        } else if (p > pg(x)) {
          return 1 / r3(p, x);
        } else {
          return v2(p, x);
        }
        break;

      case 17:
        if (x < 350) {
          return s2(p, x);
        } else if (p > pg(x)) {
          return s3(r3(p, x), x);
        } else {
          return s2(p, x);
        }
        break;

      case 18:
        if (p < 4) {
          t2sa(p, x);
        } else if (x > s2(p, t2b(p, hg2(p)))) {
          t2sb(p, x);
        } else if (p < 16.5) {
          t2sc(p, x);
        } else if (x > s2(p, tg(p))) {
          t2sc(p, x);
        } else {
          t3s(p, x);
        }
        break;

      case 19:
        if (x < h2(p, tg(p))) {
          return t3(p, x);
        } else if (p > pg2(x)) {
          return t2c(p, x);
        } else {
          return t2b(p, x);
        }
        break;

      case 20:
        if (p > pg(x)) {
          return h3(r3(p, x), x);
        } else {
          return h2(p, x);
        }
        break;

      case 21:
        if (p > pg(x)) {
          return 1 / r3(p, x);
        } else {
          return v2(p, x);
        }
        break;

      case 22:
        if (p > pg(x)) {
          return s3(r3(p, x), x);
        } else {
          return s2(p, x);
        }
        break;

      case 23:
        if (p < 4) {
          return t2sa(p, x);
        } else if (x > s2(p, t2b(p, hg2(p)))) {
          return t2sb(p, x);
        } else if (x > s2(p, tg(p))) {
          return t2sc(p, x);
        } else {
          return t3s(p, x);
        }
        break;

      case 24:
        return mu(p, x);
        break;

      case 25:
        return la(p, x);
        break;

      case 30:
        return r3(p, x);
        break;

      case 31:
        return p3(p, x);
        break;

      default:
        return 0.0;
    }
  }
}
