package yd;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: e  reason: collision with root package name */
    public static final a f33292e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33293f = AtomicReferenceFieldUpdater.newUpdater(s.class, Object.class, "_next$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f33294g = AtomicLongFieldUpdater.newUpdater(s.class, "_state$volatile");

    /* renamed from: h  reason: collision with root package name */
    public static final f0 f33295h = new f0("REMOVE_FROZEN");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* renamed from: a  reason: collision with root package name */
    private final int f33296a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33297b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33298c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f33299d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j10) {
            return (j10 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j10, int i10) {
            return d(j10, 1073741823L) | (i10 << 0);
        }

        public final long c(long j10, int i10) {
            return d(j10, 1152921503533105152L) | (i10 << 30);
        }

        public final long d(long j10, long j11) {
            return j10 & (~j11);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f33300a;

        public b(int i10) {
            this.f33300a = i10;
        }
    }

    public s(int i10, boolean z10) {
        boolean z11;
        this.f33296a = i10;
        this.f33297b = z10;
        int i11 = i10 - 1;
        this.f33298c = i11;
        this.f33299d = new AtomicReferenceArray(i10);
        if (i11 <= 1073741823) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            if ((i10 & i11) == 0) {
                return;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final s b(long j10) {
        s sVar = new s(this.f33296a * 2, this.f33297b);
        int i10 = (int) ((1073741823 & j10) >> 0);
        int i11 = (int) ((1152921503533105152L & j10) >> 30);
        while (true) {
            int i12 = this.f33298c;
            if ((i10 & i12) != (i12 & i11)) {
                Object obj = f().get(this.f33298c & i10);
                if (obj == null) {
                    obj = new b(i10);
                }
                sVar.f().set(sVar.f33298c & i10, obj);
                i10++;
            } else {
                f33294g.set(sVar, f33292e.d(j10, 1152921504606846976L));
                return sVar;
            }
        }
    }

    private final s c(long j10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33293f;
        while (true) {
            s sVar = (s) atomicReferenceFieldUpdater.get(this);
            if (sVar != null) {
                return sVar;
            }
            androidx.concurrent.futures.b.a(f33293f, this, null, b(j10));
        }
    }

    private final s e(int i10, Object obj) {
        Object obj2 = f().get(this.f33298c & i10);
        if ((obj2 instanceof b) && ((b) obj2).f33300a == i10) {
            f().set(i10 & this.f33298c, obj);
            return this;
        }
        return null;
    }

    private final /* synthetic */ AtomicReferenceArray f() {
        return this.f33299d;
    }

    private final long k() {
        long j10;
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f33294g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 1152921504606846976L) != 0) {
                return j10;
            }
            j11 = j10 | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j11));
        return j11;
    }

    private final s n(int i10, int i11) {
        long j10;
        int i12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f33294g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            i12 = (int) ((1073741823 & j10) >> 0);
            if ((1152921504606846976L & j10) != 0) {
                return l();
            }
        } while (!f33294g.compareAndSet(this, j10, f33292e.b(j10, i11)));
        f().set(this.f33298c & i12, null);
        return null;
    }

    public final int a(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f33294g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j10) != 0) {
                return f33292e.a(j10);
            }
            int i10 = (int) ((1073741823 & j10) >> 0);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.f33298c;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.f33297b && f().get(i11 & i12) != null) {
                int i13 = this.f33296a;
                if (i13 < 1024 || ((i11 - i10) & 1073741823) > (i13 >> 1)) {
                    break;
                }
            } else if (f33294g.compareAndSet(this, j10, f33292e.c(j10, (i11 + 1) & 1073741823))) {
                f().set(i11 & i12, obj);
                s sVar = this;
                while ((f33294g.get(sVar) & 1152921504606846976L) != 0 && (sVar = sVar.l().e(i11, obj)) != null) {
                }
                return 0;
            }
        }
        return 1;
    }

    public final boolean d() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f33294g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final int g() {
        long j10 = f33294g.get(this);
        return (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j10) >> 0))) & 1073741823;
    }

    public final boolean j() {
        long j10 = f33294g.get(this);
        if (((int) ((1073741823 & j10) >> 0)) != ((int) ((j10 & 1152921503533105152L) >> 30))) {
            return false;
        }
        return true;
    }

    public final s l() {
        return c(k());
    }

    public final Object m() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f33294g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j10) != 0) {
                return f33295h;
            }
            int i10 = (int) ((1073741823 & j10) >> 0);
            int i11 = this.f33298c;
            if ((((int) ((1152921503533105152L & j10) >> 30)) & i11) == (i11 & i10)) {
                return null;
            }
            Object obj = f().get(this.f33298c & i10);
            if (obj == null) {
                if (this.f33297b) {
                    return null;
                }
            } else if (obj instanceof b) {
                return null;
            } else {
                int i12 = (i10 + 1) & 1073741823;
                if (f33294g.compareAndSet(this, j10, f33292e.b(j10, i12))) {
                    f().set(this.f33298c & i10, null);
                    return obj;
                } else if (this.f33297b) {
                    s sVar = this;
                    do {
                        sVar = sVar.n(i10, i12);
                    } while (sVar != null);
                    return obj;
                }
            }
        }
    }
}
