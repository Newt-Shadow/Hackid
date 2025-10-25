package t6;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import t6.i;
/* loaded from: classes.dex */
public final class g extends t6.b {

    /* renamed from: a  reason: collision with root package name */
    private final i f29971a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.b f29972b;

    /* renamed from: c  reason: collision with root package name */
    private final g7.a f29973c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f29974d;

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private i f29975a;

        /* renamed from: b  reason: collision with root package name */
        private g7.b f29976b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f29977c;

        private g7.a b() {
            if (this.f29975a.e() == i.c.f29994d) {
                return g7.a.a(new byte[0]);
            }
            if (this.f29975a.e() == i.c.f29993c) {
                return g7.a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f29977c.intValue()).array());
            }
            if (this.f29975a.e() == i.c.f29992b) {
                return g7.a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f29977c.intValue()).array());
            }
            throw new IllegalStateException("Unknown AesEaxParameters.Variant: " + this.f29975a.e());
        }

        public g a() {
            i iVar = this.f29975a;
            if (iVar != null && this.f29976b != null) {
                if (iVar.c() == this.f29976b.b()) {
                    if (this.f29975a.f() && this.f29977c == null) {
                        throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                    }
                    if (!this.f29975a.f() && this.f29977c != null) {
                        throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                    }
                    return new g(this.f29975a, this.f29976b, b(), this.f29977c);
                }
                throw new GeneralSecurityException("Key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }

        public b c(Integer num) {
            this.f29977c = num;
            return this;
        }

        public b d(g7.b bVar) {
            this.f29976b = bVar;
            return this;
        }

        public b e(i iVar) {
            this.f29975a = iVar;
            return this;
        }

        private b() {
            this.f29975a = null;
            this.f29976b = null;
            this.f29977c = null;
        }
    }

    public static b a() {
        return new b();
    }

    private g(i iVar, g7.b bVar, g7.a aVar, Integer num) {
        this.f29971a = iVar;
        this.f29972b = bVar;
        this.f29973c = aVar;
        this.f29974d = num;
    }
}
