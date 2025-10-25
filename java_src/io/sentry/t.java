package io.sentry;

import java.io.StringReader;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class t implements m0 {

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f23655b = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final y0 f23656a;

    public t(y0 y0Var) {
        this.f23656a = y0Var;
    }

    private b4 b(byte[] bArr, int i10, int i11) {
        StringReader stringReader = new StringReader(new String(bArr, i10, i11, f23655b));
        try {
            b4 b4Var = (b4) this.f23656a.c(stringReader, b4.class);
            stringReader.close();
            return b4Var;
        } catch (Throwable th) {
            try {
                stringReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private y4 c(byte[] bArr, int i10, int i11) {
        StringReader stringReader = new StringReader(new String(bArr, i10, i11, f23655b));
        try {
            y4 y4Var = (y4) this.f23656a.c(stringReader, y4.class);
            stringReader.close();
            return y4Var;
        } catch (Throwable th) {
            try {
                stringReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0081, code lost:
        r11 = new io.sentry.a4(r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0086, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0089, code lost:
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e2, code lost:
        throw new java.lang.IllegalArgumentException("Item header at index '" + r2.size() + "' is null or empty.");
     */
    @Override // io.sentry.m0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.sentry.a4 a(java.io.InputStream r11) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.t.a(java.io.InputStream):io.sentry.a4");
    }
}
