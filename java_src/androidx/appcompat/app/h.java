package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.b;
import androidx.appcompat.view.f;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.f1;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.p1;
import androidx.appcompat.widget.q1;
import androidx.lifecycle.i;
import d0.c1;
import d0.h0;
import d0.p0;
import d0.t;
import d0.w0;
import d0.y0;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import u.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h extends androidx.appcompat.app.g implements g.a, LayoutInflater.Factory2 {
    private boolean A;
    ViewGroup B;
    private TextView C;
    private View D;
    private boolean E;
    private boolean F;
    boolean G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    private boolean L;
    private u[] M;
    private u N;
    private boolean O;
    private boolean P;
    private boolean Q;
    boolean R;
    private Configuration S;
    private int T;
    private int U;
    private int V;
    private boolean W;
    private q X;
    private q Y;
    boolean Z;

    /* renamed from: a0  reason: collision with root package name */
    int f730a0;

    /* renamed from: b0  reason: collision with root package name */
    private final Runnable f731b0;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f732c0;

    /* renamed from: d0  reason: collision with root package name */
    private Rect f733d0;

    /* renamed from: e0  reason: collision with root package name */
    private Rect f734e0;

    /* renamed from: f0  reason: collision with root package name */
    private androidx.appcompat.app.s f735f0;

    /* renamed from: j  reason: collision with root package name */
    final Object f736j;

    /* renamed from: k  reason: collision with root package name */
    final Context f737k;

    /* renamed from: l  reason: collision with root package name */
    Window f738l;

    /* renamed from: m  reason: collision with root package name */
    private o f739m;

    /* renamed from: n  reason: collision with root package name */
    final androidx.appcompat.app.e f740n;

    /* renamed from: o  reason: collision with root package name */
    androidx.appcompat.app.a f741o;

    /* renamed from: p  reason: collision with root package name */
    MenuInflater f742p;

    /* renamed from: q  reason: collision with root package name */
    private CharSequence f743q;

    /* renamed from: r  reason: collision with root package name */
    private i0 f744r;

    /* renamed from: s  reason: collision with root package name */
    private C0014h f745s;

    /* renamed from: t  reason: collision with root package name */
    private v f746t;

    /* renamed from: u  reason: collision with root package name */
    androidx.appcompat.view.b f747u;

    /* renamed from: v  reason: collision with root package name */
    ActionBarContextView f748v;

    /* renamed from: v0  reason: collision with root package name */
    private w f749v0;

    /* renamed from: w  reason: collision with root package name */
    PopupWindow f750w;

    /* renamed from: w0  reason: collision with root package name */
    private OnBackInvokedDispatcher f751w0;

    /* renamed from: x  reason: collision with root package name */
    Runnable f752x;

    /* renamed from: x0  reason: collision with root package name */
    private OnBackInvokedCallback f753x0;

    /* renamed from: y  reason: collision with root package name */
    w0 f754y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f755z;

    /* renamed from: y0  reason: collision with root package name */
    private static final r.i f728y0 = new r.i();

    /* renamed from: z0  reason: collision with root package name */
    private static final boolean f729z0 = false;
    private static final int[] A0 = {16842836};
    private static final boolean B0 = !"robolectric".equals(Build.FINGERPRINT);
    private static final boolean C0 = true;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            if ((hVar.f730a0 & 1) != 0) {
                hVar.i0(0);
            }
            h hVar2 = h.this;
            if ((hVar2.f730a0 & Base64Utils.IO_BUFFER_SIZE) != 0) {
                hVar2.i0(108);
            }
            h hVar3 = h.this;
            hVar3.Z = false;
            hVar3.f730a0 = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements h0 {
        b() {
        }

        @Override // d0.h0
        public c1 a(View view, c1 c1Var) {
            int k10 = c1Var.k();
            int e12 = h.this.e1(c1Var, null);
            if (k10 != e12) {
                c1Var = c1Var.p(c1Var.i(), e12, c1Var.j(), c1Var.h());
            }
            return p0.L(view, c1Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements ContentFrameLayout.a {
        c() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            h.this.g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* loaded from: classes.dex */
        class a extends y0 {
            a() {
            }

            @Override // d0.x0
            public void b(View view) {
                h.this.f748v.setAlpha(1.0f);
                h.this.f754y.h(null);
                h.this.f754y = null;
            }

            @Override // d0.y0, d0.x0
            public void c(View view) {
                h.this.f748v.setVisibility(0);
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            hVar.f750w.showAtLocation(hVar.f748v, 55, 0, 0);
            h.this.j0();
            if (h.this.U0()) {
                h.this.f748v.setAlpha(0.0f);
                h hVar2 = h.this;
                hVar2.f754y = p0.c(hVar2.f748v).b(1.0f);
                h.this.f754y.h(new a());
                return;
            }
            h.this.f748v.setAlpha(1.0f);
            h.this.f748v.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e extends y0 {
        e() {
        }

        @Override // d0.x0
        public void b(View view) {
            h.this.f748v.setAlpha(1.0f);
            h.this.f754y.h(null);
            h.this.f754y = null;
        }

        @Override // d0.y0, d0.x0
        public void c(View view) {
            h.this.f748v.setVisibility(0);
            if (h.this.f748v.getParent() instanceof View) {
                p0.R((View) h.this.f748v.getParent());
            }
        }
    }

    /* loaded from: classes.dex */
    private class f implements androidx.appcompat.app.b {
        f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface g {
        boolean a(int i10);

        View onCreatePanelView(int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class C0014h implements m.a {
        C0014h() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
            h.this.Z(gVar);
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            Window.Callback v02 = h.this.v0();
            if (v02 != null) {
                v02.onMenuOpened(108, gVar);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements b.a {

        /* renamed from: a  reason: collision with root package name */
        private b.a f764a;

        /* loaded from: classes.dex */
        class a extends y0 {
            a() {
            }

            @Override // d0.x0
            public void b(View view) {
                h.this.f748v.setVisibility(8);
                h hVar = h.this;
                PopupWindow popupWindow = hVar.f750w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (hVar.f748v.getParent() instanceof View) {
                    p0.R((View) h.this.f748v.getParent());
                }
                h.this.f748v.k();
                h.this.f754y.h(null);
                h hVar2 = h.this;
                hVar2.f754y = null;
                p0.R(hVar2.B);
            }
        }

        public i(b.a aVar) {
            this.f764a = aVar;
        }

        @Override // androidx.appcompat.view.b.a
        public void a(androidx.appcompat.view.b bVar) {
            this.f764a.a(bVar);
            h hVar = h.this;
            if (hVar.f750w != null) {
                hVar.f738l.getDecorView().removeCallbacks(h.this.f752x);
            }
            h hVar2 = h.this;
            if (hVar2.f748v != null) {
                hVar2.j0();
                h hVar3 = h.this;
                hVar3.f754y = p0.c(hVar3.f748v).b(0.0f);
                h.this.f754y.h(new a());
            }
            h hVar4 = h.this;
            androidx.appcompat.app.e eVar = hVar4.f740n;
            if (eVar != null) {
                eVar.onSupportActionModeFinished(hVar4.f747u);
            }
            h hVar5 = h.this;
            hVar5.f747u = null;
            p0.R(hVar5.B);
            h.this.c1();
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f764a.b(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean c(androidx.appcompat.view.b bVar, Menu menu) {
            p0.R(h.this.B);
            return this.f764a.c(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean d(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f764a.d(bVar, menuItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class j {
        static Context a(Context context, Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        static void b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10 = configuration.densityDpi;
            int i11 = configuration2.densityDpi;
            if (i10 != i11) {
                configuration3.densityDpi = i11;
            }
        }

        static void c(Configuration configuration, Locale locale) {
            configuration.setLayoutDirection(locale);
        }

        static void d(Configuration configuration, Locale locale) {
            configuration.setLocale(locale);
        }
    }

    /* loaded from: classes.dex */
    static class k {
        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        static String b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class l {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }

        static z.i b(Configuration configuration) {
            return z.i.b(configuration.getLocales().toLanguageTags());
        }

        public static void c(z.i iVar) {
            LocaleList.setDefault(LocaleList.forLanguageTags(iVar.g()));
        }

        static void d(Configuration configuration, z.i iVar) {
            configuration.setLocales(LocaleList.forLanguageTags(iVar.g()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class m {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            int i17;
            i10 = configuration.colorMode;
            int i18 = i10 & 3;
            i11 = configuration2.colorMode;
            if (i18 != (i11 & 3)) {
                i16 = configuration3.colorMode;
                i17 = configuration2.colorMode;
                configuration3.colorMode = i16 | (i17 & 3);
            }
            i12 = configuration.colorMode;
            int i19 = i12 & 12;
            i13 = configuration2.colorMode;
            if (i19 != (i13 & 12)) {
                i14 = configuration3.colorMode;
                i15 = configuration2.colorMode;
                configuration3.colorMode = i14 | (i15 & 12);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class n {
        static OnBackInvokedDispatcher a(Activity activity) {
            OnBackInvokedDispatcher onBackInvokedDispatcher;
            onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
            return onBackInvokedDispatcher;
        }

        static OnBackInvokedCallback b(Object obj, final h hVar) {
            Objects.requireNonNull(hVar);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: androidx.appcompat.app.p
                public final void onBackInvoked() {
                    h.this.D0();
                }
            };
            androidx.appcompat.app.m.a(obj).registerOnBackInvokedCallback(1000000, onBackInvokedCallback);
            return onBackInvokedCallback;
        }

        static void c(Object obj, Object obj2) {
            androidx.appcompat.app.m.a(obj).unregisterOnBackInvokedCallback(androidx.appcompat.app.l.a(obj2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class o extends WindowCallbackWrapper {

        /* renamed from: a  reason: collision with root package name */
        private g f767a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f768b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f769c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f770d;

        o(Window.Callback callback) {
            super(callback);
        }

        public boolean b(Window.Callback callback, KeyEvent keyEvent) {
            try {
                this.f769c = true;
                return callback.dispatchKeyEvent(keyEvent);
            } finally {
                this.f769c = false;
            }
        }

        public void c(Window.Callback callback) {
            try {
                this.f768b = true;
                callback.onContentChanged();
            } finally {
                this.f768b = false;
            }
        }

        public void d(Window.Callback callback, int i10, Menu menu) {
            try {
                this.f770d = true;
                callback.onPanelClosed(i10, menu);
            } finally {
                this.f770d = false;
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (this.f769c) {
                return a().dispatchKeyEvent(keyEvent);
            }
            if (!h.this.h0(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (!super.dispatchKeyShortcutEvent(keyEvent) && !h.this.G0(keyEvent.getKeyCode(), keyEvent)) {
                return false;
            }
            return true;
        }

        void e(g gVar) {
            this.f767a = gVar;
        }

        final ActionMode f(ActionMode.Callback callback) {
            f.a aVar = new f.a(h.this.f737k, callback);
            androidx.appcompat.view.b P = h.this.P(aVar);
            if (P != null) {
                return aVar.e(P);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
            if (this.f768b) {
                a().onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i10, Menu menu) {
            if (i10 == 0 && !(menu instanceof androidx.appcompat.view.menu.g)) {
                return false;
            }
            return super.onCreatePanelMenu(i10, menu);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public View onCreatePanelView(int i10) {
            View onCreatePanelView;
            g gVar = this.f767a;
            if (gVar != null && (onCreatePanelView = gVar.onCreatePanelView(i10)) != null) {
                return onCreatePanelView;
            }
            return super.onCreatePanelView(i10);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onMenuOpened(int i10, Menu menu) {
            super.onMenuOpened(i10, menu);
            h.this.J0(i10);
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onPanelClosed(int i10, Menu menu) {
            if (this.f770d) {
                a().onPanelClosed(i10, menu);
                return;
            }
            super.onPanelClosed(i10, menu);
            h.this.K0(i10);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i10, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar;
            if (menu instanceof androidx.appcompat.view.menu.g) {
                gVar = (androidx.appcompat.view.menu.g) menu;
            } else {
                gVar = null;
            }
            if (i10 == 0 && gVar == null) {
                return false;
            }
            boolean z10 = true;
            if (gVar != null) {
                gVar.b0(true);
            }
            g gVar2 = this.f767a;
            if (gVar2 == null || !gVar2.a(i10)) {
                z10 = false;
            }
            if (!z10) {
                z10 = super.onPreparePanel(i10, view, menu);
            }
            if (gVar != null) {
                gVar.b0(false);
            }
            return z10;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List list, Menu menu, int i10) {
            androidx.appcompat.view.menu.g gVar;
            u t02 = h.this.t0(0, true);
            if (t02 != null && (gVar = t02.f789j) != null) {
                super.onProvideKeyboardShortcuts(list, gVar, i10);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i10);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
            if (h.this.B0() && i10 == 0) {
                return f(callback);
            }
            return super.onWindowStartingActionMode(callback, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class p extends q {

        /* renamed from: c  reason: collision with root package name */
        private final PowerManager f772c;

        p(Context context) {
            super();
            this.f772c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.h.q
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.h.q
        public int c() {
            if (k.a(this.f772c)) {
                return 2;
            }
            return 1;
        }

        @Override // androidx.appcompat.app.h.q
        public void d() {
            h.this.T();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class q {

        /* renamed from: a  reason: collision with root package name */
        private BroadcastReceiver f774a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                q.this.d();
            }
        }

        q() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f774a;
            if (broadcastReceiver != null) {
                try {
                    h.this.f737k.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f774a = null;
            }
        }

        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter b10 = b();
            if (b10 != null && b10.countActions() != 0) {
                if (this.f774a == null) {
                    this.f774a = new a();
                }
                h.this.f737k.registerReceiver(this.f774a, b10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class r extends q {

        /* renamed from: c  reason: collision with root package name */
        private final b0 f777c;

        r(b0 b0Var) {
            super();
            this.f777c = b0Var;
        }

        @Override // androidx.appcompat.app.h.q
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.h.q
        public int c() {
            if (this.f777c.d()) {
                return 2;
            }
            return 1;
        }

        @Override // androidx.appcompat.app.h.q
        public void d() {
            h.this.T();
        }
    }

    /* loaded from: classes.dex */
    private static class s {
        static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class t extends ContentFrameLayout {
        public t(Context context) {
            super(context);
        }

        private boolean b(int i10, int i11) {
            if (i10 >= -5 && i11 >= -5 && i10 <= getWidth() + 5 && i11 <= getHeight() + 5) {
                return false;
            }
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (!h.this.h0(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && b((int) motionEvent.getX(), (int) motionEvent.getY())) {
                h.this.b0(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i10) {
            setBackgroundDrawable(i.a.b(getContext(), i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class u {

        /* renamed from: a  reason: collision with root package name */
        int f780a;

        /* renamed from: b  reason: collision with root package name */
        int f781b;

        /* renamed from: c  reason: collision with root package name */
        int f782c;

        /* renamed from: d  reason: collision with root package name */
        int f783d;

        /* renamed from: e  reason: collision with root package name */
        int f784e;

        /* renamed from: f  reason: collision with root package name */
        int f785f;

        /* renamed from: g  reason: collision with root package name */
        ViewGroup f786g;

        /* renamed from: h  reason: collision with root package name */
        View f787h;

        /* renamed from: i  reason: collision with root package name */
        View f788i;

        /* renamed from: j  reason: collision with root package name */
        androidx.appcompat.view.menu.g f789j;

        /* renamed from: k  reason: collision with root package name */
        androidx.appcompat.view.menu.e f790k;

        /* renamed from: l  reason: collision with root package name */
        Context f791l;

        /* renamed from: m  reason: collision with root package name */
        boolean f792m;

        /* renamed from: n  reason: collision with root package name */
        boolean f793n;

        /* renamed from: o  reason: collision with root package name */
        boolean f794o;

        /* renamed from: p  reason: collision with root package name */
        public boolean f795p;

        /* renamed from: q  reason: collision with root package name */
        boolean f796q = false;

        /* renamed from: r  reason: collision with root package name */
        boolean f797r;

        /* renamed from: s  reason: collision with root package name */
        Bundle f798s;

        u(int i10) {
            this.f780a = i10;
        }

        androidx.appcompat.view.menu.n a(m.a aVar) {
            if (this.f789j == null) {
                return null;
            }
            if (this.f790k == null) {
                androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(this.f791l, h.g.f16550j);
                this.f790k = eVar;
                eVar.g(aVar);
                this.f789j.b(this.f790k);
            }
            return this.f790k.j(this.f786g);
        }

        public boolean b() {
            if (this.f787h == null) {
                return false;
            }
            if (this.f788i == null && this.f790k.a().getCount() <= 0) {
                return false;
            }
            return true;
        }

        void c(androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.e eVar;
            androidx.appcompat.view.menu.g gVar2 = this.f789j;
            if (gVar == gVar2) {
                return;
            }
            if (gVar2 != null) {
                gVar2.O(this.f790k);
            }
            this.f789j = gVar;
            if (gVar != null && (eVar = this.f790k) != null) {
                gVar.b(eVar);
            }
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(h.a.f16441a, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                newTheme.applyStyle(i10, true);
            }
            newTheme.resolveAttribute(h.a.B, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                newTheme.applyStyle(i11, true);
            } else {
                newTheme.applyStyle(h.i.f16576b, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.f791l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(h.j.f16701y0);
            this.f781b = obtainStyledAttributes.getResourceId(h.j.B0, 0);
            this.f785f = obtainStyledAttributes.getResourceId(h.j.A0, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class v implements m.a {
        v() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
            boolean z11;
            androidx.appcompat.view.menu.g D = gVar.D();
            if (D != gVar) {
                z11 = true;
            } else {
                z11 = false;
            }
            h hVar = h.this;
            if (z11) {
                gVar = D;
            }
            u m02 = hVar.m0(gVar);
            if (m02 != null) {
                if (z11) {
                    h.this.Y(m02.f780a, m02, D);
                    h.this.c0(m02, true);
                    return;
                }
                h.this.c0(m02, z10);
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            Window.Callback v02;
            if (gVar == gVar.D()) {
                h hVar = h.this;
                if (hVar.G && (v02 = hVar.v0()) != null && !h.this.R) {
                    v02.onMenuOpened(108, gVar);
                    return true;
                }
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Activity activity, androidx.appcompat.app.e eVar) {
        this(activity, null, eVar, activity);
    }

    private void A0(int i10) {
        this.f730a0 = (1 << i10) | this.f730a0;
        if (!this.Z) {
            p0.P(this.f738l.getDecorView(), this.f731b0);
            this.Z = true;
        }
    }

    private boolean F0(int i10, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            u t02 = t0(i10, true);
            if (!t02.f794o) {
                return P0(t02, keyEvent);
            }
            return false;
        }
        return false;
    }

    private boolean I0(int i10, KeyEvent keyEvent) {
        boolean z10;
        i0 i0Var;
        if (this.f747u != null) {
            return false;
        }
        boolean z11 = true;
        u t02 = t0(i10, true);
        if (i10 == 0 && (i0Var = this.f744r) != null && i0Var.d() && !ViewConfiguration.get(this.f737k).hasPermanentMenuKey()) {
            if (!this.f744r.b()) {
                if (!this.R && P0(t02, keyEvent)) {
                    z11 = this.f744r.h();
                }
                z11 = false;
            } else {
                z11 = this.f744r.g();
            }
        } else {
            boolean z12 = t02.f794o;
            if (!z12 && !t02.f793n) {
                if (t02.f792m) {
                    if (t02.f797r) {
                        t02.f792m = false;
                        z10 = P0(t02, keyEvent);
                    } else {
                        z10 = true;
                    }
                    if (z10) {
                        M0(t02, keyEvent);
                    }
                }
                z11 = false;
            } else {
                c0(t02, true);
                z11 = z12;
            }
        }
        if (z11) {
            AudioManager audioManager = (AudioManager) this.f737k.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void M0(androidx.appcompat.app.h.u r13, android.view.KeyEvent r14) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.M0(androidx.appcompat.app.h$u, android.view.KeyEvent):void");
    }

    private boolean O0(u uVar, int i10, KeyEvent keyEvent, int i11) {
        androidx.appcompat.view.menu.g gVar;
        boolean z10 = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((uVar.f792m || P0(uVar, keyEvent)) && (gVar = uVar.f789j) != null) {
            z10 = gVar.performShortcut(i10, keyEvent, i11);
        }
        if (z10 && (i11 & 1) == 0 && this.f744r == null) {
            c0(uVar, true);
        }
        return z10;
    }

    private boolean P0(u uVar, KeyEvent keyEvent) {
        boolean z10;
        i0 i0Var;
        int i10;
        boolean z11;
        i0 i0Var2;
        i0 i0Var3;
        if (this.R) {
            return false;
        }
        if (uVar.f792m) {
            return true;
        }
        u uVar2 = this.N;
        if (uVar2 != null && uVar2 != uVar) {
            c0(uVar2, false);
        }
        Window.Callback v02 = v0();
        if (v02 != null) {
            uVar.f788i = v02.onCreatePanelView(uVar.f780a);
        }
        int i11 = uVar.f780a;
        if (i11 != 0 && i11 != 108) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10 && (i0Var3 = this.f744r) != null) {
            i0Var3.c();
        }
        if (uVar.f788i == null && (!z10 || !(N0() instanceof z))) {
            androidx.appcompat.view.menu.g gVar = uVar.f789j;
            if (gVar == null || uVar.f797r) {
                if (gVar == null && (!z0(uVar) || uVar.f789j == null)) {
                    return false;
                }
                if (z10 && this.f744r != null) {
                    if (this.f745s == null) {
                        this.f745s = new C0014h();
                    }
                    this.f744r.a(uVar.f789j, this.f745s);
                }
                uVar.f789j.e0();
                if (!v02.onCreatePanelMenu(uVar.f780a, uVar.f789j)) {
                    uVar.c(null);
                    if (z10 && (i0Var = this.f744r) != null) {
                        i0Var.a(null, this.f745s);
                    }
                    return false;
                }
                uVar.f797r = false;
            }
            uVar.f789j.e0();
            Bundle bundle = uVar.f798s;
            if (bundle != null) {
                uVar.f789j.P(bundle);
                uVar.f798s = null;
            }
            if (!v02.onPreparePanel(0, uVar.f788i, uVar.f789j)) {
                if (z10 && (i0Var2 = this.f744r) != null) {
                    i0Var2.a(null, this.f745s);
                }
                uVar.f789j.d0();
                return false;
            }
            if (keyEvent != null) {
                i10 = keyEvent.getDeviceId();
            } else {
                i10 = -1;
            }
            if (KeyCharacterMap.load(i10).getKeyboardType() != 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            uVar.f795p = z11;
            uVar.f789j.setQwertyMode(z11);
            uVar.f789j.d0();
        }
        uVar.f792m = true;
        uVar.f793n = false;
        this.N = uVar;
        return true;
    }

    private void Q0(boolean z10) {
        i0 i0Var = this.f744r;
        if (i0Var != null && i0Var.d() && (!ViewConfiguration.get(this.f737k).hasPermanentMenuKey() || this.f744r.f())) {
            Window.Callback v02 = v0();
            if (this.f744r.b() && z10) {
                this.f744r.g();
                if (!this.R) {
                    v02.onPanelClosed(108, t0(0, true).f789j);
                    return;
                }
                return;
            } else if (v02 != null && !this.R) {
                if (this.Z && (this.f730a0 & 1) != 0) {
                    this.f738l.getDecorView().removeCallbacks(this.f731b0);
                    this.f731b0.run();
                }
                u t02 = t0(0, true);
                androidx.appcompat.view.menu.g gVar = t02.f789j;
                if (gVar != null && !t02.f797r && v02.onPreparePanel(0, t02.f788i, gVar)) {
                    v02.onMenuOpened(108, t02.f789j);
                    this.f744r.h();
                    return;
                }
                return;
            } else {
                return;
            }
        }
        u t03 = t0(0, true);
        t03.f796q = true;
        c0(t03, false);
        M0(t03, null);
    }

    private boolean R(boolean z10) {
        return S(z10, true);
    }

    private int R0(int i10) {
        if (i10 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        } else if (i10 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        } else {
            return i10;
        }
    }

    private boolean S(boolean z10, boolean z11) {
        z.i iVar;
        if (this.R) {
            return false;
        }
        int X = X();
        int C02 = C0(this.f737k, X);
        if (Build.VERSION.SDK_INT < 33) {
            iVar = W(this.f737k);
        } else {
            iVar = null;
        }
        if (!z11 && iVar != null) {
            iVar = s0(this.f737k.getResources().getConfiguration());
        }
        boolean b12 = b1(C02, iVar, z10);
        if (X == 0) {
            r0(this.f737k).e();
        } else {
            q qVar = this.X;
            if (qVar != null) {
                qVar.a();
            }
        }
        if (X == 3) {
            q0(this.f737k).e();
        } else {
            q qVar2 = this.Y;
            if (qVar2 != null) {
                qVar2.a();
            }
        }
        return b12;
    }

    private void U() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.B.findViewById(16908290);
        View decorView = this.f738l.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f737k.obtainStyledAttributes(h.j.f16701y0);
        obtainStyledAttributes.getValue(h.j.K0, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(h.j.L0, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(h.j.I0)) {
            obtainStyledAttributes.getValue(h.j.I0, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(h.j.J0)) {
            obtainStyledAttributes.getValue(h.j.J0, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(h.j.G0)) {
            obtainStyledAttributes.getValue(h.j.G0, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(h.j.H0)) {
            obtainStyledAttributes.getValue(h.j.H0, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private void V(Window window) {
        if (this.f738l == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof o)) {
                o oVar = new o(callback);
                this.f739m = oVar;
                window.setCallback(oVar);
                f1 t10 = f1.t(this.f737k, null, A0);
                Drawable g10 = t10.g(0);
                if (g10 != null) {
                    window.setBackgroundDrawable(g10);
                }
                t10.v();
                this.f738l = window;
                if (Build.VERSION.SDK_INT >= 33 && this.f751w0 == null) {
                    L(null);
                    return;
                }
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    private boolean V0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f738l.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || p0.E((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private int X() {
        int i10 = this.T;
        if (i10 == -100) {
            return androidx.appcompat.app.g.m();
        }
        return i10;
    }

    private void Y0() {
        if (!this.A) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    private androidx.appcompat.app.d Z0() {
        for (Context context = this.f737k; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof androidx.appcompat.app.d) {
                return (androidx.appcompat.app.d) context;
            }
            if (!(context instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private void a0() {
        q qVar = this.X;
        if (qVar != null) {
            qVar.a();
        }
        q qVar2 = this.Y;
        if (qVar2 != null) {
            qVar2.a();
        }
    }

    private void a1(Configuration configuration) {
        Activity activity = (Activity) this.f736j;
        if (activity instanceof androidx.lifecycle.m) {
            if (((androidx.lifecycle.m) activity).getLifecycle().b().b(i.b.CREATED)) {
                activity.onConfigurationChanged(configuration);
            }
        } else if (this.Q && !this.R) {
            activity.onConfigurationChanged(configuration);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b1(int r9, z.i r10, boolean r11) {
        /*
            r8 = this;
            android.content.Context r1 = r8.f737k
            r4 = 0
            r5 = 0
            r0 = r8
            r2 = r9
            r3 = r10
            android.content.res.Configuration r0 = r0.d0(r1, r2, r3, r4, r5)
            android.content.Context r1 = r8.f737k
            int r1 = r8.p0(r1)
            android.content.res.Configuration r2 = r8.S
            if (r2 != 0) goto L1f
            android.content.Context r2 = r8.f737k
            android.content.res.Resources r2 = r2.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
        L1f:
            int r3 = r2.uiMode
            r3 = r3 & 48
            int r4 = r0.uiMode
            r4 = r4 & 48
            z.i r2 = r8.s0(r2)
            r5 = 0
            if (r10 != 0) goto L30
            r0 = r5
            goto L34
        L30:
            z.i r0 = r8.s0(r0)
        L34:
            r6 = 0
            if (r3 == r4) goto L3a
            r3 = 512(0x200, float:7.175E-43)
            goto L3b
        L3a:
            r3 = r6
        L3b:
            if (r0 == 0) goto L47
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L47
            r2 = r3 | 4
            r3 = r2 | 8192(0x2000, float:1.14794E-41)
        L47:
            int r2 = ~r1
            r2 = r2 & r3
            r7 = 1
            if (r2 == 0) goto L71
            if (r11 == 0) goto L71
            boolean r11 = r8.P
            if (r11 == 0) goto L71
            boolean r11 = androidx.appcompat.app.h.B0
            if (r11 != 0) goto L5a
            boolean r11 = r8.Q
            if (r11 == 0) goto L71
        L5a:
            java.lang.Object r11 = r8.f736j
            boolean r2 = r11 instanceof android.app.Activity
            if (r2 == 0) goto L71
            android.app.Activity r11 = (android.app.Activity) r11
            boolean r11 = r11.isChild()
            if (r11 != 0) goto L71
            java.lang.Object r11 = r8.f736j
            android.app.Activity r11 = (android.app.Activity) r11
            androidx.core.app.b.u(r11)
            r11 = r7
            goto L72
        L71:
            r11 = r6
        L72:
            if (r11 != 0) goto L7f
            if (r3 == 0) goto L7f
            r11 = r3 & r1
            if (r11 != r3) goto L7b
            r6 = r7
        L7b:
            r8.d1(r4, r0, r6, r5)
            goto L80
        L7f:
            r7 = r11
        L80:
            if (r7 == 0) goto L9c
            java.lang.Object r11 = r8.f736j
            boolean r1 = r11 instanceof androidx.appcompat.app.d
            if (r1 == 0) goto L9c
            r1 = r3 & 512(0x200, float:7.175E-43)
            if (r1 == 0) goto L91
            androidx.appcompat.app.d r11 = (androidx.appcompat.app.d) r11
            r11.onNightModeChanged(r9)
        L91:
            r9 = r3 & 4
            if (r9 == 0) goto L9c
            java.lang.Object r9 = r8.f736j
            androidx.appcompat.app.d r9 = (androidx.appcompat.app.d) r9
            r9.onLocalesChanged(r10)
        L9c:
            if (r7 == 0) goto Lb1
            if (r0 == 0) goto Lb1
            android.content.Context r9 = r8.f737k
            android.content.res.Resources r9 = r9.getResources()
            android.content.res.Configuration r9 = r9.getConfiguration()
            z.i r9 = r8.s0(r9)
            r8.T0(r9)
        Lb1:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.b1(int, z.i, boolean):boolean");
    }

    private Configuration d0(Context context, int i10, z.i iVar, Configuration configuration, boolean z10) {
        int i11;
        if (i10 != 1) {
            if (i10 != 2) {
                if (z10) {
                    i11 = 0;
                } else {
                    i11 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
                }
            } else {
                i11 = 32;
            }
        } else {
            i11 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        if (iVar != null) {
            S0(configuration2, iVar);
        }
        return configuration2;
    }

    private void d1(int i10, z.i iVar, boolean z10, Configuration configuration) {
        Resources resources = this.f737k.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i10 | (resources.getConfiguration().uiMode & (-49));
        if (iVar != null) {
            S0(configuration2, iVar);
        }
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            y.a(resources);
        }
        int i11 = this.U;
        if (i11 != 0) {
            this.f737k.setTheme(i11);
            this.f737k.getTheme().applyStyle(this.U, true);
        }
        if (z10 && (this.f736j instanceof Activity)) {
            a1(configuration2);
        }
    }

    private ViewGroup e0() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.f737k.obtainStyledAttributes(h.j.f16701y0);
        if (obtainStyledAttributes.hasValue(h.j.D0)) {
            if (obtainStyledAttributes.getBoolean(h.j.M0, false)) {
                H(1);
            } else if (obtainStyledAttributes.getBoolean(h.j.D0, false)) {
                H(108);
            }
            if (obtainStyledAttributes.getBoolean(h.j.E0, false)) {
                H(109);
            }
            if (obtainStyledAttributes.getBoolean(h.j.F0, false)) {
                H(10);
            }
            this.J = obtainStyledAttributes.getBoolean(h.j.f16706z0, false);
            obtainStyledAttributes.recycle();
            l0();
            this.f738l.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f737k);
            if (!this.K) {
                if (this.J) {
                    viewGroup = (ViewGroup) from.inflate(h.g.f16546f, (ViewGroup) null);
                    this.H = false;
                    this.G = false;
                } else if (this.G) {
                    TypedValue typedValue = new TypedValue();
                    this.f737k.getTheme().resolveAttribute(h.a.f16444d, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        context = new androidx.appcompat.view.d(this.f737k, typedValue.resourceId);
                    } else {
                        context = this.f737k;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(h.g.f16556p, (ViewGroup) null);
                    i0 i0Var = (i0) viewGroup.findViewById(h.f.f16530p);
                    this.f744r = i0Var;
                    i0Var.setWindowCallback(v0());
                    if (this.H) {
                        this.f744r.i(109);
                    }
                    if (this.E) {
                        this.f744r.i(2);
                    }
                    if (this.F) {
                        this.f744r.i(5);
                    }
                } else {
                    viewGroup = null;
                }
            } else {
                viewGroup = this.I ? (ViewGroup) from.inflate(h.g.f16555o, (ViewGroup) null) : (ViewGroup) from.inflate(h.g.f16554n, (ViewGroup) null);
            }
            if (viewGroup != null) {
                p0.g0(viewGroup, new b());
                if (this.f744r == null) {
                    this.C = (TextView) viewGroup.findViewById(h.f.M);
                }
                q1.c(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(h.f.f16516b);
                ViewGroup viewGroup2 = (ViewGroup) this.f738l.findViewById(16908290);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(16908290);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground(null);
                    }
                }
                this.f738l.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new c());
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.G + ", windowActionBarOverlay: " + this.H + ", android:windowIsFloating: " + this.J + ", windowActionModeOverlay: " + this.I + ", windowNoTitle: " + this.K + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    private void f1(View view) {
        boolean z10;
        int c10;
        if ((p0.A(view) & 8192) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            c10 = androidx.core.content.a.c(this.f737k, h.c.f16469b);
        } else {
            c10 = androidx.core.content.a.c(this.f737k, h.c.f16468a);
        }
        view.setBackgroundColor(c10);
    }

    private void k0() {
        if (!this.A) {
            this.B = e0();
            CharSequence u02 = u0();
            if (!TextUtils.isEmpty(u02)) {
                i0 i0Var = this.f744r;
                if (i0Var != null) {
                    i0Var.setWindowTitle(u02);
                } else if (N0() != null) {
                    N0().y(u02);
                } else {
                    TextView textView = this.C;
                    if (textView != null) {
                        textView.setText(u02);
                    }
                }
            }
            U();
            L0(this.B);
            this.A = true;
            u t02 = t0(0, false);
            if (!this.R) {
                if (t02 == null || t02.f789j == null) {
                    A0(108);
                }
            }
        }
    }

    private void l0() {
        if (this.f738l == null) {
            Object obj = this.f736j;
            if (obj instanceof Activity) {
                V(((Activity) obj).getWindow());
            }
        }
        if (this.f738l != null) {
            return;
        }
        throw new IllegalStateException("We have not been given a Window");
    }

    private static Configuration n0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f10 = configuration.fontScale;
            float f11 = configuration2.fontScale;
            if (f10 != f11) {
                configuration3.fontScale = f11;
            }
            int i10 = configuration.mcc;
            int i11 = configuration2.mcc;
            if (i10 != i11) {
                configuration3.mcc = i11;
            }
            int i12 = configuration.mnc;
            int i13 = configuration2.mnc;
            if (i12 != i13) {
                configuration3.mnc = i13;
            }
            int i14 = Build.VERSION.SDK_INT;
            l.a(configuration, configuration2, configuration3);
            int i15 = configuration.touchscreen;
            int i16 = configuration2.touchscreen;
            if (i15 != i16) {
                configuration3.touchscreen = i16;
            }
            int i17 = configuration.keyboard;
            int i18 = configuration2.keyboard;
            if (i17 != i18) {
                configuration3.keyboard = i18;
            }
            int i19 = configuration.keyboardHidden;
            int i20 = configuration2.keyboardHidden;
            if (i19 != i20) {
                configuration3.keyboardHidden = i20;
            }
            int i21 = configuration.navigation;
            int i22 = configuration2.navigation;
            if (i21 != i22) {
                configuration3.navigation = i22;
            }
            int i23 = configuration.navigationHidden;
            int i24 = configuration2.navigationHidden;
            if (i23 != i24) {
                configuration3.navigationHidden = i24;
            }
            int i25 = configuration.orientation;
            int i26 = configuration2.orientation;
            if (i25 != i26) {
                configuration3.orientation = i26;
            }
            int i27 = configuration.screenLayout & 15;
            int i28 = configuration2.screenLayout;
            if (i27 != (i28 & 15)) {
                configuration3.screenLayout |= i28 & 15;
            }
            int i29 = configuration.screenLayout & 192;
            int i30 = configuration2.screenLayout;
            if (i29 != (i30 & 192)) {
                configuration3.screenLayout |= i30 & 192;
            }
            int i31 = configuration.screenLayout & 48;
            int i32 = configuration2.screenLayout;
            if (i31 != (i32 & 48)) {
                configuration3.screenLayout |= i32 & 48;
            }
            int i33 = configuration.screenLayout & 768;
            int i34 = configuration2.screenLayout;
            if (i33 != (i34 & 768)) {
                configuration3.screenLayout |= i34 & 768;
            }
            if (i14 >= 26) {
                m.a(configuration, configuration2, configuration3);
            }
            int i35 = configuration.uiMode & 15;
            int i36 = configuration2.uiMode;
            if (i35 != (i36 & 15)) {
                configuration3.uiMode |= i36 & 15;
            }
            int i37 = configuration.uiMode & 48;
            int i38 = configuration2.uiMode;
            if (i37 != (i38 & 48)) {
                configuration3.uiMode |= i38 & 48;
            }
            int i39 = configuration.screenWidthDp;
            int i40 = configuration2.screenWidthDp;
            if (i39 != i40) {
                configuration3.screenWidthDp = i40;
            }
            int i41 = configuration.screenHeightDp;
            int i42 = configuration2.screenHeightDp;
            if (i41 != i42) {
                configuration3.screenHeightDp = i42;
            }
            int i43 = configuration.smallestScreenWidthDp;
            int i44 = configuration2.smallestScreenWidthDp;
            if (i43 != i44) {
                configuration3.smallestScreenWidthDp = i44;
            }
            j.b(configuration, configuration2, configuration3);
        }
        return configuration3;
    }

    private int p0(Context context) {
        int i10;
        if (!this.W && (this.f736j instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return 0;
            }
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    i10 = 269221888;
                } else {
                    i10 = 786432;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.f736j.getClass()), i10);
                if (activityInfo != null) {
                    this.V = activityInfo.configChanges;
                }
            } catch (PackageManager.NameNotFoundException e10) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e10);
                this.V = 0;
            }
        }
        this.W = true;
        return this.V;
    }

    private q q0(Context context) {
        if (this.Y == null) {
            this.Y = new p(context);
        }
        return this.Y;
    }

    private q r0(Context context) {
        if (this.X == null) {
            this.X = new r(b0.a(context));
        }
        return this.X;
    }

    private void w0() {
        k0();
        if (this.G && this.f741o == null) {
            Object obj = this.f736j;
            if (obj instanceof Activity) {
                this.f741o = new c0((Activity) this.f736j, this.H);
            } else if (obj instanceof Dialog) {
                this.f741o = new c0((Dialog) this.f736j);
            }
            androidx.appcompat.app.a aVar = this.f741o;
            if (aVar != null) {
                aVar.u(this.f732c0);
            }
        }
    }

    private boolean x0(u uVar) {
        View view = uVar.f788i;
        if (view != null) {
            uVar.f787h = view;
            return true;
        } else if (uVar.f789j == null) {
            return false;
        } else {
            if (this.f746t == null) {
                this.f746t = new v();
            }
            View view2 = (View) uVar.a(this.f746t);
            uVar.f787h = view2;
            if (view2 != null) {
                return true;
            }
            return false;
        }
    }

    private boolean y0(u uVar) {
        uVar.d(o0());
        uVar.f786g = new t(uVar.f791l);
        uVar.f782c = 81;
        return true;
    }

    private boolean z0(u uVar) {
        Resources.Theme theme;
        Context context = this.f737k;
        int i10 = uVar.f780a;
        if ((i10 == 0 || i10 == 108) && this.f744r != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme2 = context.getTheme();
            theme2.resolveAttribute(h.a.f16444d, typedValue, true);
            if (typedValue.resourceId != 0) {
                theme = context.getResources().newTheme();
                theme.setTo(theme2);
                theme.applyStyle(typedValue.resourceId, true);
                theme.resolveAttribute(h.a.f16445e, typedValue, true);
            } else {
                theme2.resolveAttribute(h.a.f16445e, typedValue, true);
                theme = null;
            }
            if (typedValue.resourceId != 0) {
                if (theme == null) {
                    theme = context.getResources().newTheme();
                    theme.setTo(theme2);
                }
                theme.applyStyle(typedValue.resourceId, true);
            }
            if (theme != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(theme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
        gVar.R(this);
        uVar.c(gVar);
        return true;
    }

    @Override // androidx.appcompat.app.g
    public void A(Bundle bundle) {
        k0();
    }

    @Override // androidx.appcompat.app.g
    public void B() {
        androidx.appcompat.app.a s10 = s();
        if (s10 != null) {
            s10.w(true);
        }
    }

    public boolean B0() {
        return this.f755z;
    }

    @Override // androidx.appcompat.app.g
    public void C(Bundle bundle) {
    }

    int C0(Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    if (i10 == 3) {
                        return q0(context).c();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                return -1;
            } else {
                return r0(context).c();
            }
        }
        return i10;
    }

    @Override // androidx.appcompat.app.g
    public void D() {
        S(true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D0() {
        boolean z10 = this.O;
        this.O = false;
        u t02 = t0(0, false);
        if (t02 != null && t02.f794o) {
            if (!z10) {
                c0(t02, true);
            }
            return true;
        }
        androidx.appcompat.view.b bVar = this.f747u;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        androidx.appcompat.app.a s10 = s();
        if (s10 == null || !s10.h()) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.app.g
    public void E() {
        androidx.appcompat.app.a s10 = s();
        if (s10 != null) {
            s10.w(false);
        }
    }

    boolean E0(int i10, KeyEvent keyEvent) {
        boolean z10 = true;
        if (i10 != 4) {
            if (i10 == 82) {
                F0(0, keyEvent);
                return true;
            }
        } else {
            if ((keyEvent.getFlags() & 128) == 0) {
                z10 = false;
            }
            this.O = z10;
        }
        return false;
    }

    boolean G0(int i10, KeyEvent keyEvent) {
        androidx.appcompat.app.a s10 = s();
        if (s10 != null && s10.q(i10, keyEvent)) {
            return true;
        }
        u uVar = this.N;
        if (uVar != null && O0(uVar, keyEvent.getKeyCode(), keyEvent, 1)) {
            u uVar2 = this.N;
            if (uVar2 != null) {
                uVar2.f793n = true;
            }
            return true;
        }
        if (this.N == null) {
            u t02 = t0(0, true);
            P0(t02, keyEvent);
            boolean O0 = O0(t02, keyEvent.getKeyCode(), keyEvent, 1);
            t02.f792m = false;
            if (O0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.g
    public boolean H(int i10) {
        int R0 = R0(i10);
        if (this.K && R0 == 108) {
            return false;
        }
        if (this.G && R0 == 1) {
            this.G = false;
        }
        if (R0 != 1) {
            if (R0 != 2) {
                if (R0 != 5) {
                    if (R0 != 10) {
                        if (R0 != 108) {
                            if (R0 != 109) {
                                return this.f738l.requestFeature(R0);
                            }
                            Y0();
                            this.H = true;
                            return true;
                        }
                        Y0();
                        this.G = true;
                        return true;
                    }
                    Y0();
                    this.I = true;
                    return true;
                }
                Y0();
                this.F = true;
                return true;
            }
            Y0();
            this.E = true;
            return true;
        }
        Y0();
        this.K = true;
        return true;
    }

    boolean H0(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            if (i10 == 82) {
                I0(0, keyEvent);
                return true;
            }
        } else if (D0()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.g
    public void I(int i10) {
        k0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f737k).inflate(i10, viewGroup);
        this.f739m.c(this.f738l.getCallback());
    }

    @Override // androidx.appcompat.app.g
    public void J(View view) {
        k0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f739m.c(this.f738l.getCallback());
    }

    void J0(int i10) {
        androidx.appcompat.app.a s10;
        if (i10 == 108 && (s10 = s()) != null) {
            s10.i(true);
        }
    }

    @Override // androidx.appcompat.app.g
    public void K(View view, ViewGroup.LayoutParams layoutParams) {
        k0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f739m.c(this.f738l.getCallback());
    }

    void K0(int i10) {
        if (i10 == 108) {
            androidx.appcompat.app.a s10 = s();
            if (s10 != null) {
                s10.i(false);
            }
        } else if (i10 == 0) {
            u t02 = t0(i10, true);
            if (t02.f794o) {
                c0(t02, false);
            }
        }
    }

    @Override // androidx.appcompat.app.g
    public void L(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        OnBackInvokedCallback onBackInvokedCallback;
        super.L(onBackInvokedDispatcher);
        OnBackInvokedDispatcher onBackInvokedDispatcher2 = this.f751w0;
        if (onBackInvokedDispatcher2 != null && (onBackInvokedCallback = this.f753x0) != null) {
            n.c(onBackInvokedDispatcher2, onBackInvokedCallback);
            this.f753x0 = null;
        }
        if (onBackInvokedDispatcher == null) {
            Object obj = this.f736j;
            if ((obj instanceof Activity) && ((Activity) obj).getWindow() != null) {
                this.f751w0 = n.a((Activity) this.f736j);
                c1();
            }
        }
        this.f751w0 = onBackInvokedDispatcher;
        c1();
    }

    void L0(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.g
    public void M(Toolbar toolbar) {
        if (!(this.f736j instanceof Activity)) {
            return;
        }
        androidx.appcompat.app.a s10 = s();
        if (!(s10 instanceof c0)) {
            this.f742p = null;
            if (s10 != null) {
                s10.p();
            }
            this.f741o = null;
            if (toolbar != null) {
                z zVar = new z(toolbar, u0(), this.f739m);
                this.f741o = zVar;
                this.f739m.e(zVar.f833c);
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.f739m.e(null);
            }
            u();
            return;
        }
        throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    }

    @Override // androidx.appcompat.app.g
    public void N(int i10) {
        this.U = i10;
    }

    final androidx.appcompat.app.a N0() {
        return this.f741o;
    }

    @Override // androidx.appcompat.app.g
    public final void O(CharSequence charSequence) {
        this.f743q = charSequence;
        i0 i0Var = this.f744r;
        if (i0Var != null) {
            i0Var.setWindowTitle(charSequence);
        } else if (N0() != null) {
            N0().y(charSequence);
        } else {
            TextView textView = this.C;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    @Override // androidx.appcompat.app.g
    public androidx.appcompat.view.b P(b.a aVar) {
        androidx.appcompat.app.e eVar;
        if (aVar != null) {
            androidx.appcompat.view.b bVar = this.f747u;
            if (bVar != null) {
                bVar.c();
            }
            i iVar = new i(aVar);
            androidx.appcompat.app.a s10 = s();
            if (s10 != null) {
                androidx.appcompat.view.b A = s10.A(iVar);
                this.f747u = A;
                if (A != null && (eVar = this.f740n) != null) {
                    eVar.onSupportActionModeStarted(A);
                }
            }
            if (this.f747u == null) {
                this.f747u = X0(iVar);
            }
            c1();
            return this.f747u;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    void S0(Configuration configuration, z.i iVar) {
        l.d(configuration, iVar);
    }

    public boolean T() {
        return R(true);
    }

    void T0(z.i iVar) {
        l.c(iVar);
    }

    final boolean U0() {
        ViewGroup viewGroup;
        if (this.A && (viewGroup = this.B) != null && p0.F(viewGroup)) {
            return true;
        }
        return false;
    }

    z.i W(Context context) {
        z.i r10;
        if (Build.VERSION.SDK_INT >= 33 || (r10 = androidx.appcompat.app.g.r()) == null) {
            return null;
        }
        z.i s02 = s0(context.getApplicationContext().getResources().getConfiguration());
        z.i b10 = x.b(r10, s02);
        if (!b10.e()) {
            return b10;
        }
        return s02;
    }

    boolean W0() {
        if (this.f751w0 == null) {
            return false;
        }
        u t02 = t0(0, false);
        if ((t02 == null || !t02.f794o) && this.f747u == null) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.appcompat.view.b X0(androidx.appcompat.view.b.a r8) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.X0(androidx.appcompat.view.b$a):androidx.appcompat.view.b");
    }

    void Y(int i10, u uVar, Menu menu) {
        if (menu == null) {
            if (uVar == null && i10 >= 0) {
                u[] uVarArr = this.M;
                if (i10 < uVarArr.length) {
                    uVar = uVarArr[i10];
                }
            }
            if (uVar != null) {
                menu = uVar.f789j;
            }
        }
        if ((uVar == null || uVar.f794o) && !this.R) {
            this.f739m.d(this.f738l.getCallback(), i10, menu);
        }
    }

    void Z(androidx.appcompat.view.menu.g gVar) {
        if (this.L) {
            return;
        }
        this.L = true;
        this.f744r.j();
        Window.Callback v02 = v0();
        if (v02 != null && !this.R) {
            v02.onPanelClosed(108, gVar);
        }
        this.L = false;
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        u m02;
        Window.Callback v02 = v0();
        if (v02 != null && !this.R && (m02 = m0(gVar.D())) != null) {
            return v02.onMenuItemSelected(m02.f780a, menuItem);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void b(androidx.appcompat.view.menu.g gVar) {
        Q0(true);
    }

    void b0(int i10) {
        c0(t0(i10, true), true);
    }

    void c0(u uVar, boolean z10) {
        ViewGroup viewGroup;
        i0 i0Var;
        if (z10 && uVar.f780a == 0 && (i0Var = this.f744r) != null && i0Var.b()) {
            Z(uVar.f789j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f737k.getSystemService("window");
        if (windowManager != null && uVar.f794o && (viewGroup = uVar.f786g) != null) {
            windowManager.removeView(viewGroup);
            if (z10) {
                Y(uVar.f780a, uVar, null);
            }
        }
        uVar.f792m = false;
        uVar.f793n = false;
        uVar.f794o = false;
        uVar.f787h = null;
        uVar.f796q = true;
        if (this.N == uVar) {
            this.N = null;
        }
        if (uVar.f780a == 0) {
            c1();
        }
    }

    void c1() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean W0 = W0();
            if (W0 && this.f753x0 == null) {
                this.f753x0 = n.b(this.f751w0, this);
            } else if (!W0 && (onBackInvokedCallback = this.f753x0) != null) {
                n.c(this.f751w0, onBackInvokedCallback);
            }
        }
    }

    @Override // androidx.appcompat.app.g
    public void e(View view, ViewGroup.LayoutParams layoutParams) {
        k0();
        ((ViewGroup) this.B.findViewById(16908290)).addView(view, layoutParams);
        this.f739m.c(this.f738l.getCallback());
    }

    final int e1(c1 c1Var, Rect rect) {
        int i10;
        boolean z10;
        int i11;
        int j10;
        boolean z11;
        int i12 = 0;
        if (c1Var != null) {
            i10 = c1Var.k();
        } else if (rect != null) {
            i10 = rect.top;
        } else {
            i10 = 0;
        }
        ActionBarContextView actionBarContextView = this.f748v;
        if (actionBarContextView != null && (actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f748v.getLayoutParams();
            boolean z12 = true;
            if (this.f748v.isShown()) {
                if (this.f733d0 == null) {
                    this.f733d0 = new Rect();
                    this.f734e0 = new Rect();
                }
                Rect rect2 = this.f733d0;
                Rect rect3 = this.f734e0;
                if (c1Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(c1Var.i(), c1Var.k(), c1Var.j(), c1Var.h());
                }
                q1.a(this.B, rect2, rect3);
                int i13 = rect2.top;
                int i14 = rect2.left;
                int i15 = rect2.right;
                c1 x10 = p0.x(this.B);
                if (x10 == null) {
                    i11 = 0;
                } else {
                    i11 = x10.i();
                }
                if (x10 == null) {
                    j10 = 0;
                } else {
                    j10 = x10.j();
                }
                if (marginLayoutParams.topMargin == i13 && marginLayoutParams.leftMargin == i14 && marginLayoutParams.rightMargin == i15) {
                    z11 = false;
                } else {
                    marginLayoutParams.topMargin = i13;
                    marginLayoutParams.leftMargin = i14;
                    marginLayoutParams.rightMargin = i15;
                    z11 = true;
                }
                if (i13 > 0 && this.D == null) {
                    View view = new View(this.f737k);
                    this.D = view;
                    view.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = i11;
                    layoutParams.rightMargin = j10;
                    this.B.addView(this.D, -1, layoutParams);
                } else {
                    View view2 = this.D;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i16 = marginLayoutParams2.height;
                        int i17 = marginLayoutParams.topMargin;
                        if (i16 != i17 || marginLayoutParams2.leftMargin != i11 || marginLayoutParams2.rightMargin != j10) {
                            marginLayoutParams2.height = i17;
                            marginLayoutParams2.leftMargin = i11;
                            marginLayoutParams2.rightMargin = j10;
                            this.D.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                View view3 = this.D;
                if (view3 == null) {
                    z12 = false;
                }
                if (z12 && view3.getVisibility() != 0) {
                    f1(this.D);
                }
                if (!this.I && z12) {
                    i10 = 0;
                }
                z10 = z12;
                z12 = z11;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z10 = false;
            } else {
                z10 = false;
                z12 = false;
            }
            if (z12) {
                this.f748v.setLayoutParams(marginLayoutParams);
            }
        } else {
            z10 = false;
        }
        View view4 = this.D;
        if (view4 != null) {
            if (!z10) {
                i12 = 8;
            }
            view4.setVisibility(i12);
        }
        return i10;
    }

    public View f0(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z10;
        boolean z11 = false;
        if (this.f735f0 == null) {
            String string = this.f737k.obtainStyledAttributes(h.j.f16701y0).getString(h.j.C0);
            if (string == null) {
                this.f735f0 = new androidx.appcompat.app.s();
            } else {
                try {
                    this.f735f0 = (androidx.appcompat.app.s) this.f737k.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f735f0 = new androidx.appcompat.app.s();
                }
            }
        }
        boolean z12 = f729z0;
        if (z12) {
            if (this.f749v0 == null) {
                this.f749v0 = new w();
            }
            if (this.f749v0.a(attributeSet)) {
                z10 = true;
                return this.f735f0.r(view, str, context, attributeSet, z10, z12, true, p1.c());
            } else if (attributeSet instanceof XmlPullParser) {
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    z11 = true;
                }
            } else {
                z11 = V0((ViewParent) view);
            }
        }
        z10 = z11;
        return this.f735f0.r(view, str, context, attributeSet, z10, z12, true, p1.c());
    }

    @Override // androidx.appcompat.app.g
    public Context g(Context context) {
        Configuration configuration;
        boolean z10 = true;
        this.P = true;
        int C02 = C0(context, X());
        if (androidx.appcompat.app.g.v(context)) {
            androidx.appcompat.app.g.Q(context);
        }
        z.i W = W(context);
        if (C0 && (context instanceof ContextThemeWrapper)) {
            try {
                s.a((ContextThemeWrapper) context, d0(context, C02, W, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.d) {
            try {
                ((androidx.appcompat.view.d) context).a(d0(context, C02, W, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!B0) {
            return super.g(context);
        }
        Configuration configuration2 = new Configuration();
        configuration2.uiMode = -1;
        configuration2.fontScale = 0.0f;
        Configuration configuration3 = j.a(context, configuration2).getResources().getConfiguration();
        Configuration configuration4 = context.getResources().getConfiguration();
        configuration3.uiMode = configuration4.uiMode;
        if (!configuration3.equals(configuration4)) {
            configuration = n0(configuration3, configuration4);
        } else {
            configuration = null;
        }
        Configuration d02 = d0(context, C02, W, configuration, true);
        androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, h.i.f16578d);
        dVar.a(d02);
        boolean z11 = false;
        try {
            if (context.getTheme() == null) {
                z10 = false;
            }
            z11 = z10;
        } catch (NullPointerException unused3) {
        }
        if (z11) {
            f.C0339f.a(dVar.getTheme());
        }
        return super.g(dVar);
    }

    void g0() {
        androidx.appcompat.view.menu.g gVar;
        i0 i0Var = this.f744r;
        if (i0Var != null) {
            i0Var.j();
        }
        if (this.f750w != null) {
            this.f738l.getDecorView().removeCallbacks(this.f752x);
            if (this.f750w.isShowing()) {
                try {
                    this.f750w.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f750w = null;
        }
        j0();
        u t02 = t0(0, false);
        if (t02 != null && (gVar = t02.f789j) != null) {
            gVar.close();
        }
    }

    boolean h0(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f736j;
        boolean z10 = true;
        if (((obj instanceof t.a) || (obj instanceof androidx.appcompat.app.r)) && (decorView = this.f738l.getDecorView()) != null && d0.t.d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f739m.b(this.f738l.getCallback(), keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z10 = false;
        }
        if (z10) {
            return E0(keyCode, keyEvent);
        }
        return H0(keyCode, keyEvent);
    }

    void i0(int i10) {
        u t02;
        u t03 = t0(i10, true);
        if (t03.f789j != null) {
            Bundle bundle = new Bundle();
            t03.f789j.Q(bundle);
            if (bundle.size() > 0) {
                t03.f798s = bundle;
            }
            t03.f789j.e0();
            t03.f789j.clear();
        }
        t03.f797r = true;
        t03.f796q = true;
        if ((i10 == 108 || i10 == 0) && this.f744r != null && (t02 = t0(0, false)) != null) {
            t02.f792m = false;
            P0(t02, null);
        }
    }

    @Override // androidx.appcompat.app.g
    public View j(int i10) {
        k0();
        return this.f738l.findViewById(i10);
    }

    void j0() {
        w0 w0Var = this.f754y;
        if (w0Var != null) {
            w0Var.c();
        }
    }

    @Override // androidx.appcompat.app.g
    public Context l() {
        return this.f737k;
    }

    u m0(Menu menu) {
        int i10;
        u[] uVarArr = this.M;
        if (uVarArr != null) {
            i10 = uVarArr.length;
        } else {
            i10 = 0;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            u uVar = uVarArr[i11];
            if (uVar != null && uVar.f789j == menu) {
                return uVar;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.g
    public final androidx.appcompat.app.b n() {
        return new f();
    }

    @Override // androidx.appcompat.app.g
    public int o() {
        return this.T;
    }

    final Context o0() {
        Context context;
        androidx.appcompat.app.a s10 = s();
        if (s10 != null) {
            context = s10.k();
        } else {
            context = null;
        }
        if (context == null) {
            return this.f737k;
        }
        return context;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return f0(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.g
    public MenuInflater q() {
        Context context;
        if (this.f742p == null) {
            w0();
            androidx.appcompat.app.a aVar = this.f741o;
            if (aVar != null) {
                context = aVar.k();
            } else {
                context = this.f737k;
            }
            this.f742p = new androidx.appcompat.view.g(context);
        }
        return this.f742p;
    }

    @Override // androidx.appcompat.app.g
    public androidx.appcompat.app.a s() {
        w0();
        return this.f741o;
    }

    z.i s0(Configuration configuration) {
        return l.b(configuration);
    }

    @Override // androidx.appcompat.app.g
    public void t() {
        LayoutInflater from = LayoutInflater.from(this.f737k);
        if (from.getFactory() == null) {
            d0.u.a(from, this);
        } else if (!(from.getFactory2() instanceof h)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    protected u t0(int i10, boolean z10) {
        u[] uVarArr = this.M;
        if (uVarArr == null || uVarArr.length <= i10) {
            u[] uVarArr2 = new u[i10 + 1];
            if (uVarArr != null) {
                System.arraycopy(uVarArr, 0, uVarArr2, 0, uVarArr.length);
            }
            this.M = uVarArr2;
            uVarArr = uVarArr2;
        }
        u uVar = uVarArr[i10];
        if (uVar == null) {
            u uVar2 = new u(i10);
            uVarArr[i10] = uVar2;
            return uVar2;
        }
        return uVar;
    }

    @Override // androidx.appcompat.app.g
    public void u() {
        if (N0() != null && !s().m()) {
            A0(0);
        }
    }

    final CharSequence u0() {
        Object obj = this.f736j;
        if (obj instanceof Activity) {
            return ((Activity) obj).getTitle();
        }
        return this.f743q;
    }

    final Window.Callback v0() {
        return this.f738l.getCallback();
    }

    @Override // androidx.appcompat.app.g
    public void x(Configuration configuration) {
        androidx.appcompat.app.a s10;
        if (this.G && this.A && (s10 = s()) != null) {
            s10.o(configuration);
        }
        androidx.appcompat.widget.k.b().g(this.f737k);
        this.S = new Configuration(this.f737k.getResources().getConfiguration());
        S(false, false);
    }

    @Override // androidx.appcompat.app.g
    public void y(Bundle bundle) {
        String str;
        this.P = true;
        R(false);
        l0();
        Object obj = this.f736j;
        if (obj instanceof Activity) {
            try {
                str = androidx.core.app.i.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                androidx.appcompat.app.a N0 = N0();
                if (N0 == null) {
                    this.f732c0 = true;
                } else {
                    N0.u(true);
                }
            }
            androidx.appcompat.app.g.d(this);
        }
        this.S = new Configuration(this.f737k.getResources().getConfiguration());
        this.Q = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    @Override // androidx.appcompat.app.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void z() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f736j
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L9
            androidx.appcompat.app.g.F(r3)
        L9:
            boolean r0 = r3.Z
            if (r0 == 0) goto L18
            android.view.Window r0 = r3.f738l
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.f731b0
            r0.removeCallbacks(r1)
        L18:
            r0 = 1
            r3.R = r0
            int r0 = r3.T
            r1 = -100
            if (r0 == r1) goto L45
            java.lang.Object r0 = r3.f736j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L45
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L45
            r.i r0 = androidx.appcompat.app.h.f728y0
            java.lang.Object r1 = r3.f736j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.T
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L54
        L45:
            r.i r0 = androidx.appcompat.app.h.f728y0
            java.lang.Object r1 = r3.f736j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L54:
            androidx.appcompat.app.a r0 = r3.f741o
            if (r0 == 0) goto L5b
            r0.p()
        L5b:
            r3.a0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.z():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Dialog dialog, androidx.appcompat.app.e eVar) {
        this(dialog.getContext(), dialog.getWindow(), eVar, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private h(Context context, Window window, androidx.appcompat.app.e eVar, Object obj) {
        androidx.appcompat.app.d Z0;
        this.f754y = null;
        this.f755z = true;
        this.T = -100;
        this.f731b0 = new a();
        this.f737k = context;
        this.f740n = eVar;
        this.f736j = obj;
        if (this.T == -100 && (obj instanceof Dialog) && (Z0 = Z0()) != null) {
            this.T = Z0.getDelegate().o();
        }
        if (this.T == -100) {
            r.i iVar = f728y0;
            Integer num = (Integer) iVar.get(obj.getClass().getName());
            if (num != null) {
                this.T = num.intValue();
                iVar.remove(obj.getClass().getName());
            }
        }
        if (window != null) {
            V(window);
        }
        androidx.appcompat.widget.k.h();
    }
}
