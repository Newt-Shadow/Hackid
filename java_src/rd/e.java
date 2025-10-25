package rd;

import id.Function2;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e implements qd.e {

    /* renamed from: a  reason: collision with root package name */
    private final CharSequence f29097a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29098b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29099c;

    /* renamed from: d  reason: collision with root package name */
    private final Function2 f29100d;

    /* loaded from: classes2.dex */
    public static final class a implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        private int f29101a = -1;

        /* renamed from: b  reason: collision with root package name */
        private int f29102b;

        /* renamed from: c  reason: collision with root package name */
        private int f29103c;

        /* renamed from: d  reason: collision with root package name */
        private od.c f29104d;

        /* renamed from: e  reason: collision with root package name */
        private int f29105e;

        a() {
            int f10;
            f10 = od.i.f(e.this.f29098b, 0, e.this.f29097a.length());
            this.f29102b = f10;
            this.f29103c = f10;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
            if (r0 < r6.f29106f.f29099c) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void b() {
            /*
                r6 = this;
                int r0 = r6.f29103c
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.f29101a = r1
                r0 = 0
                r6.f29104d = r0
                goto L9e
            Lc:
                rd.e r0 = rd.e.this
                int r0 = rd.e.d(r0)
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L23
                int r0 = r6.f29105e
                int r0 = r0 + r3
                r6.f29105e = r0
                rd.e r4 = rd.e.this
                int r4 = rd.e.d(r4)
                if (r0 >= r4) goto L31
            L23:
                int r0 = r6.f29103c
                rd.e r4 = rd.e.this
                java.lang.CharSequence r4 = rd.e.c(r4)
                int r4 = r4.length()
                if (r0 <= r4) goto L47
            L31:
                od.c r0 = new od.c
                int r1 = r6.f29102b
                rd.e r4 = rd.e.this
                java.lang.CharSequence r4 = rd.e.c(r4)
                int r4 = rd.n.T(r4)
                r0.<init>(r1, r4)
                r6.f29104d = r0
                r6.f29103c = r2
                goto L9c
            L47:
                rd.e r0 = rd.e.this
                id.Function2 r0 = rd.e.b(r0)
                rd.e r4 = rd.e.this
                java.lang.CharSequence r4 = rd.e.c(r4)
                int r5 = r6.f29103c
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r0.invoke(r4, r5)
                xc.k r0 = (xc.k) r0
                if (r0 != 0) goto L77
                od.c r0 = new od.c
                int r1 = r6.f29102b
                rd.e r4 = rd.e.this
                java.lang.CharSequence r4 = rd.e.c(r4)
                int r4 = rd.n.T(r4)
                r0.<init>(r1, r4)
                r6.f29104d = r0
                r6.f29103c = r2
                goto L9c
            L77:
                java.lang.Object r2 = r0.a()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                java.lang.Object r0 = r0.b()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f29102b
                od.c r4 = od.g.k(r4, r2)
                r6.f29104d = r4
                int r2 = r2 + r0
                r6.f29102b = r2
                if (r0 != 0) goto L99
                r1 = r3
            L99:
                int r2 = r2 + r1
                r6.f29103c = r2
            L9c:
                r6.f29101a = r3
            L9e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: rd.e.a.b():void");
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public od.c next() {
            if (this.f29101a == -1) {
                b();
            }
            if (this.f29101a != 0) {
                od.c cVar = this.f29104d;
                kotlin.jvm.internal.m.c(cVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
                this.f29104d = null;
                this.f29101a = -1;
                return cVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f29101a == -1) {
                b();
            }
            if (this.f29101a == 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public e(CharSequence input, int i10, int i11, Function2 getNextMatch) {
        kotlin.jvm.internal.m.e(input, "input");
        kotlin.jvm.internal.m.e(getNextMatch, "getNextMatch");
        this.f29097a = input;
        this.f29098b = i10;
        this.f29099c = i11;
        this.f29100d = getNextMatch;
    }

    @Override // qd.e
    public Iterator iterator() {
        return new a();
    }
}
