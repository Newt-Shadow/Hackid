package yd;

import td.d2;
import td.u0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class w extends d2 implements u0 {

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f33305c;

    /* renamed from: d  reason: collision with root package name */
    private final String f33306d;

    public w(Throwable th, String str) {
        this.f33305c = th;
        this.f33306d = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r1 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void V0() {
        /*
            r4 = this;
            java.lang.Throwable r0 = r4.f33305c
            if (r0 == 0) goto L36
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Module with the Main dispatcher had failed to initialize"
            r0.append(r1)
            java.lang.String r1 = r4.f33306d
            if (r1 == 0) goto L25
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = ". "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            if (r1 != 0) goto L27
        L25:
            java.lang.String r1 = ""
        L27:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.Throwable r2 = r4.f33305c
            r1.<init>(r0, r2)
            throw r1
        L36:
            yd.v.d()
            xc.c r0 = new xc.c
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: yd.w.V0():java.lang.Void");
    }

    @Override // td.d2, td.i0
    public td.i0 A0(int i10, String str) {
        V0();
        throw new xc.c();
    }

    @Override // td.d2
    public d2 J0() {
        return this;
    }

    @Override // td.i0
    /* renamed from: U0 */
    public Void q0(ad.i iVar, Runnable runnable) {
        V0();
        throw new xc.c();
    }

    @Override // td.u0
    /* renamed from: W0 */
    public Void h(long j10, td.l lVar) {
        V0();
        throw new xc.c();
    }

    @Override // td.i0
    public boolean t0(ad.i iVar) {
        V0();
        throw new xc.c();
    }

    @Override // td.i0
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Dispatchers.Main[missing");
        if (this.f33305c != null) {
            str = ", cause=" + this.f33305c;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(']');
        return sb2.toString();
    }
}
