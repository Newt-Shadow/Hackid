package k3;

import com.arthenica.ffmpegkit.MediaInformation;
import g3.j;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import y4.e0;
/* loaded from: classes.dex */
final class d extends e {

    /* renamed from: b  reason: collision with root package name */
    private long f24696b;

    /* renamed from: c  reason: collision with root package name */
    private long[] f24697c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f24698d;

    public d() {
        super(new j());
        this.f24696b = -9223372036854775807L;
        this.f24697c = new long[0];
        this.f24698d = new long[0];
    }

    private static Boolean g(e0 e0Var) {
        boolean z10 = true;
        if (e0Var.G() != 1) {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    private static Object h(e0 e0Var, int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 8) {
                            if (i10 != 10) {
                                if (i10 != 11) {
                                    return null;
                                }
                                return i(e0Var);
                            }
                            return m(e0Var);
                        }
                        return k(e0Var);
                    }
                    return l(e0Var);
                }
                return n(e0Var);
            }
            return g(e0Var);
        }
        return j(e0Var);
    }

    private static Date i(e0 e0Var) {
        Date date = new Date((long) j(e0Var).doubleValue());
        e0Var.U(2);
        return date;
    }

    private static Double j(e0 e0Var) {
        return Double.valueOf(Double.longBitsToDouble(e0Var.z()));
    }

    private static HashMap k(e0 e0Var) {
        int K = e0Var.K();
        HashMap hashMap = new HashMap(K);
        for (int i10 = 0; i10 < K; i10++) {
            String n10 = n(e0Var);
            Object h10 = h(e0Var, o(e0Var));
            if (h10 != null) {
                hashMap.put(n10, h10);
            }
        }
        return hashMap;
    }

    private static HashMap l(e0 e0Var) {
        HashMap hashMap = new HashMap();
        while (true) {
            String n10 = n(e0Var);
            int o10 = o(e0Var);
            if (o10 == 9) {
                return hashMap;
            }
            Object h10 = h(e0Var, o10);
            if (h10 != null) {
                hashMap.put(n10, h10);
            }
        }
    }

    private static ArrayList m(e0 e0Var) {
        int K = e0Var.K();
        ArrayList arrayList = new ArrayList(K);
        for (int i10 = 0; i10 < K; i10++) {
            Object h10 = h(e0Var, o(e0Var));
            if (h10 != null) {
                arrayList.add(h10);
            }
        }
        return arrayList;
    }

    private static String n(e0 e0Var) {
        int M = e0Var.M();
        int f10 = e0Var.f();
        e0Var.U(M);
        return new String(e0Var.e(), f10, M);
    }

    private static int o(e0 e0Var) {
        return e0Var.G();
    }

    @Override // k3.e
    protected boolean b(e0 e0Var) {
        return true;
    }

    @Override // k3.e
    protected boolean c(e0 e0Var, long j10) {
        if (o(e0Var) != 2 || !"onMetaData".equals(n(e0Var)) || e0Var.a() == 0 || o(e0Var) != 8) {
            return false;
        }
        HashMap k10 = k(e0Var);
        Object obj = k10.get(MediaInformation.KEY_DURATION);
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > 0.0d) {
                this.f24696b = (long) (doubleValue * 1000000.0d);
            }
        }
        Object obj2 = k10.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f24697c = new long[size];
                this.f24698d = new long[size];
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj5 = list.get(i10);
                    Object obj6 = list2.get(i10);
                    if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                        this.f24697c[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.f24698d[i10] = ((Double) obj5).longValue();
                    } else {
                        this.f24697c = new long[0];
                        this.f24698d = new long[0];
                        break;
                    }
                }
            }
        }
        return false;
    }

    public long d() {
        return this.f24696b;
    }

    public long[] e() {
        return this.f24698d;
    }

    public long[] f() {
        return this.f24697c;
    }
}
