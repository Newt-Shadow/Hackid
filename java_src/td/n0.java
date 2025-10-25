package td;

import id.Function2;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    public static final n0 f30669a = new n0("DEFAULT", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final n0 f30670b = new n0("LAZY", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final n0 f30671c = new n0("ATOMIC", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final n0 f30672d = new n0("UNDISPATCHED", 3);

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ n0[] f30673e;

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ cd.a f30674f;

    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f30675a;

        static {
            int[] iArr = new int[n0.values().length];
            try {
                iArr[n0.f30669a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[n0.f30671c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[n0.f30672d.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[n0.f30670b.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f30675a = iArr;
        }
    }

    static {
        n0[] a10 = a();
        f30673e = a10;
        f30674f = cd.b.a(a10);
    }

    private n0(String str, int i10) {
    }

    private static final /* synthetic */ n0[] a() {
        return new n0[]{f30669a, f30670b, f30671c, f30672d};
    }

    public static n0 valueOf(String str) {
        return (n0) Enum.valueOf(n0.class, str);
    }

    public static n0[] values() {
        return (n0[]) f30673e.clone();
    }

    public final void b(Function2 function2, Object obj, ad.e eVar) {
        int i10 = a.f30675a[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new xc.i();
                    }
                    return;
                }
                zd.b.a(function2, obj, eVar);
                return;
            }
            ad.g.a(function2, obj, eVar);
            return;
        }
        zd.a.c(function2, obj, eVar);
    }

    public final boolean f() {
        if (this == f30670b) {
            return true;
        }
        return false;
    }
}
