package ie;
/* loaded from: classes2.dex */
public final class m implements ee.b {

    /* renamed from: a  reason: collision with root package name */
    private final ee.b f17433a;

    /* renamed from: b  reason: collision with root package name */
    private final ge.d f17434b;

    public m(ee.b serializer) {
        kotlin.jvm.internal.m.e(serializer, "serializer");
        this.f17433a = serializer;
        this.f17434b = new x(serializer.a());
    }

    @Override // ee.b, ee.e, ee.a
    public ge.d a() {
        return this.f17434b;
    }

    @Override // ee.a
    public Object c(he.e decoder) {
        kotlin.jvm.internal.m.e(decoder, "decoder");
        if (decoder.l()) {
            return decoder.g(this.f17433a);
        }
        return decoder.h();
    }

    @Override // ee.e
    public void e(he.f encoder, Object obj) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        if (obj != null) {
            encoder.l();
            encoder.k(this.f17433a, obj);
            return;
        }
        encoder.d();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && m.class == obj.getClass() && kotlin.jvm.internal.m.a(this.f17433a, ((m) obj).f17433a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f17433a.hashCode();
    }
}
