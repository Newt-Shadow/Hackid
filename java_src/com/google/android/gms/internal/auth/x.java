package com.google.android.gms.internal.auth;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x implements u {

    /* renamed from: c  reason: collision with root package name */
    private static x f6196c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f6197a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentObserver f6198b;

    private x() {
        this.f6197a = null;
        this.f6198b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x b(Context context) {
        x xVar;
        x xVar2;
        synchronized (x.class) {
            if (f6196c == null) {
                if (androidx.core.content.e.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                    xVar2 = new x(context);
                } else {
                    xVar2 = new x();
                }
                f6196c = xVar2;
            }
            xVar = f6196c;
        }
        return xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void e() {
        Context context;
        synchronized (x.class) {
            x xVar = f6196c;
            if (xVar != null && (context = xVar.f6197a) != null && xVar.f6198b != null) {
                context.getContentResolver().unregisterContentObserver(f6196c.f6198b);
            }
            f6196c = null;
        }
    }

    @Override // com.google.android.gms.internal.auth.u
    /* renamed from: c */
    public final String a(final String str) {
        Context context = this.f6197a;
        if (context != null && !m.a(context)) {
            try {
                return (String) s.a(new t() { // from class: com.google.android.gms.internal.auth.v
                    @Override // com.google.android.gms.internal.auth.t
                    public final Object zza() {
                        return x.this.d(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e10) {
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e10);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String d(String str) {
        return l.a(this.f6197a.getContentResolver(), str, null);
    }

    private x(Context context) {
        this.f6197a = context;
        w wVar = new w(this, null);
        this.f6198b = wVar;
        context.getContentResolver().registerContentObserver(l.f6085a, true, wVar);
    }
}
