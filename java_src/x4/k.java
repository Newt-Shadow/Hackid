package x4;

import java.io.IOException;
/* loaded from: classes.dex */
public class k extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final int f32348a;

    public k(int i10) {
        this.f32348a = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.io.IOException r2) {
        /*
        L0:
            if (r2 == 0) goto L16
            boolean r0 = r2 instanceof x4.k
            if (r0 == 0) goto L11
            r0 = r2
            x4.k r0 = (x4.k) r0
            int r0 = r0.f32348a
            r1 = 2008(0x7d8, float:2.814E-42)
            if (r0 != r1) goto L11
            r2 = 1
            return r2
        L11:
            java.lang.Throwable r2 = r2.getCause()
            goto L0
        L16:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: x4.k.a(java.io.IOException):boolean");
    }

    public k(Throwable th, int i10) {
        super(th);
        this.f32348a = i10;
    }

    public k(String str, int i10) {
        super(str);
        this.f32348a = i10;
    }

    public k(String str, Throwable th, int i10) {
        super(str, th);
        this.f32348a = i10;
    }
}
