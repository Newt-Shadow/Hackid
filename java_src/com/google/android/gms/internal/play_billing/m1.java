package com.google.android.gms.internal.play_billing;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class m1 extends t0 {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f7056b = Logger.getLogger(m1.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f7057c = f4.C();

    /* renamed from: a  reason: collision with root package name */
    n1 f7058a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m1(l1 l1Var) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(int i10, f3 f3Var, q3 q3Var) {
        int w10 = w(i10 << 3);
        return w10 + w10 + ((o0) f3Var).b(q3Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(f3 f3Var, q3 q3Var) {
        int b10 = ((o0) f3Var).b(q3Var);
        return w(b10) + b10;
    }

    public static int v(String str) {
        int length;
        try {
            length = l4.c(str);
        } catch (k4 unused) {
            length = str.getBytes(j2.f7021b).length;
        }
        return w(length) + length;
    }

    public static int w(int i10) {
        return (352 - (Integer.numberOfLeadingZeros(i10) * 9)) >>> 6;
    }

    public static int x(long j10) {
        return (640 - (Long.numberOfLeadingZeros(j10) * 9)) >>> 6;
    }

    public static m1 y(byte[] bArr, int i10, int i11) {
        return new j1(bArr, 0, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, k4 k4Var) {
        f7056b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) k4Var);
        byte[] bytes = str.getBytes(j2.f7021b);
        try {
            int length = bytes.length;
            q(length);
            m(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new k1(e10);
        }
    }

    public abstract int c();

    public abstract void d(byte b10);

    public abstract void e(int i10, boolean z10);

    public abstract void f(int i10, e1 e1Var);

    public abstract void g(int i10, int i11);

    public abstract void h(int i10);

    public abstract void i(int i10, long j10);

    public abstract void j(long j10);

    public abstract void k(int i10, int i11);

    public abstract void l(int i10);

    public abstract void m(byte[] bArr, int i10, int i11);

    public abstract void n(int i10, String str);

    public abstract void o(int i10, int i11);

    public abstract void p(int i10, int i11);

    public abstract void q(int i10);

    public abstract void r(int i10, long j10);

    public abstract void s(long j10);

    public final void z() {
        if (c() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }
}
