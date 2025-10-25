package a7;

import a7.d;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class a extends p {

    /* renamed from: a  reason: collision with root package name */
    private final d f118a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.b f119b;

    /* renamed from: c  reason: collision with root package name */
    private final g7.a f120c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f121d;

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private d f122a;

        /* renamed from: b  reason: collision with root package name */
        private g7.b f123b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f124c;

        private g7.a b() {
            if (this.f122a.e() == d.c.f136e) {
                return g7.a.a(new byte[0]);
            }
            if (this.f122a.e() != d.c.f135d && this.f122a.e() != d.c.f134c) {
                if (this.f122a.e() == d.c.f133b) {
                    return g7.a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f124c.intValue()).array());
                }
                throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: " + this.f122a.e());
            }
            return g7.a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f124c.intValue()).array());
        }

        public a a() {
            d dVar = this.f122a;
            if (dVar != null && this.f123b != null) {
                if (dVar.c() == this.f123b.b()) {
                    if (this.f122a.f() && this.f124c == null) {
                        throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                    }
                    if (!this.f122a.f() && this.f124c != null) {
                        throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                    }
                    return new a(this.f122a, this.f123b, b(), this.f124c);
                }
                throw new GeneralSecurityException("Key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }

        public b c(g7.b bVar) {
            this.f123b = bVar;
            return this;
        }

        public b d(Integer num) {
            this.f124c = num;
            return this;
        }

        public b e(d dVar) {
            this.f122a = dVar;
            return this;
        }

        private b() {
            this.f122a = null;
            this.f123b = null;
            this.f124c = null;
        }
    }

    public static b c() {
        return new b();
    }

    @Override // a7.p
    public g7.a a() {
        return this.f120c;
    }

    @Override // a7.p
    /* renamed from: d */
    public d b() {
        return this.f118a;
    }

    private a(d dVar, g7.b bVar, g7.a aVar, Integer num) {
        this.f118a = dVar;
        this.f119b = bVar;
        this.f120c = aVar;
        this.f121d = num;
    }
}
