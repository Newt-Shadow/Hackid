package i4;

import android.text.TextUtils;
import b3.e3;
import b3.x1;
import g3.b0;
import g3.y;
import g3.z;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import y4.e0;
import y4.m0;
/* loaded from: classes.dex */
public final class t implements g3.k {

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f17248g = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f17249h = Pattern.compile("MPEGTS:(-?\\d+)");

    /* renamed from: a  reason: collision with root package name */
    private final String f17250a;

    /* renamed from: b  reason: collision with root package name */
    private final m0 f17251b;

    /* renamed from: d  reason: collision with root package name */
    private g3.m f17253d;

    /* renamed from: f  reason: collision with root package name */
    private int f17255f;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f17252c = new e0();

    /* renamed from: e  reason: collision with root package name */
    private byte[] f17254e = new byte[1024];

    public t(String str, m0 m0Var) {
        this.f17250a = str;
        this.f17251b = m0Var;
    }

    private b0 a(long j10) {
        b0 a10 = this.f17253d.a(0, 3);
        a10.c(new x1.b().g0("text/vtt").X(this.f17250a).k0(j10).G());
        this.f17253d.n();
        return a10;
    }

    private void d() {
        e0 e0Var = new e0(this.f17254e);
        v4.i.e(e0Var);
        long j10 = 0;
        long j11 = 0;
        for (String r10 = e0Var.r(); !TextUtils.isEmpty(r10); r10 = e0Var.r()) {
            if (r10.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f17248g.matcher(r10);
                if (matcher.find()) {
                    Matcher matcher2 = f17249h.matcher(r10);
                    if (matcher2.find()) {
                        j11 = v4.i.d((String) y4.a.e(matcher.group(1)));
                        j10 = m0.f(Long.parseLong((String) y4.a.e(matcher2.group(1))));
                    } else {
                        throw e3.a("X-TIMESTAMP-MAP doesn't contain media timestamp: " + r10, null);
                    }
                } else {
                    throw e3.a("X-TIMESTAMP-MAP doesn't contain local timestamp: " + r10, null);
                }
            }
        }
        Matcher a10 = v4.i.a(e0Var);
        if (a10 == null) {
            a(0L);
            return;
        }
        long d10 = v4.i.d((String) y4.a.e(a10.group(1)));
        long b10 = this.f17251b.b(m0.j((j10 + d10) - j11));
        b0 a11 = a(b10 - d10);
        this.f17252c.R(this.f17254e, this.f17255f);
        a11.b(this.f17252c, this.f17255f);
        a11.f(b10, 1, this.f17255f, 0, null);
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        throw new IllegalStateException();
    }

    @Override // g3.k
    public void c(g3.m mVar) {
        this.f17253d = mVar;
        mVar.l(new z.b(-9223372036854775807L));
    }

    @Override // g3.k
    public boolean f(g3.l lVar) {
        lVar.f(this.f17254e, 0, 6, false);
        this.f17252c.R(this.f17254e, 6);
        if (v4.i.b(this.f17252c)) {
            return true;
        }
        lVar.f(this.f17254e, 6, 3, false);
        this.f17252c.R(this.f17254e, 9);
        return v4.i.b(this.f17252c);
    }

    @Override // g3.k
    public int g(g3.l lVar, y yVar) {
        int length;
        y4.a.e(this.f17253d);
        int b10 = (int) lVar.b();
        int i10 = this.f17255f;
        byte[] bArr = this.f17254e;
        if (i10 == bArr.length) {
            if (b10 != -1) {
                length = b10;
            } else {
                length = bArr.length;
            }
            this.f17254e = Arrays.copyOf(bArr, (length * 3) / 2);
        }
        byte[] bArr2 = this.f17254e;
        int i11 = this.f17255f;
        int read = lVar.read(bArr2, i11, bArr2.length - i11);
        if (read != -1) {
            int i12 = this.f17255f + read;
            this.f17255f = i12;
            if (b10 == -1 || i12 != b10) {
                return 0;
            }
        }
        d();
        return -1;
    }

    @Override // g3.k
    public void release() {
    }
}
