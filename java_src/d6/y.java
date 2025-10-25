package d6;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.f;
/* loaded from: classes.dex */
public abstract class y extends n5.h {
    private final String I;
    protected final t J;

    public y(Context context, Looper looper, f.a aVar, f.b bVar, String str, n5.e eVar) {
        super(context, looper, 23, eVar, aVar, bVar);
        this.J = new x(this);
        this.I = str;
    }

    @Override // n5.c
    protected final Bundle A() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.I);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return 11717000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* bridge */ /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (queryLocalInterface instanceof i) {
            return (i) queryLocalInterface;
        }
        return new h(iBinder);
    }

    @Override // n5.c
    public final l5.d[] v() {
        return g6.v.f16291f;
    }
}
