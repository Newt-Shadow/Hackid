package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class o8 implements k8 {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f6605a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private HashMap f6606b = null;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap f6607c = new HashMap(16, 1.0f);

    /* renamed from: d  reason: collision with root package name */
    private final HashMap f6608d = new HashMap(16, 1.0f);

    /* renamed from: e  reason: collision with root package name */
    private final HashMap f6609e = new HashMap(16, 1.0f);

    /* renamed from: f  reason: collision with root package name */
    private final HashMap f6610f = new HashMap(16, 1.0f);

    /* renamed from: g  reason: collision with root package name */
    private Object f6611g = null;

    /* renamed from: h  reason: collision with root package name */
    private boolean f6612h = false;

    /* renamed from: i  reason: collision with root package name */
    private final String[] f6613i = new String[0];

    @Override // com.google.android.gms.internal.measurement.k8
    public final String a(ContentResolver contentResolver, String str, String str2) {
        String str3;
        if (contentResolver != null) {
            synchronized (this) {
                String str4 = null;
                if (this.f6606b == null) {
                    this.f6605a.set(false);
                    this.f6606b = new HashMap(16, 1.0f);
                    this.f6611g = new Object();
                    contentResolver.registerContentObserver(j8.f6449a, true, new m8(this, null));
                } else if (this.f6605a.getAndSet(false)) {
                    this.f6606b.clear();
                    this.f6607c.clear();
                    this.f6608d.clear();
                    this.f6609e.clear();
                    this.f6610f.clear();
                    this.f6611g = new Object();
                    this.f6612h = false;
                }
                Object obj = this.f6611g;
                if (this.f6606b.containsKey(str)) {
                    String str5 = (String) this.f6606b.get(str);
                    if (str5 != null) {
                        str4 = str5;
                    }
                    return str4;
                }
                try {
                    Uri uri = j8.f6449a;
                    ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
                    if (acquireUnstableContentProviderClient != null) {
                        try {
                            Cursor query = acquireUnstableContentProviderClient.query(uri, null, null, new String[]{str}, null);
                            try {
                                if (query != null) {
                                    if (query.moveToFirst()) {
                                        str3 = query.getString(1);
                                        query.close();
                                        acquireUnstableContentProviderClient.release();
                                    } else {
                                        query.close();
                                        acquireUnstableContentProviderClient.release();
                                        str3 = null;
                                    }
                                    if (str3 != null && str3.equals(null)) {
                                        str3 = null;
                                    }
                                    synchronized (this) {
                                        if (obj == this.f6611g) {
                                            this.f6606b.put(str, str3);
                                        }
                                    }
                                    if (str3 == null) {
                                        return null;
                                    }
                                    return str3;
                                }
                                throw new n8("ContentProvider query returned null cursor");
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
                        } catch (RemoteException e10) {
                            throw new n8("ContentProvider query failed", e10);
                        }
                    }
                    throw new n8("Unable to acquire ContentProviderClient");
                } catch (n8 unused) {
                    return null;
                }
            }
        }
        throw new IllegalStateException("ContentResolver needed with GservicesDelegateSupplier.init()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ AtomicBoolean b() {
        return this.f6605a;
    }
}
