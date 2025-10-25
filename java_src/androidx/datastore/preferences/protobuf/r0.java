package androidx.datastore.preferences.protobuf;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class r0 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f2299a;

    static {
        char[] cArr = new char[80];
        f2299a = cArr;
        Arrays.fill(cArr, ' ');
    }

    private static void a(int i10, StringBuilder sb2) {
        int i11;
        while (i10 > 0) {
            char[] cArr = f2299a;
            if (i10 > cArr.length) {
                i11 = cArr.length;
            } else {
                i11 = i10;
            }
            sb2.append(cArr, 0, i11);
            i10 -= i11;
        }
    }

    private static boolean b(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == 0) {
                return true;
            }
            return false;
        } else if (obj instanceof Float) {
            if (Float.floatToRawIntBits(((Float) obj).floatValue()) == 0) {
                return true;
            }
            return false;
        } else if (obj instanceof Double) {
            if (Double.doubleToRawLongBits(((Double) obj).doubleValue()) == 0) {
                return true;
            }
            return false;
        } else if (obj instanceof String) {
            return obj.equals("");
        } else {
            if (obj instanceof g) {
                return obj.equals(g.f2136b);
            }
            if (obj instanceof p0) {
                if (obj == ((p0) obj).a()) {
                    return true;
                }
                return false;
            } else if ((obj instanceof Enum) && ((Enum) obj).ordinal() == 0) {
                return true;
            } else {
                return false;
            }
        }
    }

    private static String c(String str) {
        if (str.isEmpty()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Character.toLowerCase(str.charAt(0)));
        for (int i10 = 1; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (Character.isUpperCase(charAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(charAt));
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                d(sb2, i10, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                d(sb2, i10, str, entry);
            }
        } else {
            sb2.append('\n');
            a(i10, sb2);
            sb2.append(c(str));
            if (obj instanceof String) {
                sb2.append(": \"");
                sb2.append(j1.c((String) obj));
                sb2.append('\"');
            } else if (obj instanceof g) {
                sb2.append(": \"");
                sb2.append(j1.a((g) obj));
                sb2.append('\"');
            } else if (obj instanceof w) {
                sb2.append(" {");
                e((w) obj, sb2, i10 + 2);
                sb2.append("\n");
                a(i10, sb2);
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i11 = i10 + 2;
                d(sb2, i11, "key", entry2.getKey());
                d(sb2, i11, "value", entry2.getValue());
                sb2.append("\n");
                a(i10, sb2);
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x016f, code lost:
        if (r5.containsKey("get" + r9.substring(0, r9.length() - 5)) != false) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void e(androidx.datastore.preferences.protobuf.p0 r16, java.lang.StringBuilder r17, int r18) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.r0.e(androidx.datastore.preferences.protobuf.p0, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String f(p0 p0Var, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        e(p0Var, sb2, 0);
        return sb2.toString();
    }
}
