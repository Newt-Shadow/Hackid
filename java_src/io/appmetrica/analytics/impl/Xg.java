package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Xg extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final Cdo f19257b;

    public Xg(C1386o5 c1386o5) {
        this(c1386o5, c1386o5.t());
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        C1386o5 c1386o5 = this.f18787a;
        if (!this.f19257b.c()) {
            if (!this.f19257b.d()) {
                C1564v9 c1564v9 = c1386o5.f20266n;
                c1564v9.f20782c.b(C1138e6.a(c1138e6, EnumC1367nb.EVENT_TYPE_FIRST_ACTIVATION));
            }
            Cdo cdo = this.f19257b;
            synchronized (cdo) {
                eo eoVar = cdo.f19546a;
                eoVar.a(eoVar.a().put("first_event_done", true));
            }
            return false;
        }
        return false;
    }

    public Xg(C1386o5 c1386o5, Cdo cdo) {
        super(c1386o5);
        this.f19257b = cdo;
    }
}
