package com.google.android.gms.measurement.internal;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    final String f7303a;

    /* renamed from: b  reason: collision with root package name */
    final int f7304b;

    /* renamed from: c  reason: collision with root package name */
    Boolean f7305c;

    /* renamed from: d  reason: collision with root package name */
    Boolean f7306d;

    /* renamed from: e  reason: collision with root package name */
    Long f7307e;

    /* renamed from: f  reason: collision with root package name */
    Long f7308f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, int i10) {
        this.f7303a = str;
        this.f7304b = i10;
    }

    private static Boolean d(String str, int i10, boolean z10, String str2, List list, String str3, p5 p5Var) {
        int i11;
        if (i10 == 7) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z10 && i10 != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i10 - 1) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                if (true != z10) {
                    i11 = 66;
                } else {
                    i11 = 0;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, i11).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (p5Var != null) {
                        p5Var.r().b("Invalid regular expression in REGEXP audience filter. expression", str3);
                    }
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean e(Boolean bool, boolean z10) {
        boolean z11;
        if (bool == null) {
            return null;
        }
        if (bool.booleanValue() != z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        return Boolean.valueOf(z11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean f(String str, com.google.android.gms.internal.measurement.q4 q4Var, p5 p5Var) {
        String E;
        List list;
        String str2;
        n5.q.k(q4Var);
        if (str == null || !q4Var.C() || q4Var.L() == 1 || (q4Var.L() != 7 ? !q4Var.D() : q4Var.I() == 0)) {
            return null;
        }
        int L = q4Var.L();
        boolean G = q4Var.G();
        if (!G && L != 2 && L != 7) {
            E = q4Var.E().toUpperCase(Locale.ENGLISH);
        } else {
            E = q4Var.E();
        }
        String str3 = E;
        if (q4Var.I() == 0) {
            list = null;
        } else {
            List<String> H = q4Var.H();
            if (!G) {
                ArrayList arrayList = new ArrayList(H.size());
                for (String str4 : H) {
                    arrayList.add(str4.toUpperCase(Locale.ENGLISH));
                }
                H = Collections.unmodifiableList(arrayList);
            }
            list = H;
        }
        if (L == 2) {
            str2 = str3;
        } else {
            str2 = null;
        }
        return d(str, L, G, str3, list, str2, p5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean g(long j10, com.google.android.gms.internal.measurement.k4 k4Var) {
        try {
            return j(new BigDecimal(j10), k4Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean h(double d10, com.google.android.gms.internal.measurement.k4 k4Var) {
        try {
            return j(new BigDecimal(d10), k4Var, Math.ulp(d10));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean i(String str, com.google.android.gms.internal.measurement.k4 k4Var) {
        if (!td.O(str)) {
            return null;
        }
        try {
            return j(new BigDecimal(str), k4Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean j(BigDecimal bigDecimal, com.google.android.gms.internal.measurement.k4 k4Var, double d10) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        n5.q.k(k4Var);
        if (k4Var.C()) {
            boolean z10 = true;
            if (k4Var.N() != 1) {
                if (k4Var.N() == 5) {
                    if (!k4Var.H() || !k4Var.J()) {
                        return null;
                    }
                } else if (!k4Var.F()) {
                    return null;
                }
                int N = k4Var.N();
                if (k4Var.N() == 5) {
                    if (td.O(k4Var.I()) && td.O(k4Var.K())) {
                        try {
                            BigDecimal bigDecimal5 = new BigDecimal(k4Var.I());
                            bigDecimal4 = new BigDecimal(k4Var.K());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    return null;
                } else if (!td.O(k4Var.G())) {
                    return null;
                } else {
                    try {
                        bigDecimal2 = new BigDecimal(k4Var.G());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                    } catch (NumberFormatException unused2) {
                    }
                }
                if (N == 5) {
                    if (bigDecimal3 == null) {
                        return null;
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                }
                int i10 = N - 1;
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4 || bigDecimal3 == null) {
                                return null;
                            }
                            if (bigDecimal.compareTo(bigDecimal3) < 0 || bigDecimal.compareTo(bigDecimal4) > 0) {
                                z10 = false;
                            }
                            return Boolean.valueOf(z10);
                        } else if (bigDecimal2 == null) {
                            return null;
                        } else {
                            if (d10 != 0.0d) {
                                if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d10).multiply(new BigDecimal(2)))) <= 0 || bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d10).multiply(new BigDecimal(2)))) >= 0) {
                                    z10 = false;
                                }
                                return Boolean.valueOf(z10);
                            }
                            if (bigDecimal.compareTo(bigDecimal2) != 0) {
                                z10 = false;
                            }
                            return Boolean.valueOf(z10);
                        }
                    } else if (bigDecimal2 == null) {
                        return null;
                    } else {
                        if (bigDecimal.compareTo(bigDecimal2) <= 0) {
                            z10 = false;
                        }
                        return Boolean.valueOf(z10);
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                } else {
                    if (bigDecimal.compareTo(bigDecimal2) >= 0) {
                        z10 = false;
                    }
                    return Boolean.valueOf(z10);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean c();
}
