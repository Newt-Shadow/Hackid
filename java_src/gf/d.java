package gf;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class d extends OutputStream {

    /* renamed from: f  reason: collision with root package name */
    private static final ff.d f16432f = new ff.d() { // from class: gf.c
        @Override // ff.d
        public final Object apply(Object obj) {
            OutputStream f10;
            f10 = d.f((d) obj);
            return f10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f16433a;

    /* renamed from: b  reason: collision with root package name */
    private final ff.c f16434b;

    /* renamed from: c  reason: collision with root package name */
    private final ff.d f16435c;

    /* renamed from: d  reason: collision with root package name */
    private long f16436d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16437e;

    public d(int i10, ff.c cVar, ff.d dVar) {
        this.f16433a = i10 < 0 ? 0 : i10;
        this.f16434b = cVar == null ? ff.c.a() : cVar;
        this.f16435c = dVar == null ? f16432f : dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ OutputStream f(d dVar) {
        return b.f16430a;
    }

    protected void b(int i10) {
        if (!this.f16437e && this.f16436d + i10 > this.f16433a) {
            this.f16437e = true;
            g();
        }
    }

    protected OutputStream c() {
        return (OutputStream) this.f16435c.apply(this);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            flush();
        } catch (IOException unused) {
        }
        e().close();
    }

    protected OutputStream e() {
        return c();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        e().flush();
    }

    protected void g() {
        this.f16434b.accept(this);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        b(bArr.length);
        e().write(bArr);
        this.f16436d += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        b(i11);
        e().write(bArr, i10, i11);
        this.f16436d += i11;
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        b(1);
        e().write(i10);
        this.f16436d++;
    }
}
