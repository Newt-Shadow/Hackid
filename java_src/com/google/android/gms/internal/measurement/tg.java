package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class tg extends j {

    /* renamed from: c  reason: collision with root package name */
    private final yf f6818c;

    public tg(yf yfVar) {
        super("internal.logger");
        this.f6818c = yfVar;
        this.f6444b.put("log", new sg(this, false, true));
        this.f6444b.put("silent", new wd(this, "silent"));
        ((j) this.f6444b.get("silent")).m("log", new sg(this, true, true));
        this.f6444b.put("unmonitored", new xe(this, "unmonitored"));
        ((j) this.f6444b.get("unmonitored")).m("log", new sg(this, false, false));
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(z4 z4Var, List list) {
        return p.f6622j0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ yf c() {
        return this.f6818c;
    }
}
