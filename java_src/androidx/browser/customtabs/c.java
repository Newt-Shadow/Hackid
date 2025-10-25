package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import b.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private final b.b f1741a;

    /* renamed from: b  reason: collision with root package name */
    private final ComponentName f1742b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f1743c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends a.AbstractBinderC0067a {

        /* renamed from: a  reason: collision with root package name */
        private Handler f1744a = new Handler(Looper.getMainLooper());

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ androidx.browser.customtabs.b f1745g;

        /* renamed from: androidx.browser.customtabs.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0019a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bundle f1747a;

            RunnableC0019a(Bundle bundle) {
                this.f1747a = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onUnminimized(this.f1747a);
            }
        }

        /* loaded from: classes.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f1749a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Bundle f1750b;

            b(int i10, Bundle bundle) {
                this.f1749a = i10;
                this.f1750b = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onNavigationEvent(this.f1749a, this.f1750b);
            }
        }

        /* renamed from: androidx.browser.customtabs.c$a$c  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0020c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f1752a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Bundle f1753b;

            RunnableC0020c(String str, Bundle bundle) {
                this.f1752a = str;
                this.f1753b = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.extraCallback(this.f1752a, this.f1753b);
            }
        }

        /* loaded from: classes.dex */
        class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bundle f1755a;

            d(Bundle bundle) {
                this.f1755a = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onMessageChannelReady(this.f1755a);
            }
        }

        /* loaded from: classes.dex */
        class e implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f1757a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Bundle f1758b;

            e(String str, Bundle bundle) {
                this.f1757a = str;
                this.f1758b = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onPostMessage(this.f1757a, this.f1758b);
            }
        }

        /* loaded from: classes.dex */
        class f implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f1760a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Uri f1761b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ boolean f1762c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Bundle f1763d;

            f(int i10, Uri uri, boolean z10, Bundle bundle) {
                this.f1760a = i10;
                this.f1761b = uri;
                this.f1762c = z10;
                this.f1763d = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onRelationshipValidationResult(this.f1760a, this.f1761b, this.f1762c, this.f1763d);
            }
        }

        /* loaded from: classes.dex */
        class g implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f1765a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f1766b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Bundle f1767c;

            g(int i10, int i11, Bundle bundle) {
                this.f1765a = i10;
                this.f1766b = i11;
                this.f1767c = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onActivityResized(this.f1765a, this.f1766b, this.f1767c);
            }
        }

        /* loaded from: classes.dex */
        class h implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bundle f1769a;

            h(Bundle bundle) {
                this.f1769a = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onWarmupCompleted(this.f1769a);
            }
        }

        /* loaded from: classes.dex */
        class i implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f1771a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f1772b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f1773c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ int f1774d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ int f1775e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ Bundle f1776f;

            i(int i10, int i11, int i12, int i13, int i14, Bundle bundle) {
                this.f1771a = i10;
                this.f1772b = i11;
                this.f1773c = i12;
                this.f1774d = i13;
                this.f1775e = i14;
                this.f1776f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onActivityLayout(this.f1771a, this.f1772b, this.f1773c, this.f1774d, this.f1775e, this.f1776f);
            }
        }

        /* loaded from: classes.dex */
        class j implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bundle f1778a;

            j(Bundle bundle) {
                this.f1778a = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f1745g.onMinimized(this.f1778a);
            }
        }

        a(androidx.browser.customtabs.b bVar) {
            this.f1745g = bVar;
        }

        @Override // b.a
        public void E0(Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new h(bundle));
        }

        @Override // b.a
        public void I0(int i10, Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new b(i10, bundle));
        }

        @Override // b.a
        public Bundle M(String str, Bundle bundle) {
            androidx.browser.customtabs.b bVar = this.f1745g;
            if (bVar == null) {
                return null;
            }
            return bVar.extraCallbackWithResult(str, bundle);
        }

        @Override // b.a
        public void S0(String str, Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new e(str, bundle));
        }

        @Override // b.a
        public void W0(Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new d(bundle));
        }

        @Override // b.a
        public void Y(Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new j(bundle));
        }

        @Override // b.a
        public void Y0(int i10, Uri uri, boolean z10, Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new f(i10, uri, z10, bundle));
        }

        @Override // b.a
        public void c0(Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new RunnableC0019a(bundle));
        }

        @Override // b.a
        public void n0(int i10, int i11, Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new g(i10, i11, bundle));
        }

        @Override // b.a
        public void z(int i10, int i11, int i12, int i13, int i14, Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new i(i10, i11, i12, i13, i14, bundle));
        }

        @Override // b.a
        public void z0(String str, Bundle bundle) {
            if (this.f1745g == null) {
                return;
            }
            this.f1744a.post(new RunnableC0020c(str, bundle));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b.b bVar, ComponentName componentName, Context context) {
        this.f1741a = bVar;
        this.f1742b = componentName;
        this.f1743c = context;
    }

    public static boolean a(Context context, String str, e eVar) {
        eVar.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, eVar, 33);
    }

    private a.AbstractBinderC0067a b(b bVar) {
        return new a(bVar);
    }

    public static String c(Context context, List list) {
        return d(context, list, false);
    }

    public static String d(Context context, List list, boolean z10) {
        List<String> list2;
        ResolveInfo resolveActivity;
        PackageManager packageManager = context.getPackageManager();
        if (list == null) {
            list2 = new ArrayList();
        } else {
            list2 = list;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://"));
        if (!z10 && (resolveActivity = packageManager.resolveActivity(intent, 0)) != null) {
            String str = resolveActivity.activityInfo.packageName;
            ArrayList arrayList = new ArrayList(list2.size() + 1);
            arrayList.add(str);
            if (list != null) {
                arrayList.addAll(list);
            }
            list2 = arrayList;
        }
        Intent intent2 = new Intent("android.support.customtabs.action.CustomTabsService");
        for (String str2 : list2) {
            intent2.setPackage(str2);
            if (packageManager.resolveService(intent2, 0) != null) {
                return str2;
            }
        }
        if (Build.VERSION.SDK_INT >= 30) {
            Log.w("CustomTabsClient", "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName.");
            return null;
        }
        return null;
    }

    private i f(b bVar, PendingIntent pendingIntent) {
        boolean a02;
        a.AbstractBinderC0067a b10 = b(bVar);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                a02 = this.f1741a.D0(b10, bundle);
            } else {
                a02 = this.f1741a.a0(b10);
            }
            if (!a02) {
                return null;
            }
            return new i(this.f1741a, b10, this.f1742b, pendingIntent);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public i e(b bVar) {
        return f(bVar, null);
    }

    public boolean g(long j10) {
        try {
            return this.f1741a.V(j10);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
