package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.ResultReceiver;
/* loaded from: classes2.dex */
public final class L4 implements InterfaceC1584w4 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18510a;

    /* renamed from: b  reason: collision with root package name */
    public final O4 f18511b;

    /* renamed from: c  reason: collision with root package name */
    public final ResultReceiver f18512c;

    public L4(Context context, O4 o42, G4 g42) {
        this.f18510a = context;
        this.f18511b = o42;
        this.f18512c = g42.f18261c;
        o42.a(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1584w4
    public final void a(C1138e6 c1138e6, G4 g42) {
        this.f18511b.a(g42.f18260b);
        this.f18511b.a(c1138e6, this);
    }

    public final O4 b() {
        return this.f18511b;
    }

    public final Context c() {
        return this.f18510a;
    }

    public final ResultReceiver d() {
        return this.f18512c;
    }

    public final void a(C1285k4 c1285k4) {
        M6.a(this.f18512c, c1285k4);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1584w4
    public final void a() {
        this.f18511b.b(this);
    }
}
