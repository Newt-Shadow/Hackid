package d4;

import android.net.Uri;
import java.util.Map;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
final class m implements x4.j {

    /* renamed from: a  reason: collision with root package name */
    private final x4.j f14882a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14883b;

    /* renamed from: c  reason: collision with root package name */
    private final a f14884c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f14885d;

    /* renamed from: e  reason: collision with root package name */
    private int f14886e;

    /* loaded from: classes.dex */
    public interface a {
        void b(y4.e0 e0Var);
    }

    public m(x4.j jVar, int i10, a aVar) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        this.f14882a = jVar;
        this.f14883b = i10;
        this.f14884c = aVar;
        this.f14885d = new byte[1];
        this.f14886e = i10;
    }

    private boolean q() {
        if (this.f14882a.read(this.f14885d, 0, 1) == -1) {
            return false;
        }
        int i10 = (this.f14885d[0] & KotlinVersion.MAX_COMPONENT_VALUE) << 4;
        if (i10 == 0) {
            return true;
        }
        byte[] bArr = new byte[i10];
        int i11 = i10;
        int i12 = 0;
        while (i11 > 0) {
            int read = this.f14882a.read(bArr, i12, i11);
            if (read == -1) {
                return false;
            }
            i12 += read;
            i11 -= read;
        }
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        if (i10 > 0) {
            this.f14884c.b(new y4.e0(bArr, i10));
        }
        return true;
    }

    @Override // x4.j
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // x4.j
    public void d(x4.m0 m0Var) {
        y4.a.e(m0Var);
        this.f14882a.d(m0Var);
    }

    @Override // x4.j
    public long i(x4.n nVar) {
        throw new UnsupportedOperationException();
    }

    @Override // x4.j
    public Map k() {
        return this.f14882a.k();
    }

    @Override // x4.j
    public Uri o() {
        return this.f14882a.o();
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        if (this.f14886e == 0) {
            if (!q()) {
                return -1;
            }
            this.f14886e = this.f14883b;
        }
        int read = this.f14882a.read(bArr, i10, Math.min(this.f14886e, i11));
        if (read != -1) {
            this.f14886e -= read;
        }
        return read;
    }
}
