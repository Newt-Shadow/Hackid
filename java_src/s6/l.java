package s6;

import e7.a0;
import e7.i0;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final a0 f29426a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29427a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f29428b;

        static {
            int[] iArr = new int[b.values().length];
            f29428b = iArr;
            try {
                iArr[b.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29428b[b.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29428b[b.RAW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29428b[b.CRUNCHY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[i0.values().length];
            f29427a = iArr2;
            try {
                iArr2[i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f29427a[i0.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f29427a[i0.RAW.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f29427a[i0.CRUNCHY.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        TINK,
        LEGACY,
        RAW,
        CRUNCHY
    }

    private l(a0 a0Var) {
        this.f29426a = a0Var;
    }

    public static l a(String str, byte[] bArr, b bVar) {
        return new l((a0) a0.c0().u(str).v(com.google.crypto.tink.shaded.protobuf.h.m(bArr)).t(c(bVar)).j());
    }

    static i0 c(b bVar) {
        int i10 = a.f29428b[bVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return i0.CRUNCHY;
                    }
                    throw new IllegalArgumentException("Unknown output prefix type");
                }
                return i0.RAW;
            }
            return i0.LEGACY;
        }
        return i0.TINK;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0 b() {
        return this.f29426a;
    }
}
