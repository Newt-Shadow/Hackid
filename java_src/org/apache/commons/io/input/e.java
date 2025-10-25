package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public abstract class e extends FilterInputStream {
    private final ff.f afterRead;
    private boolean closed;
    private final ff.c exceptionHandler;

    public e(InputStream inputStream) {
        super(inputStream);
        this.exceptionHandler = new ff.c() { // from class: org.apache.commons.io.input.d
            @Override // ff.c
            public final void accept(Object obj) {
                ff.a.a((IOException) obj);
            }
        };
        this.afterRead = ff.f.f16068a;
    }

    protected void afterRead(int i10) {
        this.afterRead.a(i10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (((FilterInputStream) this).in != null && !isClosed()) {
            try {
                return ((FilterInputStream) this).in.available();
            } catch (IOException e10) {
                handleIOException(e10);
                return 0;
            }
        }
        return 0;
    }

    protected void beforeRead(int i10) {
    }

    void checkOpen() {
        c.a(!isClosed());
    }

    protected void handleIOException(IOException iOException) {
        this.exceptionHandler.accept(iOException);
    }

    boolean isClosed() {
        return this.closed;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        if (((FilterInputStream) this).in != null) {
            ((FilterInputStream) this).in.mark(i10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        if (((FilterInputStream) this).in != null && ((FilterInputStream) this).in.markSupported()) {
            return true;
        }
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i10 = 1;
        try {
            beforeRead(1);
            int read = ((FilterInputStream) this).in.read();
            if (read == -1) {
                i10 = -1;
            }
            afterRead(i10);
            return read;
        } catch (IOException e10) {
            handleIOException(e10);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e10) {
            handleIOException(e10);
        }
    }

    public e setReference(InputStream inputStream) {
        ((FilterInputStream) this).in = inputStream;
        return this;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) {
        try {
            return ((FilterInputStream) this).in.skip(j10);
        } catch (IOException e10) {
            handleIOException(e10);
            return 0L;
        }
    }

    public InputStream unwrap() {
        return ((FilterInputStream) this).in;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        try {
            beforeRead(cf.g.t(bArr));
            int read = ((FilterInputStream) this).in.read(bArr);
            afterRead(read);
            return read;
        } catch (IOException e10) {
            handleIOException(e10);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        try {
            beforeRead(i11);
            int read = ((FilterInputStream) this).in.read(bArr, i10, i11);
            afterRead(read);
            return read;
        } catch (IOException e10) {
            handleIOException(e10);
            return -1;
        }
    }
}
