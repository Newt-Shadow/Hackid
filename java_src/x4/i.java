package x4;

import android.net.Uri;
import android.util.Base64;
import b3.e3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URLDecoder;
import y4.q0;
/* loaded from: classes.dex */
public final class i extends f {

    /* renamed from: e  reason: collision with root package name */
    private n f32344e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f32345f;

    /* renamed from: g  reason: collision with root package name */
    private int f32346g;

    /* renamed from: h  reason: collision with root package name */
    private int f32347h;

    public i() {
        super(false);
    }

    @Override // x4.j
    public void close() {
        if (this.f32345f != null) {
            this.f32345f = null;
            r();
        }
        this.f32344e = null;
    }

    @Override // x4.j
    public long i(n nVar) {
        s(nVar);
        this.f32344e = nVar;
        Uri uri = nVar.f32371a;
        String scheme = uri.getScheme();
        boolean equals = "data".equals(scheme);
        y4.a.b(equals, "Unsupported scheme: " + scheme);
        String[] P0 = q0.P0(uri.getSchemeSpecificPart(), StringUtils.COMMA);
        if (P0.length == 2) {
            String str = P0[1];
            if (P0[0].contains(";base64")) {
                try {
                    this.f32345f = Base64.decode(str, 0);
                } catch (IllegalArgumentException e10) {
                    throw e3.b("Error while parsing Base64 encoded string: " + str, e10);
                }
            } else {
                this.f32345f = q0.l0(URLDecoder.decode(str, n6.e.f26425a.name()));
            }
            long j10 = nVar.f32377g;
            byte[] bArr = this.f32345f;
            if (j10 <= bArr.length) {
                int i10 = (int) j10;
                this.f32346g = i10;
                int length = bArr.length - i10;
                this.f32347h = length;
                long j11 = nVar.f32378h;
                if (j11 != -1) {
                    this.f32347h = (int) Math.min(length, j11);
                }
                t(nVar);
                long j12 = nVar.f32378h;
                if (j12 == -1) {
                    return this.f32347h;
                }
                return j12;
            }
            this.f32345f = null;
            throw new k(2008);
        }
        throw e3.b("Unexpected URI format: " + uri, null);
    }

    @Override // x4.j
    public Uri o() {
        n nVar = this.f32344e;
        if (nVar != null) {
            return nVar.f32371a;
        }
        return null;
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f32347h;
        if (i12 == 0) {
            return -1;
        }
        int min = Math.min(i11, i12);
        System.arraycopy(q0.j(this.f32345f), this.f32346g, bArr, i10, min);
        this.f32346g += min;
        this.f32347h -= min;
        q(min);
        return min;
    }
}
