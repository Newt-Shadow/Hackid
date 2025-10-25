package org.apache.tika.renderer;

import java.io.Closeable;
import java.io.InputStream;
import java.nio.file.Files;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.pipes.pipesiterator.fs.c;
/* loaded from: classes2.dex */
public class RenderResult implements Closeable {

    /* renamed from: id  reason: collision with root package name */
    private final int f27673id;
    private final Metadata metadata;
    private final Object result;
    private final STATUS status;
    TemporaryResources tmp = new TemporaryResources();

    /* loaded from: classes2.dex */
    public enum STATUS {
        SUCCESS,
        EXCEPTION,
        TIMEOUT
    }

    public RenderResult(STATUS status, int i10, final Object obj, Metadata metadata) {
        this.status = status;
        this.f27673id = i10;
        this.result = obj;
        this.metadata = metadata;
        if (a.a(obj)) {
            this.tmp.addResource(new Closeable() { // from class: org.apache.tika.renderer.RenderResult.1
                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    Files.delete(c.a(obj));
                }
            });
        } else if (obj instanceof Closeable) {
            this.tmp.addResource((Closeable) obj);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.tmp.close();
    }

    public int getId() {
        return this.f27673id;
    }

    public InputStream getInputStream() {
        if (a.a(this.result)) {
            return TikaInputStream.get(c.a(this.result), this.metadata);
        }
        TikaInputStream tikaInputStream = TikaInputStream.get(new byte[0]);
        tikaInputStream.setOpenContainer(this.result);
        return tikaInputStream;
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public STATUS getStatus() {
        return this.status;
    }
}
