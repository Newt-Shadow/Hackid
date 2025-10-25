package x4;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public final class l0 implements j {

    /* renamed from: a  reason: collision with root package name */
    private final j f32367a;

    /* renamed from: b  reason: collision with root package name */
    private long f32368b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f32369c = Uri.EMPTY;

    /* renamed from: d  reason: collision with root package name */
    private Map f32370d = Collections.emptyMap();

    public l0(j jVar) {
        this.f32367a = (j) y4.a.e(jVar);
    }

    @Override // x4.j
    public void close() {
        this.f32367a.close();
    }

    @Override // x4.j
    public void d(m0 m0Var) {
        y4.a.e(m0Var);
        this.f32367a.d(m0Var);
    }

    @Override // x4.j
    public long i(n nVar) {
        this.f32369c = nVar.f32371a;
        this.f32370d = Collections.emptyMap();
        long i10 = this.f32367a.i(nVar);
        this.f32369c = (Uri) y4.a.e(o());
        this.f32370d = k();
        return i10;
    }

    @Override // x4.j
    public Map k() {
        return this.f32367a.k();
    }

    @Override // x4.j
    public Uri o() {
        return this.f32367a.o();
    }

    public long q() {
        return this.f32368b;
    }

    public Uri r() {
        return this.f32369c;
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        int read = this.f32367a.read(bArr, i10, i11);
        if (read != -1) {
            this.f32368b += read;
        }
        return read;
    }

    public Map s() {
        return this.f32370d;
    }

    public void t() {
        this.f32368b = 0L;
    }
}
