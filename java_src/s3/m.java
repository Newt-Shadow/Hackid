package s3;

import android.media.MediaCodec;
/* loaded from: classes.dex */
public class m extends e3.f {

    /* renamed from: a  reason: collision with root package name */
    public final s f29355a;

    /* renamed from: b  reason: collision with root package name */
    public final String f29356b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m(java.lang.Throwable r4, s3.s r5) {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Decoder failed: "
            r0.append(r1)
            r1 = 0
            if (r5 != 0) goto Lf
            r2 = r1
            goto L11
        Lf:
            java.lang.String r2 = r5.f29357a
        L11:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r3.<init>(r0, r4)
            r3.f29355a = r5
            int r5 = y4.q0.f32946a
            r0 = 21
            if (r5 < r0) goto L27
            java.lang.String r1 = a(r4)
        L27:
            r3.f29356b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: s3.m.<init>(java.lang.Throwable, s3.s):void");
    }

    private static String a(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
