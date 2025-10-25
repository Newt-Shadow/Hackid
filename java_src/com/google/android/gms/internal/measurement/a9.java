package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a9 implements x8 {

    /* renamed from: d  reason: collision with root package name */
    private static a9 f6223d;

    /* renamed from: a  reason: collision with root package name */
    private final Context f6224a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentObserver f6225b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6226c;

    private a9() {
        this.f6226c = false;
        this.f6224a = null;
        this.f6225b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a9 c(Context context) {
        a9 a9Var;
        a9 a9Var2;
        synchronized (a9.class) {
            if (f6223d == null) {
                if (androidx.core.content.e.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                    a9Var2 = new a9(context);
                } else {
                    a9Var2 = new a9();
                }
                f6223d = a9Var2;
            }
            a9 a9Var3 = f6223d;
            if (a9Var3 != null && a9Var3.f6225b != null && !a9Var3.f6226c) {
                try {
                    context.getContentResolver().registerContentObserver(j8.f6449a, true, f6223d.f6225b);
                    ((a9) n6.m.i(f6223d)).f6226c = true;
                } catch (SecurityException e10) {
                    Log.e("GservicesLoader", "Unable to register Gservices content observer", e10);
                }
            }
            a9Var = (a9) n6.m.i(f6223d);
        }
        return a9Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void e() {
        Context context;
        synchronized (a9.class) {
            a9 a9Var = f6223d;
            if (a9Var != null && (context = a9Var.f6224a) != null && a9Var.f6225b != null && a9Var.f6226c) {
                context.getContentResolver().unregisterContentObserver(f6223d.f6225b);
            }
            f6223d = null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.x8
    /* renamed from: d */
    public final String a(final String str) {
        Context context = this.f6224a;
        if (context != null && !p8.b(context)) {
            try {
                return (String) x8.b(new w8() { // from class: com.google.android.gms.internal.measurement.z8
                    @Override // com.google.android.gms.internal.measurement.w8
                    public final /* synthetic */ Object zza() {
                        return a9.this.f(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e10) {
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(str), e10);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String f(String str) {
        return i8.a(((Context) n6.m.i(this.f6224a)).getContentResolver(), str, null);
    }

    private a9(Context context) {
        this.f6226c = false;
        this.f6224a = context;
        this.f6225b = new y8(this, null);
    }
}
