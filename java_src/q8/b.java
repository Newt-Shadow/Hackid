package q8;

import com.google.firebase.messaging.n0;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final b f28626b = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final q8.a f28627a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private q8.a f28628a = null;

        a() {
        }

        public b a() {
            return new b(this.f28628a);
        }

        public a b(q8.a aVar) {
            this.f28628a = aVar;
            return this;
        }
    }

    b(q8.a aVar) {
        this.f28627a = aVar;
    }

    public static a b() {
        return new a();
    }

    public q8.a a() {
        return this.f28627a;
    }

    public byte[] c() {
        return n0.a(this);
    }
}
