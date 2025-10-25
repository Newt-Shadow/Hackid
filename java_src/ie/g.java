package ie;

import ge.c;
/* loaded from: classes2.dex */
public final class g implements ee.b {

    /* renamed from: a  reason: collision with root package name */
    public static final g f17422a = new g();

    /* renamed from: b  reason: collision with root package name */
    private static final ge.d f17423b = new w("kotlin.Int", c.C0179c.f16412a);

    private g() {
    }

    @Override // ee.b, ee.e, ee.a
    public ge.d a() {
        return f17423b;
    }

    @Override // ee.e
    public /* bridge */ /* synthetic */ void e(he.f fVar, Object obj) {
        g(fVar, ((Number) obj).intValue());
    }

    @Override // ee.a
    /* renamed from: f */
    public Integer c(he.e decoder) {
        kotlin.jvm.internal.m.e(decoder, "decoder");
        return Integer.valueOf(decoder.f());
    }

    public void g(he.f encoder, int i10) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        encoder.o(i10);
    }
}
