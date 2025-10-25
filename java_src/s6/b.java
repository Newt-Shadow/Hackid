package s6;

import e7.c0;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class b implements p {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f29413a;

    private b(InputStream inputStream) {
        this.f29413a = inputStream;
    }

    public static p b(byte[] bArr) {
        return new b(new ByteArrayInputStream(bArr));
    }

    @Override // s6.p
    public e7.t a() {
        try {
            return e7.t.Z(this.f29413a, com.google.crypto.tink.shaded.protobuf.p.b());
        } finally {
            this.f29413a.close();
        }
    }

    @Override // s6.p
    public c0 read() {
        try {
            return c0.e0(this.f29413a, com.google.crypto.tink.shaded.protobuf.p.b());
        } finally {
            this.f29413a.close();
        }
    }
}
