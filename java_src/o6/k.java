package o6;

import java.util.Comparator;
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    private static final k f27437a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final k f27438b = new b(-1);

    /* renamed from: c  reason: collision with root package name */
    private static final k f27439c = new b(1);

    /* loaded from: classes.dex */
    class a extends k {
        a() {
            super(null);
        }

        @Override // o6.k
        public k d(int i10, int i11) {
            return k(q6.e.e(i10, i11));
        }

        @Override // o6.k
        public k e(long j10, long j11) {
            return k(q6.g.a(j10, j11));
        }

        @Override // o6.k
        public k f(Object obj, Object obj2, Comparator comparator) {
            return k(comparator.compare(obj, obj2));
        }

        @Override // o6.k
        public k g(boolean z10, boolean z11) {
            return k(q6.a.a(z10, z11));
        }

        @Override // o6.k
        public k h(boolean z10, boolean z11) {
            return k(q6.a.a(z11, z10));
        }

        @Override // o6.k
        public int i() {
            return 0;
        }

        k k(int i10) {
            if (i10 < 0) {
                return k.f27438b;
            }
            return i10 > 0 ? k.f27439c : k.f27437a;
        }
    }

    /* loaded from: classes.dex */
    private static final class b extends k {

        /* renamed from: d  reason: collision with root package name */
        final int f27440d;

        b(int i10) {
            super(null);
            this.f27440d = i10;
        }

        @Override // o6.k
        public k d(int i10, int i11) {
            return this;
        }

        @Override // o6.k
        public k e(long j10, long j11) {
            return this;
        }

        @Override // o6.k
        public k f(Object obj, Object obj2, Comparator comparator) {
            return this;
        }

        @Override // o6.k
        public k g(boolean z10, boolean z11) {
            return this;
        }

        @Override // o6.k
        public k h(boolean z10, boolean z11) {
            return this;
        }

        @Override // o6.k
        public int i() {
            return this.f27440d;
        }
    }

    private k() {
    }

    /* synthetic */ k(a aVar) {
        this();
    }

    public static k j() {
        return f27437a;
    }

    public abstract k d(int i10, int i11);

    public abstract k e(long j10, long j11);

    public abstract k f(Object obj, Object obj2, Comparator comparator);

    public abstract k g(boolean z10, boolean z11);

    public abstract k h(boolean z10, boolean z11);

    public abstract int i();
}
