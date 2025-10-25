package io.appmetrica.analytics.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.impl.AbstractC1151ej;
import io.appmetrica.analytics.impl.C1147ef;
import io.appmetrica.analytics.impl.C1172ff;
import io.appmetrica.analytics.impl.C1441qa;
import io.appmetrica.analytics.impl.H3;
import io.appmetrica.analytics.impl.I3;
import io.appmetrica.analytics.impl.P5;
import io.appmetrica.analytics.impl.Q5;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
public class PreloadInfoContentProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private boolean f21092a = false;

    /* renamed from: b  reason: collision with root package name */
    private final UriMatcher f21093b = new UriMatcher(-1);

    private void a(Q5 q52, ContentValues contentValues) {
        Context applicationContext;
        Context context = getContext();
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        if (applicationContext != null) {
            try {
                Object invoke = q52.f18805a.invoke(contentValues);
                if (invoke != null) {
                    q52.f18807c.b(applicationContext);
                    if (((Boolean) q52.f18806b.invoke(invoke)).booleanValue()) {
                        AbstractC1151ej.a("Successfully saved " + q52.f18808d, new Object[0]);
                    } else {
                        AbstractC1151ej.a("Did not save " + q52.f18808d + " because data is already present", new Object[0]);
                    }
                }
            } catch (Throwable th) {
                ImportantLogger importantLogger = ImportantLogger.INSTANCE;
                importantLogger.info("AppMetrica-Attribution", String.format("Unexpected error occurred", new Object[0]) + "\n" + StringUtils.throwableToString(th), new Object[0]);
            }
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        AbstractC1151ej.a("Deleting is not supported", new Object[0]);
        return -1;
    }

    public synchronized void disable() {
        this.f21092a = true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        synchronized (this) {
            if (this.f21092a) {
                return null;
            }
            if (contentValues != null) {
                int match = this.f21093b.match(uri);
                if (match != 1) {
                    if (match != 2) {
                        AbstractC1151ej.a("Bad content provider uri.", new Object[0]);
                    } else {
                        a(new Q5(new H3(), new I3(), C1441qa.f20434d, "clids"), contentValues);
                    }
                } else {
                    a(new Q5(new C1147ef(), new C1172ff(), C1441qa.f20434d, "preload info"), contentValues);
                }
            }
            CountDownLatch countDownLatch = P5.f18759a;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
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
        this.f21093b.addURI(str2, "preloadinfo", 1);
        this.f21093b.addURI(str2, "clids", 2);
        P5.f18759a = new CountDownLatch(1);
        P5.f18760b = this;
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        AbstractC1151ej.a("Query is not supported", new Object[0]);
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        AbstractC1151ej.a("Updating is not supported", new Object[0]);
        return -1;
    }
}
