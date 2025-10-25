package ie;

import ge.c;
/* loaded from: classes2.dex */
public final class z implements ee.b {

    /* renamed from: a  reason: collision with root package name */
    public static final z f17458a = new z();

    /* renamed from: b  reason: collision with root package name */
    private static final ge.d f17459b = new w("kotlin.String", c.e.f16414a);

    private z() {
    }

    @Override // ee.b, ee.e, ee.a
    public ge.d a() {
        return f17459b;
    }

    @Override // ee.a
    /* renamed from: f */
    public String c(he.e decoder) {
        kotlin.jvm.internal.m.e(decoder, "decoder");
        return decoder.i();
    }

    @Override // ee.e
    /* renamed from: g */
    public void e(he.f encoder, String value) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        kotlin.jvm.internal.m.e(value, "value");
        encoder.r(value);
    }
}
