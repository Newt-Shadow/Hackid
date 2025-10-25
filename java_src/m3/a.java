package m3;

import b3.e3;
import g3.l;
import java.util.ArrayDeque;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f25599a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque f25600b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final g f25601c = new g();

    /* renamed from: d  reason: collision with root package name */
    private m3.b f25602d;

    /* renamed from: e  reason: collision with root package name */
    private int f25603e;

    /* renamed from: f  reason: collision with root package name */
    private int f25604f;

    /* renamed from: g  reason: collision with root package name */
    private long f25605g;

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f25606a;

        /* renamed from: b  reason: collision with root package name */
        private final long f25607b;

        private b(int i10, long j10) {
            this.f25606a = i10;
            this.f25607b = j10;
        }
    }

    private long d(l lVar) {
        lVar.l();
        while (true) {
            lVar.p(this.f25599a, 0, 4);
            int c10 = g.c(this.f25599a[0]);
            if (c10 != -1 && c10 <= 4) {
                int a10 = (int) g.a(this.f25599a, c10, false);
                if (this.f25602d.c(a10)) {
                    lVar.m(c10);
                    return a10;
                }
            }
            lVar.m(1);
        }
    }

    private double e(l lVar, int i10) {
        long f10 = f(lVar, i10);
        if (i10 == 4) {
            return Float.intBitsToFloat((int) f10);
        }
        return Double.longBitsToDouble(f10);
    }

    private long f(l lVar, int i10) {
        lVar.readFully(this.f25599a, 0, i10);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | (this.f25599a[i11] & ForkServer.ERROR);
        }
        return j10;
    }

    private static String g(l lVar, int i10) {
        if (i10 == 0) {
            return "";
        }
        byte[] bArr = new byte[i10];
        lVar.readFully(bArr, 0, i10);
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        return new String(bArr, 0, i10);
    }

    @Override // m3.c
    public void a() {
        this.f25603e = 0;
        this.f25600b.clear();
        this.f25601c.e();
    }

    @Override // m3.c
    public boolean b(l lVar) {
        y4.a.h(this.f25602d);
        while (true) {
            b bVar = (b) this.f25600b.peek();
            if (bVar != null && lVar.c() >= bVar.f25607b) {
                this.f25602d.a(((b) this.f25600b.pop()).f25606a);
                return true;
            }
            if (this.f25603e == 0) {
                long d10 = this.f25601c.d(lVar, true, false, 4);
                if (d10 == -2) {
                    d10 = d(lVar);
                }
                if (d10 == -1) {
                    return false;
                }
                this.f25604f = (int) d10;
                this.f25603e = 1;
            }
            if (this.f25603e == 1) {
                this.f25605g = this.f25601c.d(lVar, false, true, 8);
                this.f25603e = 2;
            }
            int b10 = this.f25602d.b(this.f25604f);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    long j10 = this.f25605g;
                                    if (j10 != 4 && j10 != 8) {
                                        throw e3.a("Invalid float size: " + this.f25605g, null);
                                    }
                                    this.f25602d.e(this.f25604f, e(lVar, (int) j10));
                                    this.f25603e = 0;
                                    return true;
                                }
                                throw e3.a("Invalid element type " + b10, null);
                            }
                            this.f25602d.f(this.f25604f, (int) this.f25605g, lVar);
                            this.f25603e = 0;
                            return true;
                        }
                        long j11 = this.f25605g;
                        if (j11 <= 2147483647L) {
                            this.f25602d.d(this.f25604f, g(lVar, (int) j11));
                            this.f25603e = 0;
                            return true;
                        }
                        throw e3.a("String element size: " + this.f25605g, null);
                    }
                    long j12 = this.f25605g;
                    if (j12 <= 8) {
                        this.f25602d.h(this.f25604f, f(lVar, (int) j12));
                        this.f25603e = 0;
                        return true;
                    }
                    throw e3.a("Invalid integer size: " + this.f25605g, null);
                }
                long c10 = lVar.c();
                this.f25600b.push(new b(this.f25604f, this.f25605g + c10));
                this.f25602d.g(this.f25604f, c10, this.f25605g);
                this.f25603e = 0;
                return true;
            }
            lVar.m((int) this.f25605g);
            this.f25603e = 0;
        }
    }

    @Override // m3.c
    public void c(m3.b bVar) {
        this.f25602d = bVar;
    }
}
