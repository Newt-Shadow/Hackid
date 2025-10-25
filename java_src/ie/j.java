package ie;

import ge.c;
/* loaded from: classes2.dex */
public final class j implements ee.b {

    /* renamed from: a  reason: collision with root package name */
    public static final j f17425a = new j();

    /* renamed from: b  reason: collision with root package name */
    private static final ge.d f17426b = new w("kotlin.Long", c.d.f16413a);

    private j() {
    }

    @Override // ee.b, ee.e, ee.a
    public ge.d a() {
        return f17426b;
    }

    @Override // ee.e
    public /* bridge */ /* synthetic */ void e(he.f fVar, Object obj) {
        g(fVar, ((Number) obj).longValue());
    }

    @Override // ee.a
    /* renamed from: f */
    public Long c(he.e decoder) {
        kotlin.jvm.internal.m.e(decoder, "decoder");
        return Long.valueOf(decoder.k());
    }

    public void g(he.f encoder, long j10) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        encoder.p(j10);
    }
}
