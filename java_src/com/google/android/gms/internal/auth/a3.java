package com.google.android.gms.internal.auth;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class a3 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f5963a;

    static {
        char[] cArr = new char[80];
        f5963a = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(y2 y2Var, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        d(y2Var, sb2, 0);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                b(sb2, i10, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                b(sb2, i10, str, entry);
            }
        } else {
            sb2.append('\n');
            c(i10, sb2);
            if (!str.isEmpty()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Character.toLowerCase(str.charAt(0)));
                for (int i11 = 1; i11 < str.length(); i11++) {
                    char charAt = str.charAt(i11);
                    if (Character.isUpperCase(charAt)) {
                        sb3.append("_");
                    }
                    sb3.append(Character.toLowerCase(charAt));
                }
                str = sb3.toString();
            }
            sb2.append(str);
            if (obj instanceof String) {
                sb2.append(": \"");
                sb2.append(n3.a(new m1(((String) obj).getBytes(f2.f6009b))));
                sb2.append('\"');
            } else if (obj instanceof p1) {
                sb2.append(": \"");
                sb2.append(n3.a((p1) obj));
                sb2.append('\"');
            } else if (obj instanceof b2) {
                sb2.append(" {");
                d((b2) obj, sb2, i10 + 2);
                sb2.append("\n");
                c(i10, sb2);
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i12 = i10 + 2;
                b(sb2, i12, "key", entry2.getKey());
                b(sb2, i12, "value", entry2.getValue());
                sb2.append("\n");
                c(i10, sb2);
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj);
            }
        }
    }

    private static void c(int i10, StringBuilder sb2) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb2.append(f5963a, 0, i11);
            i10 -= i11;
        }
    }

    private static void d(y2 y2Var, StringBuilder sb2, int i10) {
        int i11;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = y2Var.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i12 = 0;
        while (true) {
            i11 = 3;
            if (i12 >= length) {
                break;
            }
            Method method3 = declaredMethods[i12];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i12++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i11);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                b(sb2, i10, substring.substring(0, substring.length() - 4), b2.f(method2, y2Var, new Object[0]));
            } else if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb2, i10, substring.substring(0, substring.length() - 3), b2.f(method, y2Var, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object f10 = b2.f(method4, y2Var, new Object[0]);
                    if (method5 == null) {
                        if (f10 instanceof Boolean) {
                            if (!((Boolean) f10).booleanValue()) {
                            }
                            b(sb2, i10, substring, f10);
                        } else if (f10 instanceof Integer) {
                            if (((Integer) f10).intValue() == 0) {
                            }
                            b(sb2, i10, substring, f10);
                        } else if (f10 instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) f10).floatValue()) == 0) {
                            }
                            b(sb2, i10, substring, f10);
                        } else if (f10 instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) f10).doubleValue()) == 0) {
                            }
                            b(sb2, i10, substring, f10);
                        } else {
                            if (f10 instanceof String) {
                                equals = f10.equals("");
                            } else if (f10 instanceof p1) {
                                equals = f10.equals(p1.f6140b);
                            } else if (f10 instanceof y2) {
                                if (f10 == ((y2) f10).h()) {
                                }
                                b(sb2, i10, substring, f10);
                            } else {
                                if ((f10 instanceof Enum) && ((Enum) f10).ordinal() == 0) {
                                }
                                b(sb2, i10, substring, f10);
                            }
                            if (equals) {
                            }
                            b(sb2, i10, substring, f10);
                        }
                    } else {
                        if (!((Boolean) b2.f(method5, y2Var, new Object[0])).booleanValue()) {
                        }
                        b(sb2, i10, substring, f10);
                    }
                }
            }
            i11 = 3;
        }
        r3 r3Var = ((b2) y2Var).zzc;
        if (r3Var != null) {
            r3Var.g(sb2, i10);
        }
    }
}
