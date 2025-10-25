package q7;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import m6.Task;
/* loaded from: classes.dex */
public class j0 {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f28476a;

    /* renamed from: b  reason: collision with root package name */
    private final h7.f f28477b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f28478c;

    /* renamed from: d  reason: collision with root package name */
    m6.l f28479d;

    /* renamed from: e  reason: collision with root package name */
    boolean f28480e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28481f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f28482g;

    /* renamed from: h  reason: collision with root package name */
    private final m6.l f28483h;

    public j0(h7.f fVar) {
        Object obj = new Object();
        this.f28478c = obj;
        this.f28479d = new m6.l();
        this.f28480e = false;
        this.f28481f = false;
        this.f28483h = new m6.l();
        Context m10 = fVar.m();
        this.f28477b = fVar;
        this.f28476a = j.q(m10);
        Boolean b10 = b();
        this.f28482g = b10 == null ? a(m10) : b10;
        synchronized (obj) {
            if (d()) {
                this.f28479d.e(null);
                this.f28480e = true;
            }
        }
    }

    private Boolean a(Context context) {
        Boolean g10 = g(context);
        if (g10 == null) {
            this.f28481f = false;
            return null;
        }
        this.f28481f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(g10));
    }

    private Boolean b() {
        if (this.f28476a.contains("firebase_crashlytics_collection_enabled")) {
            this.f28481f = false;
            return Boolean.valueOf(this.f28476a.getBoolean("firebase_crashlytics_collection_enabled", true));
        }
        return null;
    }

    private boolean e() {
        try {
            return this.f28477b.x();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    private void f(boolean z10) {
        String str;
        String str2;
        if (z10) {
            str = "ENABLED";
        } else {
            str = "DISABLED";
        }
        if (this.f28482g == null) {
            str2 = "global Firebase setting";
        } else if (this.f28481f) {
            str2 = "firebase_crashlytics_collection_enabled manifest flag";
        } else {
            str2 = "API";
        }
        n7.g.f().b(String.format("Crashlytics automatic data collection %s by %s.", str, str2));
    }

    private static Boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            n7.g.f().e("Could not read data collection permission from manifest", e10);
            return null;
        }
    }

    private static void i(SharedPreferences sharedPreferences, Boolean bool) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (bool != null) {
            edit.putBoolean("firebase_crashlytics_collection_enabled", bool.booleanValue());
        } else {
            edit.remove("firebase_crashlytics_collection_enabled");
        }
        edit.apply();
    }

    public void c(boolean z10) {
        if (z10) {
            this.f28483h.e(null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    public synchronized boolean d() {
        boolean e10;
        Boolean bool = this.f28482g;
        if (bool != null) {
            e10 = bool.booleanValue();
        } else {
            e10 = e();
        }
        f(e10);
        return e10;
    }

    public synchronized void h(Boolean bool) {
        Boolean a10;
        if (bool != null) {
            try {
                this.f28481f = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bool != null) {
            a10 = bool;
        } else {
            a10 = a(this.f28477b.m());
        }
        this.f28482g = a10;
        i(this.f28476a, bool);
        synchronized (this.f28478c) {
            if (d()) {
                if (!this.f28480e) {
                    this.f28479d.e(null);
                    this.f28480e = true;
                }
            } else if (this.f28480e) {
                this.f28479d = new m6.l();
                this.f28480e = false;
            }
        }
    }

    public Task j() {
        Task a10;
        synchronized (this.f28478c) {
            a10 = this.f28479d.a();
        }
        return a10;
    }

    public Task k() {
        return r7.b.c(this.f28483h.a(), j());
    }
}
