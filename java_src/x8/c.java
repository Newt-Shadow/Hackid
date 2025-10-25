package x8;

import android.content.Context;
/* loaded from: classes.dex */
public final class c implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32536a;

    public c(wc.a aVar) {
        this.f32536a = aVar;
    }

    public static c a(wc.a aVar) {
        return new c(aVar);
    }

    public static b c(Context context) {
        return new b(context);
    }

    @Override // wc.a
    /* renamed from: b */
    public b get() {
        return c((Context) this.f32536a.get());
    }
}
