package androidx.emoji2.text;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Log;
import androidx.emoji2.text.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class c {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final b f2406a;

        public a(b bVar) {
            this.f2406a = bVar == null ? e() : bVar;
        }

        private e.c a(Context context, a0.e eVar) {
            if (eVar == null) {
                return null;
            }
            return new i(context, eVar);
        }

        private List b(Signature[] signatureArr) {
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            return Collections.singletonList(arrayList);
        }

        private a0.e d(ProviderInfo providerInfo, PackageManager packageManager) {
            String str = providerInfo.authority;
            String str2 = providerInfo.packageName;
            return new a0.e(str, str2, "emojicompat-emoji-font", b(this.f2406a.b(packageManager, str2)));
        }

        private static b e() {
            if (Build.VERSION.SDK_INT >= 28) {
                return new d();
            }
            return new C0036c();
        }

        private boolean f(ProviderInfo providerInfo) {
            ApplicationInfo applicationInfo;
            if (providerInfo != null && (applicationInfo = providerInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                return true;
            }
            return false;
        }

        private ProviderInfo g(PackageManager packageManager) {
            for (ResolveInfo resolveInfo : this.f2406a.c(packageManager, new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0)) {
                ProviderInfo a10 = this.f2406a.a(resolveInfo);
                if (f(a10)) {
                    return a10;
                }
            }
            return null;
        }

        public e.c c(Context context) {
            return a(context, h(context));
        }

        a0.e h(Context context) {
            PackageManager packageManager = context.getPackageManager();
            c0.f.h(packageManager, "Package manager required to locate emoji font provider");
            ProviderInfo g10 = g(packageManager);
            if (g10 == null) {
                return null;
            }
            try {
                return d(g10, packageManager);
            } catch (PackageManager.NameNotFoundException e10) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e10);
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        public abstract ProviderInfo a(ResolveInfo resolveInfo);

        public Signature[] b(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }

        public abstract List c(PackageManager packageManager, Intent intent, int i10);
    }

    /* renamed from: androidx.emoji2.text.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0036c extends b {
        @Override // androidx.emoji2.text.c.b
        public ProviderInfo a(ResolveInfo resolveInfo) {
            return resolveInfo.providerInfo;
        }

        @Override // androidx.emoji2.text.c.b
        public List c(PackageManager packageManager, Intent intent, int i10) {
            return packageManager.queryIntentContentProviders(intent, i10);
        }
    }

    /* loaded from: classes.dex */
    public static class d extends C0036c {
        @Override // androidx.emoji2.text.c.b
        public Signature[] b(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    public static i a(Context context) {
        return (i) new a(null).c(context);
    }
}
