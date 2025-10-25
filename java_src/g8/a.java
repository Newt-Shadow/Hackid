package g8;

import g8.d;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private int f16299a;

    /* renamed from: b  reason: collision with root package name */
    private d.a f16300b = d.a.DEFAULT;

    /* renamed from: g8.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0175a implements d {

        /* renamed from: a  reason: collision with root package name */
        private final int f16301a;

        /* renamed from: b  reason: collision with root package name */
        private final d.a f16302b;

        C0175a(int i10, d.a aVar) {
            this.f16301a = i10;
            this.f16302b = aVar;
        }

        @Override // java.lang.annotation.Annotation
        public Class annotationType() {
            return d.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f16301a == dVar.tag() && this.f16302b.equals(dVar.intEncoding())) {
                return true;
            }
            return false;
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (14552422 ^ this.f16301a) + (this.f16302b.hashCode() ^ 2041407134);
        }

        @Override // g8.d
        public d.a intEncoding() {
            return this.f16302b;
        }

        @Override // g8.d
        public int tag() {
            return this.f16301a;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f16301a + "intEncoding=" + this.f16302b + ')';
        }
    }

    public static a b() {
        return new a();
    }

    public d a() {
        return new C0175a(this.f16299a, this.f16300b);
    }

    public a c(int i10) {
        this.f16299a = i10;
        return this;
    }
}
