package u9;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
abstract class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Map f31072a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map f31073b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map f31074c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map f31075d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final boolean f31076a;

        /* renamed from: b  reason: collision with root package name */
        final int f31077b;

        private a(boolean z10, int i10) {
            this.f31076a = z10;
            this.f31077b = i10;
        }

        static a a(int i10) {
            return new a(false, i10);
        }

        static a b(int i10) {
            return new a(true, i10);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f31072a = hashMap;
        hashMap.put("00", a.a(18));
        hashMap.put("01", a.a(14));
        hashMap.put("02", a.a(14));
        hashMap.put("10", a.b(20));
        hashMap.put("11", a.a(6));
        hashMap.put("12", a.a(6));
        hashMap.put("13", a.a(6));
        hashMap.put("15", a.a(6));
        hashMap.put("17", a.a(6));
        hashMap.put("20", a.a(2));
        hashMap.put("21", a.b(20));
        hashMap.put("22", a.b(29));
        hashMap.put("30", a.b(8));
        hashMap.put("37", a.b(8));
        for (int i10 = 90; i10 <= 99; i10++) {
            f31072a.put(String.valueOf(i10), a.b(30));
        }
        HashMap hashMap2 = new HashMap();
        f31073b = hashMap2;
        hashMap2.put("240", a.b(30));
        hashMap2.put("241", a.b(30));
        hashMap2.put("242", a.b(6));
        hashMap2.put("250", a.b(30));
        hashMap2.put("251", a.b(30));
        hashMap2.put("253", a.b(17));
        hashMap2.put("254", a.b(20));
        hashMap2.put("400", a.b(30));
        hashMap2.put("401", a.b(30));
        hashMap2.put("402", a.a(17));
        hashMap2.put("403", a.b(30));
        hashMap2.put("410", a.a(13));
        hashMap2.put("411", a.a(13));
        hashMap2.put("412", a.a(13));
        hashMap2.put("413", a.a(13));
        hashMap2.put("414", a.a(13));
        hashMap2.put("420", a.b(20));
        hashMap2.put("421", a.b(15));
        hashMap2.put("422", a.a(3));
        hashMap2.put("423", a.b(15));
        hashMap2.put("424", a.a(3));
        hashMap2.put("425", a.a(3));
        hashMap2.put("426", a.a(3));
        f31074c = new HashMap();
        for (int i11 = 310; i11 <= 316; i11++) {
            f31074c.put(String.valueOf(i11), a.a(6));
        }
        for (int i12 = 320; i12 <= 336; i12++) {
            f31074c.put(String.valueOf(i12), a.a(6));
        }
        for (int i13 = 340; i13 <= 357; i13++) {
            f31074c.put(String.valueOf(i13), a.a(6));
        }
        for (int i14 = 360; i14 <= 369; i14++) {
            f31074c.put(String.valueOf(i14), a.a(6));
        }
        Map map = f31074c;
        map.put("390", a.b(15));
        map.put("391", a.b(18));
        map.put("392", a.b(15));
        map.put("393", a.b(18));
        map.put("703", a.b(30));
        HashMap hashMap3 = new HashMap();
        f31075d = hashMap3;
        hashMap3.put("7001", a.a(13));
        hashMap3.put("7002", a.b(30));
        hashMap3.put("7003", a.a(10));
        hashMap3.put("8001", a.a(14));
        hashMap3.put("8002", a.b(20));
        hashMap3.put("8003", a.b(30));
        hashMap3.put("8004", a.b(30));
        hashMap3.put("8005", a.a(6));
        hashMap3.put("8006", a.a(18));
        hashMap3.put("8007", a.b(30));
        hashMap3.put("8008", a.b(12));
        hashMap3.put("8018", a.a(18));
        hashMap3.put("8020", a.b(25));
        hashMap3.put("8100", a.a(6));
        hashMap3.put("8101", a.a(10));
        hashMap3.put("8102", a.a(2));
        hashMap3.put("8110", a.b(70));
        hashMap3.put("8200", a.b(70));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() >= 2) {
            a aVar = (a) f31072a.get(str.substring(0, 2));
            if (aVar != null) {
                if (aVar.f31076a) {
                    return c(2, aVar.f31077b, str);
                }
                return b(2, aVar.f31077b, str);
            } else if (str.length() >= 3) {
                String substring = str.substring(0, 3);
                a aVar2 = (a) f31073b.get(substring);
                if (aVar2 != null) {
                    if (aVar2.f31076a) {
                        return c(3, aVar2.f31077b, str);
                    }
                    return b(3, aVar2.f31077b, str);
                } else if (str.length() >= 4) {
                    a aVar3 = (a) f31074c.get(substring);
                    if (aVar3 != null) {
                        if (aVar3.f31076a) {
                            return c(4, aVar3.f31077b, str);
                        }
                        return b(4, aVar3.f31077b, str);
                    }
                    a aVar4 = (a) f31075d.get(str.substring(0, 4));
                    if (aVar4 != null) {
                        if (aVar4.f31076a) {
                            return c(4, aVar4.f31077b, str);
                        }
                        return b(4, aVar4.f31077b, str);
                    }
                    throw d9.j.a();
                } else {
                    throw d9.j.a();
                }
            } else {
                throw d9.j.a();
            }
        }
        throw d9.j.a();
    }

    private static String b(int i10, int i11, String str) {
        if (str.length() >= i10) {
            String substring = str.substring(0, i10);
            int i12 = i11 + i10;
            if (str.length() >= i12) {
                String substring2 = str.substring(i10, i12);
                String str2 = '(' + substring + ')' + substring2;
                String a10 = a(str.substring(i12));
                if (a10 != null) {
                    return str2 + a10;
                }
                return str2;
            }
            throw d9.j.a();
        }
        throw d9.j.a();
    }

    private static String c(int i10, int i11, String str) {
        String substring = str.substring(0, i10);
        int min = Math.min(str.length(), i11 + i10);
        String substring2 = str.substring(i10, min);
        String str2 = '(' + substring + ')' + substring2;
        String a10 = a(str.substring(min));
        if (a10 != null) {
            return str2 + a10;
        }
        return str2;
    }
}
