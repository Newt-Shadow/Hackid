package rd;

import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class r extends o {
    private static final id.l d(final String str) {
        boolean z10;
        if (str.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return new id.l() { // from class: rd.p
                @Override // id.l
                public final Object invoke(Object obj) {
                    String e10;
                    e10 = r.e((String) obj);
                    return e10;
                }
            };
        }
        return new id.l() { // from class: rd.q
            @Override // id.l
            public final Object invoke(Object obj) {
                String f10;
                f10 = r.f(str, (String) obj);
                return f10;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String e(String line) {
        kotlin.jvm.internal.m.e(line, "line");
        return line;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String f(String str, String line) {
        kotlin.jvm.internal.m.e(line, "line");
        return str + line;
    }

    private static final int g(String str) {
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                if (!b.c(str.charAt(i10))) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            return str.length();
        }
        return i10;
    }

    public static final String h(String str, String newIndent) {
        int i10;
        String str2;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(newIndent, "newIndent");
        List i02 = b0.i0(str);
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : i02) {
            if (!n.b0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(yc.m.r(arrayList, 10));
        for (String str3 : arrayList) {
            arrayList2.add(Integer.valueOf(g(str3)));
        }
        Integer num = (Integer) yc.m.b0(arrayList2);
        int i11 = 0;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        int length = str.length() + (newIndent.length() * i02.size());
        id.l d10 = d(newIndent);
        int j10 = yc.m.j(i02);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : i02) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                yc.m.q();
            }
            String str4 = (String) obj2;
            if ((i11 == 0 || i11 == j10) && n.b0(str4)) {
                str4 = null;
            } else {
                String Q0 = n.Q0(str4, i10);
                if (Q0 != null && (str2 = (String) d10.invoke(Q0)) != null) {
                    str4 = str2;
                }
            }
            if (str4 != null) {
                arrayList3.add(str4);
            }
            i11 = i12;
        }
        return ((StringBuilder) yc.m.V(arrayList3, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
    }

    public static final String i(String str, String newIndent, String marginPrefix) {
        int i10;
        String str2;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(newIndent, "newIndent");
        kotlin.jvm.internal.m.e(marginPrefix, "marginPrefix");
        if (!n.b0(marginPrefix)) {
            List i02 = b0.i0(str);
            int length = str.length() + (newIndent.length() * i02.size());
            id.l d10 = d(newIndent);
            int j10 = yc.m.j(i02);
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            for (Object obj : i02) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    yc.m.q();
                }
                String str3 = (String) obj;
                String str4 = null;
                if ((i11 == 0 || i11 == j10) && n.b0(str3)) {
                    str3 = null;
                } else {
                    int length2 = str3.length();
                    int i13 = 0;
                    while (true) {
                        if (i13 < length2) {
                            if (!b.c(str3.charAt(i13))) {
                                i10 = i13;
                                break;
                            }
                            i13++;
                        } else {
                            i10 = -1;
                            break;
                        }
                    }
                    if (i10 != -1) {
                        int i14 = i10;
                        if (n.G(str3, marginPrefix, i10, false, 4, null)) {
                            kotlin.jvm.internal.m.c(str3, "null cannot be cast to non-null type java.lang.String");
                            str4 = str3.substring(i14 + marginPrefix.length());
                            kotlin.jvm.internal.m.d(str4, "substring(...)");
                        }
                    }
                    if (str4 != null && (str2 = (String) d10.invoke(str4)) != null) {
                        str3 = str2;
                    }
                }
                if (str3 != null) {
                    arrayList.add(str3);
                }
                i11 = i12;
            }
            return ((StringBuilder) yc.m.V(arrayList, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    public static String j(String str) {
        kotlin.jvm.internal.m.e(str, "<this>");
        return h(str, "");
    }

    public static final String k(String str, String marginPrefix) {
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(marginPrefix, "marginPrefix");
        return i(str, "", marginPrefix);
    }

    public static /* synthetic */ String l(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "|";
        }
        return k(str, str2);
    }
}
