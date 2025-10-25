package com.google.android.gms.internal.measurement;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class pa extends ba {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f6666b = Logger.getLogger(pa.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f6667c = ld.f();

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f6668d = 0;

    /* renamed from: a  reason: collision with root package name */
    qa f6669a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ pa(byte[] bArr) {
    }

    public static int E(int i10) {
        return (352 - (Integer.numberOfLeadingZeros(i10) * 9)) >>> 6;
    }

    public static int a(long j10) {
        return (640 - (Long.numberOfLeadingZeros(j10) * 9)) >>> 6;
    }

    public static int b(String str) {
        int length;
        try {
            length = od.b(str);
        } catch (nd unused) {
            length = str.getBytes(ob.f6615a).length;
        }
        return E(length) + length;
    }

    public static int c(ic icVar) {
        int a10 = icVar.a();
        return E(a10) + a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(ic icVar, tc tcVar) {
        int f10 = ((v9) icVar).f(tcVar);
        return E(f10) + f10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i10, ic icVar, tc tcVar) {
        int E = E(i10 << 3);
        return E + E + ((v9) icVar).f(tcVar);
    }

    public abstract void A(long j10);

    public abstract void B(byte[] bArr, int i10, int i11);

    public abstract void C(String str);

    public abstract int D();

    public final void e() {
        if (D() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(String str, nd ndVar) {
        f6666b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) ndVar);
        byte[] bytes = str.getBytes(ob.f6615a);
        try {
            int length = bytes.length;
            x(length);
            B(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new oa(e10);
        }
    }

    public abstract void i(int i10, int i11);

    public abstract void j(int i10, int i11);

    public abstract void k(int i10, int i11);

    public abstract void l(int i10, int i11);

    public abstract void m(int i10, long j10);

    public abstract void n(int i10, long j10);

    public abstract void o(int i10, boolean z10);

    public abstract void p(int i10, String str);

    public abstract void q(int i10, ka kaVar);

    public abstract void r(ka kaVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void s(byte[] bArr, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void t(int i10, ic icVar, tc tcVar);

    public abstract void u(ic icVar);

    public abstract void v(byte b10);

    public abstract void w(int i10);

    public abstract void x(int i10);

    public abstract void y(int i10);

    public abstract void z(long j10);
}
