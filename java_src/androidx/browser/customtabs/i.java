package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.widget.RemoteViews;
import b.c;
import java.util.List;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final Object f1802a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final b.b f1803b;

    /* renamed from: c  reason: collision with root package name */
    private final b.a f1804c;

    /* renamed from: d  reason: collision with root package name */
    private final ComponentName f1805d;

    /* renamed from: e  reason: collision with root package name */
    private final PendingIntent f1806e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends c.a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f1807a = new Handler(Looper.getMainLooper());

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ j f1808g;

        a(j jVar) {
            this.f1808g = jVar;
        }

        @Override // b.c
        public void onGreatestScrollPercentageIncreased(final int i10, final Bundle bundle) {
            Handler handler = this.f1807a;
            final j jVar = this.f1808g;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.h
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.onGreatestScrollPercentageIncreased(i10, bundle);
                }
            });
        }

        @Override // b.c
        public void onSessionEnded(final boolean z10, final Bundle bundle) {
            Handler handler = this.f1807a;
            final j jVar = this.f1808g;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.g
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.onSessionEnded(z10, bundle);
                }
            });
        }

        @Override // b.c
        public void onVerticalScrollEvent(final boolean z10, final Bundle bundle) {
            Handler handler = this.f1807a;
            final j jVar = this.f1808g;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.f
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.onVerticalScrollEvent(z10, bundle);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(b.b bVar, b.a aVar, ComponentName componentName, PendingIntent pendingIntent) {
        this.f1803b = bVar;
        this.f1804c = aVar;
        this.f1805d = componentName;
        this.f1806e = pendingIntent;
    }

    private void a(Bundle bundle) {
        PendingIntent pendingIntent = this.f1806e;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
    }

    private Bundle b(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        a(bundle2);
        return bundle2;
    }

    private c.a c(j jVar) {
        return new a(jVar);
    }

    private Bundle d(Uri uri) {
        Bundle bundle = new Bundle();
        if (uri != null) {
            bundle.putParcelable("target_origin", uri);
        }
        if (this.f1806e != null) {
            a(bundle);
        }
        if (bundle.isEmpty()) {
            return null;
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder e() {
        return this.f1804c.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentName f() {
        return this.f1805d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingIntent g() {
        return this.f1806e;
    }

    public boolean h(Bundle bundle) {
        try {
            return this.f1803b.u0(this.f1804c, b(bundle));
        } catch (SecurityException e10) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e10);
        }
    }

    public boolean i(Uri uri, Bundle bundle, List list) {
        try {
            return this.f1803b.P(this.f1804c, uri, b(bundle), list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int j(String str, Bundle bundle) {
        int x10;
        Bundle b10 = b(bundle);
        synchronized (this.f1802a) {
            try {
                try {
                    x10 = this.f1803b.x(this.f1804c, str, b10);
                } catch (RemoteException unused) {
                    return -2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return x10;
    }

    public boolean k(Uri uri, Uri uri2, Bundle bundle) {
        try {
            Bundle d10 = d(uri2);
            if (d10 != null) {
                bundle.putAll(d10);
                return this.f1803b.r(this.f1804c, uri, bundle);
            }
            return this.f1803b.l0(this.f1804c, uri);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean l(Bitmap bitmap, String str) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.customtabs.customaction.ICON", bitmap);
        bundle.putString("android.support.customtabs.customaction.DESCRIPTION", str);
        Bundle bundle2 = new Bundle();
        bundle2.putBundle("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
        a(bundle);
        try {
            return this.f1803b.B0(this.f1804c, bundle2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean m(j jVar, Bundle bundle) {
        try {
            return this.f1803b.d0(this.f1804c, c(jVar).asBinder(), b(bundle));
        } catch (SecurityException e10) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e10);
        }
    }

    public boolean n(RemoteViews remoteViews, int[] iArr, PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS", remoteViews);
        bundle.putIntArray("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS", iArr);
        bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT", pendingIntent);
        a(bundle);
        try {
            return this.f1803b.B0(this.f1804c, bundle);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean o(int i10, Uri uri, Bundle bundle) {
        if (i10 >= 1 && i10 <= 2) {
            try {
                return this.f1803b.A0(this.f1804c, i10, uri, b(bundle));
            } catch (RemoteException unused) {
            }
        }
        return false;
    }
}
