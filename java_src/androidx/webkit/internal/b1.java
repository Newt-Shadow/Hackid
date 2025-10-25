package androidx.webkit.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class b1 {

    /* renamed from: c  reason: collision with root package name */
    private static final Set f3550c = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private final String f3551a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3552b;

    /* loaded from: classes.dex */
    public static class a extends b1 {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.b1
        public final boolean e() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends b1 {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.b1
        public final boolean e() {
            if (Build.VERSION.SDK_INT >= 28) {
                return true;
            }
            return false;
        }
    }

    b1(String str, String str2) {
        this.f3551a = str;
        this.f3552b = str2;
        f3550c.add(this);
    }

    private static Bundle a(Context context) {
        PackageInfo f10 = o1.s.f(context);
        if (f10 == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(f10.packageName, "org.chromium.android_webview.services.StartupFeatureMetadataHolder");
        if (Build.VERSION.SDK_INT >= 33) {
            try {
                return n0.a(context.getPackageManager(), componentName, n0.b(640L)).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        try {
            return c(context, componentName, 640).metaData;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    private static ServiceInfo c(Context context, ComponentName componentName, int i10) {
        return context.getPackageManager().getServiceInfo(componentName, i10);
    }

    public static Set g() {
        return Collections.unmodifiableSet(f3550c);
    }

    public String b() {
        return this.f3551a;
    }

    public boolean d(Context context) {
        if (!e() && !f(context)) {
            return false;
        }
        return true;
    }

    public abstract boolean e();

    public boolean f(Context context) {
        Bundle a10 = a(context);
        if (a10 == null) {
            return false;
        }
        return a10.containsKey(this.f3552b);
    }
}
