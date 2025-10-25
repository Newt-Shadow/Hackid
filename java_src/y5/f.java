package y5;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import n5.h;
/* loaded from: classes.dex */
public final class f extends h {
    private final e5.g I;

    public f(Context context, Looper looper, n5.e eVar, e5.g gVar, f.a aVar, f.b bVar) {
        super(context, looper, 68, eVar, aVar, bVar);
        e5.f fVar = new e5.f(gVar == null ? e5.g.f15364d : gVar);
        fVar.a(b.a());
        this.I = new e5.g(fVar);
    }

    @Override // n5.c
    protected final Bundle A() {
        return this.I.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return 12800000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        if (queryLocalInterface instanceof g) {
            return (g) queryLocalInterface;
        }
        return new g(iBinder);
    }
}
