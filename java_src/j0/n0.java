package j0;

import java.io.FileOutputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public final class n0 extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final FileOutputStream f24200a;

    public n0(FileOutputStream fileOutputStream) {
        kotlin.jvm.internal.m.e(fileOutputStream, "fileOutputStream");
        this.f24200a = fileOutputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.f24200a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        this.f24200a.write(i10);
    }

    @Override // java.io.OutputStream
    public void write(byte[] b10) {
        kotlin.jvm.internal.m.e(b10, "b");
        this.f24200a.write(b10);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bytes, int i10, int i11) {
        kotlin.jvm.internal.m.e(bytes, "bytes");
        this.f24200a.write(bytes, i10, i11);
    }
}
