package q2;

import android.content.Context;
/* loaded from: classes.dex */
public final class l implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f28010a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f28011b;

    public l(wc.a aVar, wc.a aVar2) {
        this.f28010a = aVar;
        this.f28011b = aVar2;
    }

    public static l a(wc.a aVar, wc.a aVar2) {
        return new l(aVar, aVar2);
    }

    public static k c(Context context, Object obj) {
        return new k(context, (i) obj);
    }

    @Override // wc.a
    /* renamed from: b */
    public k get() {
        return c((Context) this.f28010a.get(), this.f28011b.get());
    }
}
