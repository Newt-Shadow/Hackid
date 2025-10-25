package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class q implements u {

    /* renamed from: h  reason: collision with root package name */
    private static final Map f6144h = new r.a();

    /* renamed from: i  reason: collision with root package name */
    public static final String[] f6145i = {"key", "value"};

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f6146a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f6147b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f6148c;

    /* renamed from: d  reason: collision with root package name */
    private final ContentObserver f6149d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f6150e;

    /* renamed from: f  reason: collision with root package name */
    private volatile Map f6151f;

    /* renamed from: g  reason: collision with root package name */
    private final List f6152g;

    private q(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        p pVar = new p(this, null);
        this.f6149d = pVar;
        this.f6150e = new Object();
        this.f6152g = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.f6146a = contentResolver;
        this.f6147b = uri;
        this.f6148c = runnable;
        contentResolver.registerContentObserver(uri, false, pVar);
    }

    public static q b(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        q qVar;
        synchronized (q.class) {
            Map map = f6144h;
            qVar = (q) map.get(uri);
            if (qVar == null) {
                try {
                    q qVar2 = new q(contentResolver, uri, runnable);
                    try {
                        map.put(uri, qVar2);
                    } catch (SecurityException unused) {
                    }
                    qVar = qVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void d() {
        synchronized (q.class) {
            for (q qVar : f6144h.values()) {
                qVar.f6146a.unregisterContentObserver(qVar.f6149d);
            }
            f6144h.clear();
        }
    }

    @Override // com.google.android.gms.internal.auth.u
    public final /* bridge */ /* synthetic */ Object a(String str) {
        Map map;
        Map map2 = this.f6151f;
        if (map2 == null) {
            synchronized (this.f6150e) {
                map2 = this.f6151f;
                if (map2 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map = (Map) s.a(new t() { // from class: com.google.android.gms.internal.auth.o
                            @Override // com.google.android.gms.internal.auth.t
                            public final Object zza() {
                                return q.this.c();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                        Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map = null;
                    }
                    this.f6151f = map;
                    map2 = map;
                }
            }
        }
        if (map2 == null) {
            map2 = Collections.emptyMap();
        }
        return (String) map2.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map c() {
        Map hashMap;
        Cursor query = this.f6146a.query(this.f6147b, f6145i, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                hashMap = new r.a(count);
            } else {
                hashMap = new HashMap(count, 1.0f);
            }
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), query.getString(1));
            }
            return hashMap;
        } finally {
            query.close();
        }
    }

    public final void e() {
        synchronized (this.f6150e) {
            this.f6151f = null;
            m0.c();
        }
        synchronized (this) {
            Iterator it = this.f6152g.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                throw null;
            }
        }
    }
}
