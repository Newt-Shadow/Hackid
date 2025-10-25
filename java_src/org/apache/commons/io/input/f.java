package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.UUID;
/* loaded from: classes2.dex */
public abstract class f extends e {
    private final Serializable tag;

    public f(InputStream inputStream) {
        super(inputStream);
        this.tag = UUID.randomUUID();
    }

    @Override // org.apache.commons.io.input.e
    protected void handleIOException(IOException iOException) {
        throw new cf.i(iOException, this.tag);
    }

    public boolean isCauseOf(Throwable th) {
        return cf.i.b(th, this.tag);
    }

    public void throwIfCauseOf(Throwable th) {
        cf.i.c(th, this.tag);
    }
}
