package i5;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.f;
/* loaded from: classes.dex */
public final class i extends n5.h {
    private final GoogleSignInOptions I;

    public i(Context context, Looper looper, n5.e eVar, GoogleSignInOptions googleSignInOptions, f.a aVar, f.b bVar) {
        super(context, looper, 91, eVar, aVar, bVar);
        GoogleSignInOptions.a aVar2;
        if (googleSignInOptions != null) {
            aVar2 = new GoogleSignInOptions.a(googleSignInOptions);
        } else {
            aVar2 = new GoogleSignInOptions.a();
        }
        aVar2.j(y5.b.a());
        if (!eVar.d().isEmpty()) {
            for (Scope scope : eVar.d()) {
                aVar2.f(scope, new Scope[0]);
            }
        }
        this.I = aVar2.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return l5.k.f25303a;
    }

    public final GoogleSignInOptions m0() {
        return this.I;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        if (queryLocalInterface instanceof w) {
            return (w) queryLocalInterface;
        }
        return new w(iBinder);
    }
}
