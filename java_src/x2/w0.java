package x2;

import android.content.Context;
/* loaded from: classes.dex */
public final class w0 implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32249a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f32250b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f32251c;

    public w0(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        this.f32249a = aVar;
        this.f32250b = aVar2;
        this.f32251c = aVar3;
    }

    public static w0 a(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        return new w0(aVar, aVar2, aVar3);
    }

    public static v0 c(Context context, String str, int i10) {
        return new v0(context, str, i10);
    }

    @Override // wc.a
    /* renamed from: b */
    public v0 get() {
        return c((Context) this.f32249a.get(), (String) this.f32250b.get(), ((Integer) this.f32251c.get()).intValue());
    }
}
