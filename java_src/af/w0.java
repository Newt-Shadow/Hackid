package af;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class w0 {

    /* renamed from: a  reason: collision with root package name */
    public static final w0 f462a = new w0();

    /* renamed from: b  reason: collision with root package name */
    private static final int f463b = 65536;

    /* renamed from: c  reason: collision with root package name */
    private static final v0 f464c = new v0(new byte[0], 0, 0, false, false);

    /* renamed from: d  reason: collision with root package name */
    private static final int f465d;

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicReference[] f466e;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f465d = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i10 = 0; i10 < highestOneBit; i10++) {
            atomicReferenceArr[i10] = new AtomicReference();
        }
        f466e = atomicReferenceArr;
    }

    private w0() {
    }

    private final AtomicReference a() {
        return f466e[(int) (Thread.currentThread().getId() & (f465d - 1))];
    }

    public static final void b(v0 segment) {
        boolean z10;
        int i10;
        kotlin.jvm.internal.m.e(segment, "segment");
        if (segment.f460f == null && segment.f461g == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (segment.f458d) {
                return;
            }
            AtomicReference a10 = f462a.a();
            v0 v0Var = f464c;
            v0 v0Var2 = (v0) a10.getAndSet(v0Var);
            if (v0Var2 == v0Var) {
                return;
            }
            if (v0Var2 != null) {
                i10 = v0Var2.f457c;
            } else {
                i10 = 0;
            }
            if (i10 >= f463b) {
                a10.set(v0Var2);
                return;
            }
            segment.f460f = v0Var2;
            segment.f456b = 0;
            segment.f457c = i10 + 8192;
            a10.set(segment);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final v0 c() {
        AtomicReference a10 = f462a.a();
        v0 v0Var = f464c;
        v0 v0Var2 = (v0) a10.getAndSet(v0Var);
        if (v0Var2 == v0Var) {
            return new v0();
        }
        if (v0Var2 == null) {
            a10.set(null);
            return new v0();
        }
        a10.set(v0Var2.f460f);
        v0Var2.f460f = null;
        v0Var2.f457c = 0;
        return v0Var2;
    }
}
