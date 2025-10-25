package aa;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f226a = new a("DATA_MASK_000", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final c f227b = new c("DATA_MASK_001", 1) { // from class: aa.c.b
        @Override // aa.c
        boolean b(int i10, int i11) {
            return (i10 & 1) == 0;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final c f228c = new c("DATA_MASK_010", 2) { // from class: aa.c.c
        @Override // aa.c
        boolean b(int i10, int i11) {
            if (i11 % 3 == 0) {
                return true;
            }
            return false;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final c f229d = new c("DATA_MASK_011", 3) { // from class: aa.c.d
        @Override // aa.c
        boolean b(int i10, int i11) {
            if ((i10 + i11) % 3 == 0) {
                return true;
            }
            return false;
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public static final c f230e = new c("DATA_MASK_100", 4) { // from class: aa.c.e
        @Override // aa.c
        boolean b(int i10, int i11) {
            if ((((i10 / 2) + (i11 / 3)) & 1) == 0) {
                return true;
            }
            return false;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public static final c f231f = new c("DATA_MASK_101", 5) { // from class: aa.c.f
        @Override // aa.c
        boolean b(int i10, int i11) {
            if ((i10 * i11) % 6 == 0) {
                return true;
            }
            return false;
        }
    };

    /* renamed from: g  reason: collision with root package name */
    public static final c f232g = new c("DATA_MASK_110", 6) { // from class: aa.c.g
        @Override // aa.c
        boolean b(int i10, int i11) {
            if ((i10 * i11) % 6 < 3) {
                return true;
            }
            return false;
        }
    };

    /* renamed from: h  reason: collision with root package name */
    public static final c f233h = new c("DATA_MASK_111", 7) { // from class: aa.c.h
        @Override // aa.c
        boolean b(int i10, int i11) {
            if (((i10 + i11 + ((i10 * i11) % 3)) & 1) == 0) {
                return true;
            }
            return false;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ c[] f234i = a();

    /* loaded from: classes.dex */
    enum a extends c {
        a(String str, int i10) {
            super(str, i10, null);
        }

        @Override // aa.c
        boolean b(int i10, int i11) {
            return ((i10 + i11) & 1) == 0;
        }
    }

    private c(String str, int i10) {
    }

    private static /* synthetic */ c[] a() {
        return new c[]{f226a, f227b, f228c, f229d, f230e, f231f, f232g, f233h};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f234i.clone();
    }

    abstract boolean b(int i10, int i11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(j9.b bVar, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < i10; i12++) {
                if (b(i11, i12)) {
                    bVar.d(i12, i11);
                }
            }
        }
    }

    /* synthetic */ c(String str, int i10, a aVar) {
        this(str, i10);
    }
}
