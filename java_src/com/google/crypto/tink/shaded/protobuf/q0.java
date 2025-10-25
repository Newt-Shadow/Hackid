package com.google.crypto.tink.shaded.protobuf;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class q0 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f8579a;

    static {
        char[] cArr = new char[80];
        f8579a = cArr;
        Arrays.fill(cArr, ' ');
    }

    private static void a(int i10, StringBuilder sb2) {
        int i11;
        while (i10 > 0) {
            char[] cArr = f8579a;
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
            if (obj instanceof h) {
                return obj.equals(h.f8444b);
            }
            if (obj instanceof o0) {
                if (obj == ((o0) obj).a()) {
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
                sb2.append(h1.c((String) obj));
                sb2.append('\"');
            } else if (obj instanceof h) {
                sb2.append(": \"");
                sb2.append(h1.a((h) obj));
                sb2.append('\"');
            } else if (obj instanceof x) {
                sb2.append(" {");
                e((x) obj, sb2, i10 + 2);
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
    private static void e(com.google.crypto.tink.shaded.protobuf.o0 r16, java.lang.StringBuilder r17, int r18) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.q0.e(com.google.crypto.tink.shaded.protobuf.o0, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String f(o0 o0Var, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        e(o0Var, sb2, 0);
        return sb2.toString();
    }
}
