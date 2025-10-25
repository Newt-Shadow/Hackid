package x5;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import m6.Task;
/* loaded from: classes.dex */
public final class l implements c5.a {

    /* renamed from: e */
    private static c5.a f32488e;

    /* renamed from: a */
    private final Context f32489a;

    /* renamed from: b */
    private boolean f32490b;

    /* renamed from: c */
    private final ScheduledExecutorService f32491c;

    /* renamed from: d */
    private final ExecutorService f32492d;

    l(Context context) {
        this.f32490b = false;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f32491c = newSingleThreadScheduledExecutor;
        this.f32492d = Executors.newSingleThreadExecutor();
        this.f32489a = context;
        if (!this.f32490b) {
            newSingleThreadScheduledExecutor.scheduleAtFixedRate(new j(this, null), 0L, 86400L, TimeUnit.SECONDS);
            this.f32490b = true;
        }
    }

    public static synchronized c5.a d(Context context) {
        c5.a aVar;
        synchronized (l.class) {
            n5.q.l(context, "Context must not be null");
            if (f32488e == null) {
                f32488e = new l(context.getApplicationContext());
            }
            aVar = f32488e;
        }
        return aVar;
    }

    public static final void f(Context context) {
        String str;
        String str2;
        if (!g(context).edit().remove(CommonUrlParts.APP_SET_ID).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                str2 = "Failed to clear app set ID generated for App ".concat(valueOf);
            } else {
                str2 = new String("Failed to clear app set ID generated for App ");
            }
            Log.e("AppSet", str2);
        }
        if (!g(context).edit().remove("app_set_id_last_used_time").commit()) {
            String valueOf2 = String.valueOf(context.getPackageName());
            if (valueOf2.length() != 0) {
                str = "Failed to clear app set ID last used time for App ".concat(valueOf2);
            } else {
                str = new String("Failed to clear app set ID last used time for App ");
            }
            Log.e("AppSet", str);
        }
    }

    private static final SharedPreferences g(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    private static final void h(Context context) {
        String str;
        SharedPreferences g10 = g(context);
        if (!g10.edit().putLong("app_set_id_last_used_time", com.google.android.gms.common.util.g.b().currentTimeMillis()).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                str = "Failed to store app set ID last used time for App ".concat(valueOf);
            } else {
                str = new String("Failed to store app set ID last used time for App ");
            }
            Log.e("AppSet", str);
            throw new k("Failed to store the app set ID last used time.");
        }
    }

    @Override // c5.a
    public final Task a() {
        final m6.l lVar = new m6.l();
        this.f32492d.execute(new Runnable() { // from class: x5.h
            @Override // java.lang.Runnable
            public final void run() {
                l.this.e(lVar);
            }
        });
        return lVar.a();
    }

    public final long b() {
        long j10 = g(this.f32489a).getLong("app_set_id_last_used_time", -1L);
        if (j10 == -1) {
            return -1L;
        }
        return j10 + 33696000000L;
    }

    public final /* synthetic */ void e(m6.l lVar) {
        String str;
        String str2;
        String string = g(this.f32489a).getString(CommonUrlParts.APP_SET_ID, null);
        long b10 = b();
        if (string != null && com.google.android.gms.common.util.g.b().currentTimeMillis() <= b10) {
            try {
                h(this.f32489a);
            } catch (k e10) {
                lVar.b(e10);
                return;
            }
        } else {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.f32489a;
                if (!g(context).edit().putString(CommonUrlParts.APP_SET_ID, string).commit()) {
                    String valueOf = String.valueOf(context.getPackageName());
                    if (valueOf.length() != 0) {
                        str2 = "Failed to store app set ID generated for App ".concat(valueOf);
                    } else {
                        str2 = new String("Failed to store app set ID generated for App ");
                    }
                    Log.e("AppSet", str2);
                    throw new k("Failed to store the app set ID.");
                }
                h(context);
                Context context2 = this.f32489a;
                SharedPreferences g10 = g(context2);
                if (!g10.edit().putLong("app_set_id_creation_time", com.google.android.gms.common.util.g.b().currentTimeMillis()).commit()) {
                    String valueOf2 = String.valueOf(context2.getPackageName());
                    if (valueOf2.length() != 0) {
                        str = "Failed to store app set ID creation time for App ".concat(valueOf2);
                    } else {
                        str = new String("Failed to store app set ID creation time for App ");
                    }
                    Log.e("AppSet", str);
                    throw new k("Failed to store the app set ID creation time.");
                }
            } catch (k e11) {
                lVar.b(e11);
                return;
            }
        }
        lVar.c(new c5.b(string, 1));
    }
}
