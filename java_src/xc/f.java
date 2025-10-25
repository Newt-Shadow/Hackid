package xc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class f {

    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f32710a;

        static {
            int[] iArr = new int[h.values().length];
            try {
                iArr[h.f32711a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[h.f32712b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[h.f32713c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f32710a = iArr;
        }
    }

    public static d a(id.a initializer) {
        kotlin.jvm.internal.m.e(initializer, "initializer");
        return new o(initializer, null, 2, null);
    }

    public static d b(h mode, id.a initializer) {
        kotlin.jvm.internal.m.e(mode, "mode");
        kotlin.jvm.internal.m.e(initializer, "initializer");
        int i10 = a.f32710a[mode.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return new u(initializer);
                }
                throw new i();
            }
            return new n(initializer);
        }
        return new o(initializer, null, 2, null);
    }
}
