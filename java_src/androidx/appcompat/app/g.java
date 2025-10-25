package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.LocaleManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.app.v;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    static v.a f719a = new v.a(new v.b());

    /* renamed from: b  reason: collision with root package name */
    private static int f720b = -100;

    /* renamed from: c  reason: collision with root package name */
    private static z.i f721c = null;

    /* renamed from: d  reason: collision with root package name */
    private static z.i f722d = null;

    /* renamed from: e  reason: collision with root package name */
    private static Boolean f723e = null;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f724f = false;

    /* renamed from: g  reason: collision with root package name */
    private static final r.b f725g = new r.b();

    /* renamed from: h  reason: collision with root package name */
    private static final Object f726h = new Object();

    /* renamed from: i  reason: collision with root package name */
    private static final Object f727i = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void b(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void F(g gVar) {
        synchronized (f726h) {
            G(gVar);
        }
    }

    private static void G(g gVar) {
        synchronized (f726h) {
            Iterator it = f725g.iterator();
            while (it.hasNext()) {
                g gVar2 = (g) ((WeakReference) it.next()).get();
                if (gVar2 == gVar || gVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Q(final Context context) {
        if (!v(context)) {
            return;
        }
        if (z.a.b()) {
            if (!f724f) {
                f719a.execute(new Runnable() { // from class: androidx.appcompat.app.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.w(context);
                    }
                });
                return;
            }
            return;
        }
        synchronized (f727i) {
            z.i iVar = f721c;
            if (iVar == null) {
                if (f722d == null) {
                    f722d = z.i.b(v.b(context));
                }
                if (f722d.e()) {
                    return;
                }
                f721c = f722d;
            } else if (!iVar.equals(f722d)) {
                z.i iVar2 = f721c;
                f722d = iVar2;
                v.a(context, iVar2.g());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(g gVar) {
        synchronized (f726h) {
            G(gVar);
            f725g.add(new WeakReference(gVar));
        }
    }

    public static g h(Activity activity, e eVar) {
        return new h(activity, eVar);
    }

    public static g i(Dialog dialog, e eVar) {
        return new h(dialog, eVar);
    }

    public static z.i k() {
        if (z.a.b()) {
            Object p10 = p();
            if (p10 != null) {
                return z.i.h(b.a(p10));
            }
        } else {
            z.i iVar = f721c;
            if (iVar != null) {
                return iVar;
            }
        }
        return z.i.d();
    }

    public static int m() {
        return f720b;
    }

    static Object p() {
        Context l10;
        Iterator it = f725g.iterator();
        while (it.hasNext()) {
            g gVar = (g) ((WeakReference) it.next()).get();
            if (gVar != null && (l10 = gVar.l()) != null) {
                return l10.getSystemService(CommonUrlParts.LOCALE);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z.i r() {
        return f721c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean v(Context context) {
        if (f723e == null) {
            try {
                Bundle bundle = t.a(context).metaData;
                if (bundle != null) {
                    f723e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f723e = Boolean.FALSE;
            }
        }
        return f723e.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(Context context) {
        v.c(context);
        f724f = true;
    }

    public abstract void A(Bundle bundle);

    public abstract void B();

    public abstract void C(Bundle bundle);

    public abstract void D();

    public abstract void E();

    public abstract boolean H(int i10);

    public abstract void I(int i10);

    public abstract void J(View view);

    public abstract void K(View view, ViewGroup.LayoutParams layoutParams);

    public void L(OnBackInvokedDispatcher onBackInvokedDispatcher) {
    }

    public abstract void M(Toolbar toolbar);

    public abstract void N(int i10);

    public abstract void O(CharSequence charSequence);

    public abstract androidx.appcompat.view.b P(b.a aVar);

    public abstract void e(View view, ViewGroup.LayoutParams layoutParams);

    public void f(Context context) {
    }

    public Context g(Context context) {
        f(context);
        return context;
    }

    public abstract View j(int i10);

    public abstract Context l();

    public abstract androidx.appcompat.app.b n();

    public abstract int o();

    public abstract MenuInflater q();

    public abstract androidx.appcompat.app.a s();

    public abstract void t();

    public abstract void u();

    public abstract void x(Configuration configuration);

    public abstract void y(Bundle bundle);

    public abstract void z();
}
