package q2;

import android.content.Context;
/* loaded from: classes.dex */
public final class j implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f28002a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f28003b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f28004c;

    public j(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        this.f28002a = aVar;
        this.f28003b = aVar2;
        this.f28004c = aVar3;
    }

    public static j a(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        return new j(aVar, aVar2, aVar3);
    }

    public static i c(Context context, z2.a aVar, z2.a aVar2) {
        return new i(context, aVar, aVar2);
    }

    @Override // wc.a
    /* renamed from: b */
    public i get() {
        return c((Context) this.f28002a.get(), (z2.a) this.f28003b.get(), (z2.a) this.f28004c.get());
    }
}
