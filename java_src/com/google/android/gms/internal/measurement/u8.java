package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
/* loaded from: classes.dex */
public final class u8 implements x8 {

    /* renamed from: i  reason: collision with root package name */
    private static final ConcurrentMap f6824i = new ConcurrentHashMap();

    /* renamed from: j  reason: collision with root package name */
    public static final String[] f6825j = {"key", "value"};

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f6826a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f6827b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f6828c;

    /* renamed from: g  reason: collision with root package name */
    private volatile Map f6832g;

    /* renamed from: d  reason: collision with root package name */
    private ContentObserver f6829d = null;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f6830e = true;

    /* renamed from: f  reason: collision with root package name */
    private final Object f6831f = new Object();

    /* renamed from: h  reason: collision with root package name */
    private final List f6833h = new ArrayList();

    private u8(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        n6.m.i(contentResolver);
        n6.m.i(uri);
        this.f6826a = contentResolver;
        this.f6827b = uri;
        this.f6828c = runnable;
    }

    public static u8 c(final ContentResolver contentResolver, final Uri uri, final Runnable runnable) {
        u8 u8Var = (u8) f6824i.computeIfAbsent(uri, new Function() { // from class: com.google.android.gms.internal.measurement.t8
            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                return u8.g(contentResolver, uri, runnable, (Uri) obj);
            }
        });
        try {
            if (u8Var.f6830e) {
                synchronized (u8Var) {
                    if (u8Var.f6830e) {
                        r8 r8Var = new r8(u8Var, null);
                        u8Var.f6826a.registerContentObserver(u8Var.f6827b, false, r8Var);
                        u8Var.f6829d = r8Var;
                        u8Var.f6830e = false;
                    }
                }
            }
            return u8Var;
        } catch (SecurityException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f() {
        Iterator it = f6824i.values().iterator();
        while (it.hasNext()) {
            u8 u8Var = (u8) it.next();
            synchronized (u8Var) {
                if (u8Var.f6830e) {
                    u8Var.f6830e = false;
                } else {
                    ContentObserver contentObserver = u8Var.f6829d;
                    if (contentObserver != null) {
                        u8Var.f6826a.unregisterContentObserver(contentObserver);
                        u8Var.f6829d = null;
                    }
                }
            }
            it.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ u8 g(ContentResolver contentResolver, Uri uri, Runnable runnable, Uri uri2) {
        return new u8(contentResolver, uri, runnable);
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final /* bridge */ /* synthetic */ Object a(String str) {
        return (String) d().get(str);
    }

    public final Map d() {
        Map emptyMap;
        Map map = this.f6832g;
        if (map == null) {
            synchronized (this.f6831f) {
                map = this.f6832g;
                if (map == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        emptyMap = (Map) x8.b(new w8() { // from class: com.google.android.gms.internal.measurement.s8
                            @Override // com.google.android.gms.internal.measurement.w8
                            public final /* synthetic */ Object zza() {
                                return u8.this.h();
                            }
                        });
                    } catch (SQLiteException | IllegalStateException | SecurityException e10) {
                        Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e10);
                        emptyMap = Collections.emptyMap();
                    }
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    this.f6832g = emptyMap;
                    map = emptyMap;
                }
            }
        }
        if (map != null) {
            return map;
        }
        return Collections.emptyMap();
    }

    public final void e() {
        synchronized (this.f6831f) {
            this.f6832g = null;
            this.f6828c.run();
        }
        synchronized (this) {
            Iterator it = this.f6833h.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map h() {
        Map emptyMap;
        Cursor query;
        Map hashMap;
        Map emptyMap2;
        ContentResolver contentResolver = this.f6826a;
        Uri uri = this.f6827b;
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (acquireUnstableContentProviderClient == null) {
                Log.w("ConfigurationContentLdr", "Unable to acquire ContentProviderClient, using default values");
                return Collections.emptyMap();
            }
            try {
                query = acquireUnstableContentProviderClient.query(uri, f6825j, null, null, null);
            } catch (RemoteException e10) {
                Log.w("ConfigurationContentLdr", "ContentProvider query failed, using default values", e10);
                emptyMap = Collections.emptyMap();
            }
            try {
                if (query == null) {
                    Log.w("ConfigurationContentLdr", "ContentProvider query returned null cursor, using default values");
                    emptyMap = Collections.emptyMap();
                    acquireUnstableContentProviderClient.release();
                    return emptyMap;
                }
                int count = query.getCount();
                if (count == 0) {
                    emptyMap2 = Collections.emptyMap();
                } else {
                    if (count <= 256) {
                        hashMap = new r.a(count);
                    } else {
                        hashMap = new HashMap(count, 1.0f);
                    }
                    while (query.moveToNext()) {
                        hashMap.put(query.getString(0), query.getString(1));
                    }
                    if (!query.isAfterLast()) {
                        Log.w("ConfigurationContentLdr", "Cursor read incomplete (ContentProvider dead?), using default values");
                        emptyMap2 = Collections.emptyMap();
                    } else {
                        query.close();
                        acquireUnstableContentProviderClient.release();
                        return hashMap;
                    }
                }
                query.close();
                acquireUnstableContentProviderClient.release();
                return emptyMap2;
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            acquireUnstableContentProviderClient.release();
            throw th3;
        }
    }
}
