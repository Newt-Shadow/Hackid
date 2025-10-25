package x4;

import java.io.InputStream;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class l extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final j f32361a;

    /* renamed from: b  reason: collision with root package name */
    private final n f32362b;

    /* renamed from: f  reason: collision with root package name */
    private long f32366f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f32364d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f32365e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f32363c = new byte[1];

    public l(j jVar, n nVar) {
        this.f32361a = jVar;
        this.f32362b = nVar;
    }

    private void a() {
        if (!this.f32364d) {
            this.f32361a.i(this.f32362b);
            this.f32364d = true;
        }
    }

    public void b() {
        a();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f32365e) {
            this.f32361a.close();
            this.f32365e = true;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.f32363c) == -1) {
            return -1;
        }
        return this.f32363c[0] & ForkServer.ERROR;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        y4.a.f(!this.f32365e);
        a();
        int read = this.f32361a.read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        this.f32366f += read;
        return read;
    }
}
