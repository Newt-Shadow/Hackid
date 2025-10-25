package t6;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import t6.v;
/* loaded from: classes.dex */
public final class t extends t6.b {

    /* renamed from: a  reason: collision with root package name */
    private final v f30039a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.b f30040b;

    /* renamed from: c  reason: collision with root package name */
    private final g7.a f30041c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f30042d;

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private v f30043a;

        /* renamed from: b  reason: collision with root package name */
        private g7.b f30044b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f30045c;

        private g7.a b() {
            if (this.f30043a.c() == v.c.f30053d) {
                return g7.a.a(new byte[0]);
            }
            if (this.f30043a.c() == v.c.f30052c) {
                return g7.a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f30045c.intValue()).array());
            }
            if (this.f30043a.c() == v.c.f30051b) {
                return g7.a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f30045c.intValue()).array());
            }
            throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: " + this.f30043a.c());
        }

        public t a() {
            v vVar = this.f30043a;
            if (vVar != null && this.f30044b != null) {
                if (vVar.b() == this.f30044b.b()) {
                    if (this.f30043a.d() && this.f30045c == null) {
                        throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                    }
                    if (!this.f30043a.d() && this.f30045c != null) {
                        throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                    }
                    return new t(this.f30043a, this.f30044b, b(), this.f30045c);
                }
                throw new GeneralSecurityException("Key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }

        public b c(Integer num) {
            this.f30045c = num;
            return this;
        }

        public b d(g7.b bVar) {
            this.f30044b = bVar;
            return this;
        }

        public b e(v vVar) {
            this.f30043a = vVar;
            return this;
        }

        private b() {
            this.f30043a = null;
            this.f30044b = null;
            this.f30045c = null;
        }
    }

    public static b a() {
        return new b();
    }

    private t(v vVar, g7.b bVar, g7.a aVar, Integer num) {
        this.f30039a = vVar;
        this.f30040b = bVar;
        this.f30041c = aVar;
        this.f30042d = num;
    }
}
