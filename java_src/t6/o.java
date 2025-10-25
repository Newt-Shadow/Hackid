package t6;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import t6.q;
/* loaded from: classes.dex */
public final class o extends t6.b {

    /* renamed from: a  reason: collision with root package name */
    private final q f30013a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.b f30014b;

    /* renamed from: c  reason: collision with root package name */
    private final g7.a f30015c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f30016d;

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private q f30017a;

        /* renamed from: b  reason: collision with root package name */
        private g7.b f30018b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f30019c;

        private g7.a b() {
            if (this.f30017a.e() == q.c.f30031d) {
                return g7.a.a(new byte[0]);
            }
            if (this.f30017a.e() == q.c.f30030c) {
                return g7.a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f30019c.intValue()).array());
            }
            if (this.f30017a.e() == q.c.f30029b) {
                return g7.a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f30019c.intValue()).array());
            }
            throw new IllegalStateException("Unknown AesGcmParameters.Variant: " + this.f30017a.e());
        }

        public o a() {
            q qVar = this.f30017a;
            if (qVar != null && this.f30018b != null) {
                if (qVar.c() == this.f30018b.b()) {
                    if (this.f30017a.f() && this.f30019c == null) {
                        throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                    }
                    if (!this.f30017a.f() && this.f30019c != null) {
                        throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                    }
                    return new o(this.f30017a, this.f30018b, b(), this.f30019c);
                }
                throw new GeneralSecurityException("Key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }

        public b c(Integer num) {
            this.f30019c = num;
            return this;
        }

        public b d(g7.b bVar) {
            this.f30018b = bVar;
            return this;
        }

        public b e(q qVar) {
            this.f30017a = qVar;
            return this;
        }

        private b() {
            this.f30017a = null;
            this.f30018b = null;
            this.f30019c = null;
        }
    }

    public static b a() {
        return new b();
    }

    private o(q qVar, g7.b bVar, g7.a aVar, Integer num) {
        this.f30013a = qVar;
        this.f30014b = bVar;
        this.f30015c = aVar;
        this.f30016d = num;
    }
}
