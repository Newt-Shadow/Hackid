package com.yandex.metrica;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.yandex.metrica.impl.ob.C0572h2;
import com.yandex.metrica.impl.ob.C0867t3;
import com.yandex.metrica.impl.ob.C0891u3;
import com.yandex.metrica.impl.ob.E0;
import com.yandex.metrica.impl.ob.Xd;
import com.yandex.metrica.impl.ob.Y;
import com.yandex.metrica.impl.ob.Yd;
import com.yandex.metrica.impl.ob.Z;
/* loaded from: classes.dex */
public class PreloadInfoContentProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9549a = false;

    /* renamed from: b  reason: collision with root package name */
    private final UriMatcher f9550b = new UriMatcher(-1);

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        C0572h2.b("Deleting is not supported", new Object[0]);
        return -1;
    }

    public synchronized void disable() {
        this.f9549a = true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Context applicationContext;
        Context applicationContext2;
        synchronized (this) {
            if (this.f9549a) {
                return null;
            }
            if (contentValues != null) {
                int match = this.f9550b.match(uri);
                if (match != 1) {
                    if (match != 2) {
                        C0572h2.b("Bad content provider uri: %s", uri);
                    } else {
                        Z z10 = new Z(new C0867t3(), new C0891u3(), new E0(), "clids");
                        Context context = getContext();
                        if (context == null) {
                            applicationContext2 = null;
                        } else {
                            applicationContext2 = context.getApplicationContext();
                        }
                        if (applicationContext2 != null) {
                            z10.a(applicationContext2, contentValues);
                        }
                    }
                } else {
                    Z z11 = new Z(new Xd(), new Yd(), new E0(), "preload info");
                    Context context2 = getContext();
                    if (context2 == null) {
                        applicationContext = null;
                    } else {
                        applicationContext = context2.getApplicationContext();
                    }
                    if (applicationContext != null) {
                        z11.a(applicationContext, contentValues);
                    }
                }
            }
            Y.a();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context applicationContext;
        String str;
        Context context = getContext();
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        if (applicationContext != null) {
            str = applicationContext.getPackageName();
        } else {
            str = "";
        }
        String str2 = str + ".appmetrica.preloadinfo.retail";
        this.f9550b.addURI(str2, "preloadinfo", 1);
        this.f9550b.addURI(str2, "clids", 2);
        Y.a(this);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        C0572h2.b("Query is not supported", new Object[0]);
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        C0572h2.b("Updating is not supported", new Object[0]);
        return -1;
    }
}
