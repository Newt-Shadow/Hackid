package ie;

import ge.c;
/* loaded from: classes2.dex */
public final class b implements ee.b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f17412a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final ge.d f17413b = new w("kotlin.Boolean", c.a.f16410a);

    private b() {
    }

    @Override // ee.b, ee.e, ee.a
    public ge.d a() {
        return f17413b;
    }

    @Override // ee.e
    public /* bridge */ /* synthetic */ void e(he.f fVar, Object obj) {
        g(fVar, ((Boolean) obj).booleanValue());
    }

    @Override // ee.a
    /* renamed from: f */
    public Boolean c(he.e decoder) {
        kotlin.jvm.internal.m.e(decoder, "decoder");
        return Boolean.valueOf(decoder.d());
    }

    public void g(he.f encoder, boolean z10) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        encoder.j(z10);
    }
}
