package tb;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements n {

    /* renamed from: a  reason: collision with root package name */
    final String f30575a;

    /* renamed from: b  reason: collision with root package name */
    final int f30576b;

    /* renamed from: c  reason: collision with root package name */
    final int f30577c;

    /* renamed from: d  reason: collision with root package name */
    private final LinkedList f30578d = new LinkedList();

    /* renamed from: e  reason: collision with root package name */
    private final Set f30579e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private final Set f30580f = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    private final Map f30581g = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(String str, int i10, int i11) {
        this.f30575a = str;
        this.f30576b = i10;
        this.f30577c = i11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        r0.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized tb.k g(tb.m r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.LinkedList r0 = r4.f30578d     // Catch: java.lang.Throwable -> L32
            java.util.ListIterator r0 = r0.listIterator()     // Catch: java.lang.Throwable -> L32
        L7:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L32
            r2 = 0
            if (r1 == 0) goto L30
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L32
            tb.k r1 = (tb.k) r1     // Catch: java.lang.Throwable -> L32
            java.lang.Integer r3 = r1.a()     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L26
            java.util.Map r2 = r4.f30581g     // Catch: java.lang.Throwable -> L32
            java.lang.Integer r3 = r1.a()     // Catch: java.lang.Throwable -> L32
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L32
            tb.m r2 = (tb.m) r2     // Catch: java.lang.Throwable -> L32
        L26:
            if (r2 == 0) goto L2b
            if (r2 == r5) goto L2b
            goto L7
        L2b:
            r0.remove()     // Catch: java.lang.Throwable -> L32
            monitor-exit(r4)
            return r1
        L30:
            monitor-exit(r4)
            return r2
        L32:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tb.p.g(tb.m):tb.k");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public synchronized void h(m mVar) {
        HashSet<m> hashSet = new HashSet(this.f30579e);
        this.f30580f.remove(mVar);
        this.f30579e.add(mVar);
        if (!mVar.b() && mVar.d() != null) {
            this.f30581g.remove(mVar.d());
        }
        j(mVar);
        for (m mVar2 : hashSet) {
            j(mVar2);
        }
    }

    private synchronized void j(m mVar) {
        k g10 = g(mVar);
        if (g10 != null) {
            this.f30580f.add(mVar);
            this.f30579e.remove(mVar);
            if (g10.a() != null) {
                this.f30581g.put(g10.a(), mVar);
            }
            mVar.e(g10);
        }
    }

    @Override // tb.n
    public synchronized void c(k kVar) {
        this.f30578d.add(kVar);
        for (m mVar : new HashSet(this.f30579e)) {
            j(mVar);
        }
    }

    @Override // tb.n
    public synchronized void d() {
        for (m mVar : this.f30579e) {
            mVar.f();
        }
        for (m mVar2 : this.f30580f) {
            mVar2.f();
        }
    }

    protected m f(String str, int i10) {
        return new m(str, i10);
    }

    @Override // tb.n
    public synchronized void start() {
        for (int i10 = 0; i10 < this.f30576b; i10++) {
            final m f10 = f(this.f30575a + i10, this.f30577c);
            f10.g(new Runnable() { // from class: tb.o
                @Override // java.lang.Runnable
                public final void run() {
                    p.this.h(f10);
                }
            });
            this.f30579e.add(f10);
        }
    }
}
