package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class r9 implements x8 {

    /* renamed from: f  reason: collision with root package name */
    private static final Map f6739f = new r.a();

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f6740a;

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences.OnSharedPreferenceChangeListener f6741b;

    /* renamed from: d  reason: collision with root package name */
    private volatile Map f6743d;

    /* renamed from: c  reason: collision with root package name */
    private final Object f6742c = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final List f6744e = new ArrayList();

    private r9(SharedPreferences sharedPreferences, Runnable runnable) {
        this.f6740a = sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r9 c(Context context, String str, Runnable runnable) {
        final r9 r9Var;
        SharedPreferences a10;
        if (p8.a() && !str.startsWith("direct_boot:") && !p8.c(context)) {
            return null;
        }
        synchronized (r9.class) {
            Map map = f6739f;
            r9Var = (r9) map.get(str);
            if (r9Var == null) {
                StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                if (str.startsWith("direct_boot:")) {
                    if (p8.a()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    a10 = i1.a(context, str.substring(12), 0, e1.f6366a);
                } else {
                    a10 = i1.a(context, str, 0, e1.f6366a);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                r9Var = new r9(a10, runnable);
                SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.internal.measurement.q9
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final /* synthetic */ void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                        r9.this.e(sharedPreferences, str2);
                    }
                };
                r9Var.f6741b = onSharedPreferenceChangeListener;
                r9Var.f6740a.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
                map.put(str, r9Var);
            }
        }
        return r9Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void d() {
        synchronized (r9.class) {
            Map map = f6739f;
            for (r9 r9Var : map.values()) {
                r9Var.f6740a.unregisterOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) n6.m.i(r9Var.f6741b));
            }
            map.clear();
        }
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final Object a(String str) {
        Map<String, ?> map = this.f6743d;
        if (map == null) {
            synchronized (this.f6742c) {
                map = this.f6743d;
                if (map == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    Map<String, ?> all = this.f6740a.getAll();
                    this.f6743d = all;
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    map = all;
                }
            }
        }
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void e(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f6742c) {
            this.f6743d = null;
            p9.c();
        }
        synchronized (this) {
            Iterator it = this.f6744e.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                throw null;
            }
        }
    }
}
