package p8;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import h7.b;
import h8.c;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f27896a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f27897b;

    /* renamed from: c  reason: collision with root package name */
    private final c f27898c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27899d;

    public a(Context context, String str, c cVar) {
        Context a10 = a(context);
        this.f27896a = a10;
        this.f27897b = a10.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f27898c = cVar;
        this.f27899d = c();
    }

    private static Context a(Context context) {
        return androidx.core.content.a.b(context);
    }

    private boolean c() {
        if (this.f27897b.contains("firebase_data_collection_default_enabled")) {
            return this.f27897b.getBoolean("firebase_data_collection_default_enabled", true);
        }
        return d();
    }

    private boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f27896a.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.f27896a.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    private synchronized void f(boolean z10) {
        if (this.f27899d != z10) {
            this.f27899d = z10;
            this.f27898c.a(new h8.a(b.class, new b(z10)));
        }
    }

    public synchronized boolean b() {
        return this.f27899d;
    }

    public synchronized void e(Boolean bool) {
        if (bool == null) {
            this.f27897b.edit().remove("firebase_data_collection_default_enabled").apply();
            f(d());
        } else {
            boolean equals = Boolean.TRUE.equals(bool);
            this.f27897b.edit().putBoolean("firebase_data_collection_default_enabled", equals).apply();
            f(equals);
        }
    }
}
