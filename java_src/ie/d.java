package ie;

import ge.c;
/* loaded from: classes2.dex */
public final class d implements ee.b {

    /* renamed from: a  reason: collision with root package name */
    public static final d f17414a = new d();

    /* renamed from: b  reason: collision with root package name */
    private static final ge.d f17415b = new w("kotlin.Double", c.b.f16411a);

    private d() {
    }

    @Override // ee.b, ee.e, ee.a
    public ge.d a() {
        return f17415b;
    }

    @Override // ee.e
    public /* bridge */ /* synthetic */ void e(he.f fVar, Object obj) {
        g(fVar, ((Number) obj).doubleValue());
    }

    @Override // ee.a
    /* renamed from: f */
    public Double c(he.e decoder) {
        kotlin.jvm.internal.m.e(decoder, "decoder");
        return Double.valueOf(decoder.r());
    }

    public void g(he.f encoder, double d10) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        encoder.g(d10);
    }
}
