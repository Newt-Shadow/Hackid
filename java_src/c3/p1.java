package c3;

import android.util.Base64;
import b3.g4;
import c3.b;
import c3.s3;
import d4.t;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
/* loaded from: classes.dex */
public final class p1 implements s3 {

    /* renamed from: h  reason: collision with root package name */
    public static final n6.s f4930h = new n6.s() { // from class: c3.o1
        @Override // n6.s
        public final Object get() {
            String k10;
            k10 = p1.k();
            return k10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final Random f4931i = new Random();

    /* renamed from: a  reason: collision with root package name */
    private final g4.d f4932a;

    /* renamed from: b  reason: collision with root package name */
    private final g4.b f4933b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap f4934c;

    /* renamed from: d  reason: collision with root package name */
    private final n6.s f4935d;

    /* renamed from: e  reason: collision with root package name */
    private s3.a f4936e;

    /* renamed from: f  reason: collision with root package name */
    private g4 f4937f;

    /* renamed from: g  reason: collision with root package name */
    private String f4938g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f4939a;

        /* renamed from: b  reason: collision with root package name */
        private int f4940b;

        /* renamed from: c  reason: collision with root package name */
        private long f4941c;

        /* renamed from: d  reason: collision with root package name */
        private t.b f4942d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f4943e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f4944f;

        public a(String str, int i10, t.b bVar) {
            long j10;
            this.f4939a = str;
            this.f4940b = i10;
            if (bVar == null) {
                j10 = -1;
            } else {
                j10 = bVar.f14945d;
            }
            this.f4941c = j10;
            if (bVar != null && bVar.b()) {
                this.f4942d = bVar;
            }
        }

        private int l(g4 g4Var, g4 g4Var2, int i10) {
            if (i10 >= g4Var.t()) {
                if (i10 >= g4Var2.t()) {
                    return -1;
                }
                return i10;
            }
            g4Var.r(i10, p1.this.f4932a);
            for (int i11 = p1.this.f4932a.f4087o; i11 <= p1.this.f4932a.f4088p; i11++) {
                int f10 = g4Var2.f(g4Var.q(i11));
                if (f10 != -1) {
                    return g4Var2.j(f10, p1.this.f4933b).f4055c;
                }
            }
            return -1;
        }

        public boolean i(int i10, t.b bVar) {
            if (bVar == null) {
                if (i10 == this.f4940b) {
                    return true;
                }
                return false;
            }
            t.b bVar2 = this.f4942d;
            if (bVar2 == null) {
                if (!bVar.b() && bVar.f14945d == this.f4941c) {
                    return true;
                }
                return false;
            } else if (bVar.f14945d == bVar2.f14945d && bVar.f14943b == bVar2.f14943b && bVar.f14944c == bVar2.f14944c) {
                return true;
            } else {
                return false;
            }
        }

        public boolean j(b.a aVar) {
            t.b bVar = aVar.f4818d;
            if (bVar == null) {
                if (this.f4940b != aVar.f4817c) {
                    return true;
                }
                return false;
            }
            long j10 = this.f4941c;
            if (j10 == -1) {
                return false;
            }
            if (bVar.f14945d > j10) {
                return true;
            }
            if (this.f4942d == null) {
                return false;
            }
            int f10 = aVar.f4816b.f(bVar.f14942a);
            int f11 = aVar.f4816b.f(this.f4942d.f14942a);
            t.b bVar2 = aVar.f4818d;
            if (bVar2.f14945d < this.f4942d.f14945d || f10 < f11) {
                return false;
            }
            if (f10 > f11) {
                return true;
            }
            if (bVar2.b()) {
                t.b bVar3 = aVar.f4818d;
                int i10 = bVar3.f14943b;
                int i11 = bVar3.f14944c;
                t.b bVar4 = this.f4942d;
                int i12 = bVar4.f14943b;
                if (i10 > i12) {
                    return true;
                }
                if (i10 == i12 && i11 > bVar4.f14944c) {
                    return true;
                }
                return false;
            }
            int i13 = aVar.f4818d.f14946e;
            if (i13 == -1 || i13 > this.f4942d.f14943b) {
                return true;
            }
            return false;
        }

        public void k(int i10, t.b bVar) {
            if (this.f4941c == -1 && i10 == this.f4940b && bVar != null) {
                this.f4941c = bVar.f14945d;
            }
        }

        public boolean m(g4 g4Var, g4 g4Var2) {
            int l10 = l(g4Var, g4Var2, this.f4940b);
            this.f4940b = l10;
            if (l10 == -1) {
                return false;
            }
            t.b bVar = this.f4942d;
            if (bVar != null && g4Var2.f(bVar.f14942a) == -1) {
                return false;
            }
            return true;
        }
    }

    public p1() {
        this(f4930h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String k() {
        byte[] bArr = new byte[12];
        f4931i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private a l(int i10, t.b bVar) {
        int i11;
        a aVar = null;
        long j10 = Long.MAX_VALUE;
        for (a aVar2 : this.f4934c.values()) {
            aVar2.k(i10, bVar);
            if (aVar2.i(i10, bVar)) {
                long j11 = aVar2.f4941c;
                if (j11 != -1 && j11 >= j10) {
                    if (i11 == 0 && ((a) y4.q0.j(aVar)).f4942d != null && aVar2.f4942d != null) {
                        aVar = aVar2;
                    }
                } else {
                    aVar = aVar2;
                    j10 = j11;
                }
            }
        }
        if (aVar == null) {
            String str = (String) this.f4935d.get();
            a aVar3 = new a(str, i10, bVar);
            this.f4934c.put(str, aVar3);
            return aVar3;
        }
        return aVar;
    }

    private void m(b.a aVar) {
        if (aVar.f4816b.u()) {
            this.f4938g = null;
            return;
        }
        a aVar2 = (a) this.f4934c.get(this.f4938g);
        a l10 = l(aVar.f4817c, aVar.f4818d);
        this.f4938g = l10.f4939a;
        g(aVar);
        t.b bVar = aVar.f4818d;
        if (bVar != null && bVar.b()) {
            if (aVar2 == null || aVar2.f4941c != aVar.f4818d.f14945d || aVar2.f4942d == null || aVar2.f4942d.f14943b != aVar.f4818d.f14943b || aVar2.f4942d.f14944c != aVar.f4818d.f14944c) {
                t.b bVar2 = aVar.f4818d;
                this.f4936e.V(aVar, l(aVar.f4817c, new t.b(bVar2.f14942a, bVar2.f14945d)).f4939a, l10.f4939a);
            }
        }
    }

    @Override // c3.s3
    public synchronized void a(b.a aVar, int i10) {
        boolean z10;
        boolean z11;
        y4.a.e(this.f4936e);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Iterator it = this.f4934c.values().iterator();
        while (it.hasNext()) {
            a aVar2 = (a) it.next();
            if (aVar2.j(aVar)) {
                it.remove();
                if (aVar2.f4943e) {
                    boolean equals = aVar2.f4939a.equals(this.f4938g);
                    if (z10 && equals && aVar2.f4944f) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (equals) {
                        this.f4938g = null;
                    }
                    this.f4936e.m(aVar, aVar2.f4939a, z11);
                }
            }
        }
        m(aVar);
    }

    @Override // c3.s3
    public synchronized String b() {
        return this.f4938g;
    }

    @Override // c3.s3
    public synchronized void c(b.a aVar) {
        s3.a aVar2;
        this.f4938g = null;
        Iterator it = this.f4934c.values().iterator();
        while (it.hasNext()) {
            a aVar3 = (a) it.next();
            it.remove();
            if (aVar3.f4943e && (aVar2 = this.f4936e) != null) {
                aVar2.m(aVar, aVar3.f4939a, false);
            }
        }
    }

    @Override // c3.s3
    public synchronized String d(g4 g4Var, t.b bVar) {
        return l(g4Var.l(bVar.f14942a, this.f4933b).f4055c, bVar).f4939a;
    }

    @Override // c3.s3
    public synchronized void e(b.a aVar) {
        y4.a.e(this.f4936e);
        g4 g4Var = this.f4937f;
        this.f4937f = aVar.f4816b;
        Iterator it = this.f4934c.values().iterator();
        while (it.hasNext()) {
            a aVar2 = (a) it.next();
            if (!aVar2.m(g4Var, this.f4937f) || aVar2.j(aVar)) {
                it.remove();
                if (aVar2.f4943e) {
                    if (aVar2.f4939a.equals(this.f4938g)) {
                        this.f4938g = null;
                    }
                    this.f4936e.m(aVar, aVar2.f4939a, false);
                }
            }
        }
        m(aVar);
    }

    @Override // c3.s3
    public void f(s3.a aVar) {
        this.f4936e = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00e1 A[Catch: all -> 0x0118, TryCatch #0 {, blocks: (B:4:0x0005, B:8:0x0014, B:11:0x0025, B:13:0x0030, B:16:0x003a, B:23:0x004b, B:25:0x0057, B:26:0x005d, B:28:0x0061, B:30:0x0067, B:32:0x0080, B:34:0x00db, B:36:0x00e1, B:38:0x00f7, B:40:0x0103, B:42:0x0109), top: B:48:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f3  */
    @Override // c3.s3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void g(c3.b.a r25) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c3.p1.g(c3.b$a):void");
    }

    public p1(n6.s sVar) {
        this.f4935d = sVar;
        this.f4932a = new g4.d();
        this.f4933b = new g4.b();
        this.f4934c = new HashMap();
        this.f4937f = g4.f4042a;
    }
}
