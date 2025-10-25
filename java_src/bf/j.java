package bf;

import af.d1;
import af.k;
import af.m0;
import af.s0;
import id.Function2;
import id.l;
import io.flutter.embedding.android.KeyboardMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.b0;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.z;
import org.apache.tika.fork.ForkServer;
import rd.y;
import xc.q;
import xc.t;
import yc.h0;
import yc.w;
/* loaded from: classes2.dex */
public abstract class j {

    /* loaded from: classes2.dex */
    public static final class a implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int a10;
            a10 = zc.b.a(((i) obj).a(), ((i) obj2).a());
            return a10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ z f4772e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ long f4773f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ b0 f4774g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ af.f f4775h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ b0 f4776i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ b0 f4777j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(z zVar, long j10, b0 b0Var, af.f fVar, b0 b0Var2, b0 b0Var3) {
            super(2);
            this.f4772e = zVar;
            this.f4773f = j10;
            this.f4774g = b0Var;
            this.f4775h = fVar;
            this.f4776i = b0Var2;
            this.f4777j = b0Var3;
        }

        public final void a(int i10, long j10) {
            long j11;
            if (i10 == 1) {
                z zVar = this.f4772e;
                if (!zVar.f24987a) {
                    zVar.f24987a = true;
                    if (j10 >= this.f4773f) {
                        b0 b0Var = this.f4774g;
                        long j12 = b0Var.f24970a;
                        if (j12 == KeyboardMap.kValueMask) {
                            j12 = this.f4775h.G0();
                        }
                        b0Var.f24970a = j12;
                        b0 b0Var2 = this.f4776i;
                        long j13 = 0;
                        if (b0Var2.f24970a == KeyboardMap.kValueMask) {
                            j11 = this.f4775h.G0();
                        } else {
                            j11 = 0;
                        }
                        b0Var2.f24970a = j11;
                        b0 b0Var3 = this.f4777j;
                        if (b0Var3.f24970a == KeyboardMap.kValueMask) {
                            j13 = this.f4775h.G0();
                        }
                        b0Var3.f24970a = j13;
                        return;
                    }
                    throw new IOException("bad zip: zip64 extra too short");
                }
                throw new IOException("bad zip: zip64 extra repeated");
            }
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a(((Number) obj).intValue(), ((Number) obj2).longValue());
            return t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ af.f f4778e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ c0 f4779f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ c0 f4780g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ c0 f4781h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(af.f fVar, c0 c0Var, c0 c0Var2, c0 c0Var3) {
            super(2);
            this.f4778e = fVar;
            this.f4779f = c0Var;
            this.f4780g = c0Var2;
            this.f4781h = c0Var3;
        }

        public final void a(int i10, long j10) {
            boolean z10;
            boolean z11;
            if (i10 == 21589) {
                long j11 = 1;
                if (j10 >= 1) {
                    int readByte = this.f4778e.readByte() & ForkServer.ERROR;
                    boolean z12 = false;
                    if ((readByte & 1) == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if ((readByte & 2) == 2) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if ((readByte & 4) == 4) {
                        z12 = true;
                    }
                    af.f fVar = this.f4778e;
                    if (z10) {
                        j11 = 5;
                    }
                    if (z11) {
                        j11 += 4;
                    }
                    if (z12) {
                        j11 += 4;
                    }
                    if (j10 >= j11) {
                        if (z10) {
                            this.f4779f.f24971a = Long.valueOf(fVar.w0() * 1000);
                        }
                        if (z11) {
                            this.f4780g.f24971a = Long.valueOf(this.f4778e.w0() * 1000);
                        }
                        if (z12) {
                            this.f4781h.f24971a = Long.valueOf(this.f4778e.w0() * 1000);
                            return;
                        }
                        return;
                    }
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                throw new IOException("bad zip: extended timestamp extra too short");
            }
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a(((Number) obj).intValue(), ((Number) obj2).longValue());
            return t.f32733a;
        }
    }

    private static final Map a(List list) {
        Map i10;
        List<i> h02;
        s0 e10 = s0.a.e(s0.f443b, "/", false, 1, null);
        i10 = h0.i(q.a(e10, new i(e10, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null)));
        h02 = w.h0(list, new a());
        for (i iVar : h02) {
            if (((i) i10.put(iVar.a(), iVar)) == null) {
                while (true) {
                    s0 o10 = iVar.a().o();
                    if (o10 != null) {
                        i iVar2 = (i) i10.get(o10);
                        if (iVar2 != null) {
                            iVar2.b().add(iVar.a());
                            break;
                        }
                        i iVar3 = new i(o10, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                        i10.put(o10, iVar3);
                        iVar3.b().add(iVar.a());
                        iVar = iVar3;
                    }
                }
            }
        }
        return i10;
    }

    private static final Long b(int i10, int i11) {
        if (i11 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i10 >> 9) & 127) + 1980, ((i10 >> 5) & 15) - 1, i10 & 31, (i11 >> 11) & 31, (i11 >> 5) & 63, (i11 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final String c(int i10) {
        int a10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("0x");
        a10 = rd.b.a(16);
        String num = Integer.toString(i10, a10);
        m.d(num, "toString(this, checkRadix(radix))");
        sb2.append(num);
        return sb2.toString();
    }

    public static final d1 d(s0 zipPath, k fileSystem, l predicate) {
        int w02;
        m.e(zipPath, "zipPath");
        m.e(fileSystem, "fileSystem");
        m.e(predicate, "predicate");
        af.i i10 = fileSystem.i(zipPath);
        try {
            long x10 = i10.x() - 22;
            if (x10 >= 0) {
                long max = Math.max(x10 - 65536, 0L);
                while (true) {
                    af.f b10 = m0.b(i10.z(x10));
                    if (b10.w0() == 101010256) {
                        f f10 = f(b10);
                        String A = b10.A(f10.b());
                        b10.close();
                        long j10 = x10 - 20;
                        if (j10 > 0) {
                            af.f b11 = m0.b(i10.z(j10));
                            if (b11.w0() == 117853008) {
                                int w03 = b11.w0();
                                long G0 = b11.G0();
                                if (b11.w0() == 1 && w03 == 0) {
                                    af.f b12 = m0.b(i10.z(G0));
                                    try {
                                        if (b12.w0() == 101075792) {
                                            f10 = j(b12, f10);
                                            t tVar = t.f32733a;
                                            gd.b.a(b12, null);
                                        } else {
                                            throw new IOException("bad zip: expected " + c(101075792) + " but was " + c(w02));
                                        }
                                    } finally {
                                    }
                                } else {
                                    throw new IOException("unsupported zip: spanned");
                                }
                            }
                            t tVar2 = t.f32733a;
                            gd.b.a(b11, null);
                        }
                        ArrayList arrayList = new ArrayList();
                        af.f b13 = m0.b(i10.z(f10.a()));
                        long c10 = f10.c();
                        for (long j11 = 0; j11 < c10; j11++) {
                            i e10 = e(b13);
                            if (e10.f() < f10.a()) {
                                if (((Boolean) predicate.invoke(e10)).booleanValue()) {
                                    arrayList.add(e10);
                                }
                            } else {
                                throw new IOException("bad zip: local file header offset >= central directory offset");
                            }
                        }
                        t tVar3 = t.f32733a;
                        gd.b.a(b13, null);
                        d1 d1Var = new d1(zipPath, fileSystem, a(arrayList), A);
                        gd.b.a(i10, null);
                        return d1Var;
                    }
                    b10.close();
                    x10--;
                    if (x10 < max) {
                        throw new IOException("not a zip: end of central directory signature not found");
                    }
                }
            } else {
                throw new IOException("not a zip: size=" + i10.x());
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                gd.b.a(i10, th);
                throw th2;
            }
        }
    }

    public static final i e(af.f fVar) {
        int w02;
        int F0;
        boolean M;
        b0 b0Var;
        long j10;
        boolean w10;
        m.e(fVar, "<this>");
        if (fVar.w0() == 33639248) {
            fVar.skip(4L);
            if ((fVar.F0() & 65535 & 1) == 0) {
                int F02 = fVar.F0() & 65535;
                Long b10 = b(fVar.F0() & 65535, fVar.F0() & 65535);
                long w03 = fVar.w0() & KeyboardMap.kValueMask;
                b0 b0Var2 = new b0();
                b0Var2.f24970a = fVar.w0() & KeyboardMap.kValueMask;
                b0 b0Var3 = new b0();
                b0Var3.f24970a = fVar.w0() & KeyboardMap.kValueMask;
                int F03 = fVar.F0() & 65535;
                int F04 = fVar.F0() & 65535;
                fVar.skip(8L);
                b0 b0Var4 = new b0();
                b0Var4.f24970a = fVar.w0() & KeyboardMap.kValueMask;
                String A = fVar.A(fVar.F0() & 65535);
                M = rd.b0.M(A, (char) 0, false, 2, null);
                if (!M) {
                    if (b0Var3.f24970a == KeyboardMap.kValueMask) {
                        j10 = 8 + 0;
                        b0Var = b0Var4;
                    } else {
                        b0Var = b0Var4;
                        j10 = 0;
                    }
                    if (b0Var2.f24970a == KeyboardMap.kValueMask) {
                        j10 += 8;
                    }
                    b0 b0Var5 = b0Var;
                    if (b0Var5.f24970a == KeyboardMap.kValueMask) {
                        j10 += 8;
                    }
                    long j11 = j10;
                    z zVar = new z();
                    g(fVar, F03, new b(zVar, j11, b0Var3, fVar, b0Var2, b0Var5));
                    if (j11 > 0 && !zVar.f24987a) {
                        throw new IOException("bad zip: zip64 extra required but absent");
                    }
                    String A2 = fVar.A(F04);
                    s0 r10 = s0.a.e(s0.f443b, "/", false, 1, null).r(A);
                    w10 = y.w(A, "/", false, 2, null);
                    return new i(r10, w10, A2, w03, b0Var2.f24970a, b0Var3.f24970a, F02, b10, b0Var5.f24970a);
                }
                throw new IOException("bad zip: filename contains 0x00");
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + c(F0));
        }
        throw new IOException("bad zip: expected " + c(33639248) + " but was " + c(w02));
    }

    private static final f f(af.f fVar) {
        int F0 = fVar.F0() & 65535;
        int F02 = fVar.F0() & 65535;
        long F03 = fVar.F0() & 65535;
        if (F03 == (fVar.F0() & 65535) && F0 == 0 && F02 == 0) {
            fVar.skip(4L);
            return new f(F03, KeyboardMap.kValueMask & fVar.w0(), fVar.F0() & 65535);
        }
        throw new IOException("unsupported zip: spanned");
    }

    private static final void g(af.f fVar, int i10, Function2 function2) {
        long j10 = i10;
        while (j10 != 0) {
            if (j10 >= 4) {
                int F0 = fVar.F0() & 65535;
                long F02 = fVar.F0() & 65535;
                long j11 = j10 - 4;
                if (j11 >= F02) {
                    fVar.O0(F02);
                    long k02 = fVar.d().k0();
                    function2.invoke(Integer.valueOf(F0), Long.valueOf(F02));
                    long k03 = (fVar.d().k0() + F02) - k02;
                    int i11 = (k03 > 0L ? 1 : (k03 == 0L ? 0 : -1));
                    if (i11 >= 0) {
                        if (i11 > 0) {
                            fVar.d().skip(k03);
                        }
                        j10 = j11 - F02;
                    } else {
                        throw new IOException("unsupported zip: too many bytes processed for " + F0);
                    }
                } else {
                    throw new IOException("bad zip: truncated value in extra field");
                }
            } else {
                throw new IOException("bad zip: truncated header in extra field");
            }
        }
    }

    public static final af.j h(af.f fVar, af.j basicMetadata) {
        m.e(fVar, "<this>");
        m.e(basicMetadata, "basicMetadata");
        af.j i10 = i(fVar, basicMetadata);
        m.b(i10);
        return i10;
    }

    private static final af.j i(af.f fVar, af.j jVar) {
        Long l10;
        int w02;
        int F0;
        c0 c0Var = new c0();
        if (jVar != null) {
            l10 = jVar.a();
        } else {
            l10 = null;
        }
        c0Var.f24971a = l10;
        c0 c0Var2 = new c0();
        c0 c0Var3 = new c0();
        if (fVar.w0() == 67324752) {
            fVar.skip(2L);
            if ((fVar.F0() & 65535 & 1) == 0) {
                fVar.skip(18L);
                int F02 = fVar.F0() & 65535;
                fVar.skip(fVar.F0() & 65535);
                if (jVar == null) {
                    fVar.skip(F02);
                    return null;
                }
                g(fVar, F02, new c(fVar, c0Var, c0Var2, c0Var3));
                return new af.j(jVar.d(), jVar.c(), null, jVar.b(), (Long) c0Var3.f24971a, (Long) c0Var.f24971a, (Long) c0Var2.f24971a, null, 128, null);
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + c(F0));
        }
        throw new IOException("bad zip: expected " + c(67324752) + " but was " + c(w02));
    }

    private static final f j(af.f fVar, f fVar2) {
        fVar.skip(12L);
        int w02 = fVar.w0();
        int w03 = fVar.w0();
        long G0 = fVar.G0();
        if (G0 == fVar.G0() && w02 == 0 && w03 == 0) {
            fVar.skip(8L);
            return new f(G0, fVar.G0(), fVar2.b());
        }
        throw new IOException("unsupported zip: spanned");
    }

    public static final void k(af.f fVar) {
        m.e(fVar, "<this>");
        i(fVar, null);
    }
}
