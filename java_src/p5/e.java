package p5;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import m5.m;
import n5.h;
import n5.x;
/* loaded from: classes.dex */
public final class e extends h {
    private final x I;

    public e(Context context, Looper looper, n5.e eVar, x xVar, m5.d dVar, m mVar) {
        super(context, looper, 270, eVar, dVar, mVar);
        this.I = xVar;
    }

    @Override // n5.c
    protected final Bundle A() {
        return this.I.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // n5.c
    protected final boolean I() {
        return true;
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return 203400000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        if (queryLocalInterface instanceof a) {
            return (a) queryLocalInterface;
        }
        return new a(iBinder);
    }

    @Override // n5.c
    public final l5.d[] v() {
        return a6.d.f115b;
    }
}
