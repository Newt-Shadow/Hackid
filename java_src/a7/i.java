package a7;

import a7.l;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class i extends p {

    /* renamed from: a  reason: collision with root package name */
    private final l f146a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.b f147b;

    /* renamed from: c  reason: collision with root package name */
    private final g7.a f148c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f149d;

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private l f150a;

        /* renamed from: b  reason: collision with root package name */
        private g7.b f151b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f152c;

        private g7.a b() {
            if (this.f150a.f() == l.d.f173e) {
                return g7.a.a(new byte[0]);
            }
            if (this.f150a.f() != l.d.f172d && this.f150a.f() != l.d.f171c) {
                if (this.f150a.f() == l.d.f170b) {
                    return g7.a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f152c.intValue()).array());
                }
                throw new IllegalStateException("Unknown HmacParameters.Variant: " + this.f150a.f());
            }
            return g7.a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f152c.intValue()).array());
        }

        public i a() {
            l lVar = this.f150a;
            if (lVar != null && this.f151b != null) {
                if (lVar.d() == this.f151b.b()) {
                    if (this.f150a.g() && this.f152c == null) {
                        throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                    }
                    if (!this.f150a.g() && this.f152c != null) {
                        throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                    }
                    return new i(this.f150a, this.f151b, b(), this.f152c);
                }
                throw new GeneralSecurityException("Key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }

        public b c(Integer num) {
            this.f152c = num;
            return this;
        }

        public b d(g7.b bVar) {
            this.f151b = bVar;
            return this;
        }

        public b e(l lVar) {
            this.f150a = lVar;
            return this;
        }

        private b() {
            this.f150a = null;
            this.f151b = null;
            this.f152c = null;
        }
    }

    public static b c() {
        return new b();
    }

    @Override // a7.p
    public g7.a a() {
        return this.f148c;
    }

    @Override // a7.p
    /* renamed from: d */
    public l b() {
        return this.f146a;
    }

    private i(l lVar, g7.b bVar, g7.a aVar, Integer num) {
        this.f146a = lVar;
        this.f147b = bVar;
        this.f148c = aVar;
        this.f149d = num;
    }
}
