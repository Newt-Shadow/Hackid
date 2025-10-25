package com.google.firebase.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import h7.f;
import h7.o;
import java.util.concurrent.atomic.AtomicBoolean;
import n5.q;
/* loaded from: classes.dex */
public class FirebaseInitProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static o f9023a = o.e();

    /* renamed from: b  reason: collision with root package name */
    private static AtomicBoolean f9024b = new AtomicBoolean(false);

    private static void a(ProviderInfo providerInfo) {
        q.l(providerInfo, "FirebaseInitProvider ProviderInfo cannot be null.");
        if (!"com.google.firebase.firebaseinitprovider".equals(providerInfo.authority)) {
            return;
        }
        throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
    }

    public static o b() {
        return f9023a;
    }

    public static boolean c() {
        return f9024b.get();
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        a(providerInfo);
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            f9024b.set(true);
            if (f.u(getContext()) == null) {
                Log.i("FirebaseInitProvider", "FirebaseApp initialization unsuccessful");
            } else {
                Log.i("FirebaseInitProvider", "FirebaseApp initialization successful");
            }
            return false;
        } finally {
            f9024b.set(false);
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
