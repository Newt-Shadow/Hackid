package androidx.browser.customtabs;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.browser.customtabs.a;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Intent f1780a;

    /* renamed from: b  reason: collision with root package name */
    public final Bundle f1781b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {
        static ActivityOptions a() {
            return ActivityOptions.makeBasic();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {
        static String a() {
            LocaleList adjustedDefault = LocaleList.getAdjustedDefault();
            if (adjustedDefault.size() > 0) {
                return adjustedDefault.get(0).toLanguageTag();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {
        static void a(ActivityOptions activityOptions, boolean z10) {
            activityOptions.setShareIdentityEnabled(z10);
        }
    }

    d(Intent intent, Bundle bundle) {
        this.f1780a = intent;
        this.f1781b = bundle;
    }

    public static int a() {
        return 5;
    }

    public static Intent c(Intent intent) {
        if (intent == null) {
            intent = new Intent("android.intent.action.VIEW");
        }
        intent.addFlags(268435456);
        intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
        return intent;
    }

    public void b(Context context, Uri uri) {
        this.f1780a.setData(uri);
        androidx.core.content.a.n(context, this.f1780a, this.f1781b);
    }

    /* renamed from: androidx.browser.customtabs.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0021d {

        /* renamed from: c  reason: collision with root package name */
        private ArrayList f1784c;

        /* renamed from: d  reason: collision with root package name */
        private ActivityOptions f1785d;

        /* renamed from: e  reason: collision with root package name */
        private ArrayList f1786e;

        /* renamed from: f  reason: collision with root package name */
        private SparseArray f1787f;

        /* renamed from: g  reason: collision with root package name */
        private Bundle f1788g;

        /* renamed from: j  reason: collision with root package name */
        private boolean f1791j;

        /* renamed from: a  reason: collision with root package name */
        private final Intent f1782a = new Intent("android.intent.action.VIEW");

        /* renamed from: b  reason: collision with root package name */
        private final a.C0018a f1783b = new a.C0018a();

        /* renamed from: h  reason: collision with root package name */
        private int f1789h = 0;

        /* renamed from: i  reason: collision with root package name */
        private boolean f1790i = true;

        public C0021d() {
        }

        private void d() {
            Bundle bundle;
            String a10 = b.a();
            if (!TextUtils.isEmpty(a10)) {
                if (this.f1782a.hasExtra("com.android.browser.headers")) {
                    bundle = this.f1782a.getBundleExtra("com.android.browser.headers");
                } else {
                    bundle = new Bundle();
                }
                if (!bundle.containsKey("Accept-Language")) {
                    bundle.putString("Accept-Language", a10);
                    this.f1782a.putExtra("com.android.browser.headers", bundle);
                }
            }
        }

        private void j(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f1782a.putExtras(bundle);
        }

        private void k() {
            if (this.f1785d == null) {
                this.f1785d = a.a();
            }
            c.a(this.f1785d, this.f1791j);
        }

        public C0021d a(String str, PendingIntent pendingIntent) {
            if (this.f1784c == null) {
                this.f1784c = new ArrayList();
            }
            Bundle bundle = new Bundle();
            bundle.putString("android.support.customtabs.customaction.MENU_ITEM_TITLE", str);
            bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", pendingIntent);
            this.f1784c.add(bundle);
            return this;
        }

        public d b() {
            Bundle bundle = null;
            if (!this.f1782a.hasExtra("android.support.customtabs.extra.SESSION")) {
                j(null, null);
            }
            ArrayList<? extends Parcelable> arrayList = this.f1784c;
            if (arrayList != null) {
                this.f1782a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<? extends Parcelable> arrayList2 = this.f1786e;
            if (arrayList2 != null) {
                this.f1782a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f1782a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1790i);
            this.f1782a.putExtras(this.f1783b.a().a());
            Bundle bundle2 = this.f1788g;
            if (bundle2 != null) {
                this.f1782a.putExtras(bundle2);
            }
            if (this.f1787f != null) {
                Bundle bundle3 = new Bundle();
                bundle3.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f1787f);
                this.f1782a.putExtras(bundle3);
            }
            this.f1782a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.f1789h);
            int i10 = Build.VERSION.SDK_INT;
            d();
            if (i10 >= 34) {
                k();
            }
            ActivityOptions activityOptions = this.f1785d;
            if (activityOptions != null) {
                bundle = activityOptions.toBundle();
            }
            return new d(this.f1782a, bundle);
        }

        public C0021d c(Bitmap bitmap, String str, PendingIntent pendingIntent, boolean z10) {
            Bundle bundle = new Bundle();
            bundle.putInt("android.support.customtabs.customaction.ID", 0);
            bundle.putParcelable("android.support.customtabs.customaction.ICON", bitmap);
            bundle.putString("android.support.customtabs.customaction.DESCRIPTION", str);
            bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", pendingIntent);
            this.f1782a.putExtra("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
            this.f1782a.putExtra("android.support.customtabs.extra.TINT_ACTION_BUTTON", z10);
            return this;
        }

        public C0021d e(androidx.browser.customtabs.a aVar) {
            this.f1788g = aVar.a();
            return this;
        }

        public C0021d f(Context context, int i10, int i11) {
            this.f1782a.putExtra("android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE", androidx.core.app.c.a(context, i10, i11).b());
            return this;
        }

        public C0021d g(boolean z10) {
            this.f1790i = z10;
            return this;
        }

        public C0021d h(RemoteViews remoteViews, int[] iArr, PendingIntent pendingIntent) {
            this.f1782a.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS", remoteViews);
            this.f1782a.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS", iArr);
            this.f1782a.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT", pendingIntent);
            return this;
        }

        public C0021d i(i iVar) {
            this.f1782a.setPackage(iVar.f().getPackageName());
            j(iVar.e(), iVar.g());
            return this;
        }

        public C0021d l(int i10) {
            if (i10 >= 0 && i10 <= 2) {
                this.f1789h = i10;
                if (i10 == 1) {
                    this.f1782a.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", true);
                } else if (i10 == 2) {
                    this.f1782a.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", false);
                } else {
                    this.f1782a.removeExtra("android.support.customtabs.extra.SHARE_MENU_ITEM");
                }
                return this;
            }
            throw new IllegalArgumentException("Invalid value for the shareState argument");
        }

        public C0021d m(boolean z10) {
            this.f1782a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", z10 ? 1 : 0);
            return this;
        }

        public C0021d n(Context context, int i10, int i11) {
            this.f1785d = ActivityOptions.makeCustomAnimation(context, i10, i11);
            return this;
        }

        public C0021d o(boolean z10) {
            this.f1782a.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", z10);
            return this;
        }

        public C0021d(i iVar) {
            if (iVar != null) {
                i(iVar);
            }
        }
    }
}
