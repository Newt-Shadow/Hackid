package com.google.android.gms.internal.measurement;

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
public abstract class kc {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f6474a;

    static {
        char[] cArr = new char[80];
        f6474a = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(ic icVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        c(icVar, sb2, 0);
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
            d(i10, sb2);
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
                ka kaVar = ka.f6472b;
                sb2.append(cd.a(new ja(((String) obj).getBytes(ob.f6615a))));
                sb2.append('\"');
            } else if (obj instanceof ka) {
                sb2.append(": \"");
                sb2.append(cd.a((ka) obj));
                sb2.append('\"');
            } else if (obj instanceof hb) {
                sb2.append(" {");
                c((hb) obj, sb2, i10 + 2);
                sb2.append("\n");
                d(i10, sb2);
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                int i12 = i10 + 2;
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                b(sb2, i12, "key", entry2.getKey());
                b(sb2, i12, "value", entry2.getValue());
                sb2.append("\n");
                d(i10, sb2);
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj);
            }
        }
    }

    private static void c(ic icVar, StringBuilder sb2, int i10) {
        int i11;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = icVar.getClass().getDeclaredMethods();
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
                b(sb2, i10, substring.substring(0, substring.length() - 4), hb.u(method2, icVar, new Object[0]));
            } else if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb2, i10, substring.substring(0, substring.length() - 3), hb.u(method, icVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object u10 = hb.u(method4, icVar, new Object[0]);
                    if (method5 == null) {
                        if (u10 instanceof Boolean) {
                            if (!((Boolean) u10).booleanValue()) {
                            }
                            b(sb2, i10, substring, u10);
                        } else if (u10 instanceof Integer) {
                            if (((Integer) u10).intValue() == 0) {
                            }
                            b(sb2, i10, substring, u10);
                        } else if (u10 instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) u10).floatValue()) == 0) {
                            }
                            b(sb2, i10, substring, u10);
                        } else if (u10 instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) u10).doubleValue()) == 0) {
                            }
                            b(sb2, i10, substring, u10);
                        } else {
                            if (u10 instanceof String) {
                                equals = u10.equals("");
                            } else if (u10 instanceof ka) {
                                equals = u10.equals(ka.f6472b);
                            } else if (u10 instanceof ic) {
                                if (u10 == ((ic) u10).d()) {
                                }
                                b(sb2, i10, substring, u10);
                            } else {
                                if ((u10 instanceof Enum) && ((Enum) u10).ordinal() == 0) {
                                }
                                b(sb2, i10, substring, u10);
                            }
                            if (equals) {
                            }
                            b(sb2, i10, substring, u10);
                        }
                    } else {
                        if (!((Boolean) hb.u(method5, icVar, new Object[0])).booleanValue()) {
                        }
                        b(sb2, i10, substring, u10);
                    }
                }
            }
            i11 = 3;
        }
        fd fdVar = ((hb) icVar).zzc;
        if (fdVar != null) {
            fdVar.i(sb2, i10);
        }
    }

    private static void d(int i10, StringBuilder sb2) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb2.append(f6474a, 0, i11);
            i10 -= i11;
        }
    }
}
