package x2;

import android.content.Context;
/* loaded from: classes.dex */
public final class h implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32196a;

    public h(wc.a aVar) {
        this.f32196a = aVar;
    }

    public static h a(wc.a aVar) {
        return new h(aVar);
    }

    public static String c(Context context) {
        return (String) r2.d.d(f.b(context));
    }

    @Override // wc.a
    /* renamed from: b */
    public String get() {
        return c((Context) this.f32196a.get());
    }
}
