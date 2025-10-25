package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import io.appmetrica.analytics.BuildConfig;
/* loaded from: classes2.dex */
public class Eg {

    /* renamed from: a  reason: collision with root package name */
    private String f9996a;

    /* renamed from: b  reason: collision with root package name */
    private U f9997b;

    /* renamed from: c  reason: collision with root package name */
    private C0447c2 f9998c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9999d = y();

    /* renamed from: e  reason: collision with root package name */
    private String f10000e = C0572h2.a();

    /* renamed from: f  reason: collision with root package name */
    private String f10001f;

    /* renamed from: g  reason: collision with root package name */
    private String f10002g;

    /* renamed from: h  reason: collision with root package name */
    private Ab f10003h;

    /* renamed from: i  reason: collision with root package name */
    private C1019zb f10004i;

    /* renamed from: j  reason: collision with root package name */
    private String f10005j;

    /* renamed from: k  reason: collision with root package name */
    private String f10006k;

    /* renamed from: l  reason: collision with root package name */
    private C0787pi f10007l;

    /* loaded from: classes2.dex */
    public static abstract class a<I, O> implements Dg<I, O> {

        /* renamed from: a  reason: collision with root package name */
        public final String f10008a;

        /* renamed from: b  reason: collision with root package name */
        public final String f10009b;

        /* renamed from: c  reason: collision with root package name */
        public final String f10010c;

        public a(String str, String str2, String str3) {
            this.f10008a = str;
            this.f10009b = str2;
            this.f10010c = str3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static abstract class b<T extends Eg, A extends a> implements d<T, c<A>> {

        /* renamed from: a  reason: collision with root package name */
        final Context f10011a;

        /* renamed from: b  reason: collision with root package name */
        final String f10012b;

        /* JADX INFO: Access modifiers changed from: protected */
        public b(Context context, String str) {
            this.f10011a = context;
            this.f10012b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract T a();
    }

    /* loaded from: classes2.dex */
    public static class c<A> {

        /* renamed from: a  reason: collision with root package name */
        public final C0787pi f10013a;

        /* renamed from: b  reason: collision with root package name */
        public final A f10014b;

        public c(C0787pi c0787pi, A a10) {
            this.f10013a = c0787pi;
            this.f10014b = a10;
        }
    }

    /* loaded from: classes2.dex */
    public interface d<T extends Eg, D> {
        T a(D d10);
    }

    private static String y() {
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(BuildConfig.SDK_BUILD_FLAVOR)) {
            sb2.append(BuildConfig.SDK_BUILD_FLAVOR);
        }
        if (!TextUtils.isEmpty(BuildConfig.SDK_DEPENDENCY)) {
            sb2.append("_binary");
        }
        if (!TextUtils.isEmpty("")) {
            sb2.append("_");
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(U u10) {
        this.f9997b = u10;
    }

    public String b() {
        String str = this.f10002g;
        return str == null ? "" : str;
    }

    public String c() {
        return this.f10000e;
    }

    public synchronized String d() {
        String a10;
        Ab ab2 = this.f10003h;
        a10 = ab2 == null ? null : ab2.a();
        if (a10 == null) {
            a10 = "";
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(String str) {
        this.f9996a = str;
    }

    public String f() {
        String str = this.f10001f;
        if (str == null) {
            return "";
        }
        return str;
    }

    public synchronized String g() {
        String i10;
        i10 = this.f10007l.i();
        if (i10 == null) {
            i10 = "";
        }
        return i10;
    }

    public String h() {
        return this.f9997b.f11462e;
    }

    public String i() {
        String str = this.f10005j;
        String b10 = com.yandex.metrica.c.PHONE.b();
        if (str == null) {
            return b10;
        }
        return str;
    }

    public String j() {
        return this.f9999d;
    }

    public String k() {
        String str = this.f10006k;
        if (str == null) {
            return "";
        }
        return str;
    }

    public String l() {
        String str = this.f9997b.f11458a;
        if (str == null) {
            return "";
        }
        return str;
    }

    public String m() {
        return this.f9997b.f11459b;
    }

    public int n() {
        return this.f9997b.f11461d;
    }

    public String o() {
        return this.f9997b.f11460c;
    }

    public String p() {
        return this.f9996a;
    }

    public RetryPolicyConfig q() {
        return this.f10007l.J();
    }

    public float r() {
        return this.f9998c.d();
    }

    public int s() {
        return this.f9998c.b();
    }

    public int t() {
        return this.f9998c.c();
    }

    public String toString() {
        return "BaseRequestConfig{mPackageName='" + this.f9996a + "', mConstantDeviceInfo=" + this.f9997b + ", screenInfo=" + this.f9998c + ", mSdkVersionName='5.3.0', mSdkBuildNumber='45003240', mSdkBuildType='" + this.f9999d + "', mAppPlatform='android', mProtocolVersion='2', mAppFramework='" + this.f10000e + "', mCommitHash='a72bf6f57701ed3c2b8ed570054febbff4e58c12', mAppVersion='" + this.f10001f + "', mAppBuildNumber='" + this.f10002g + "', appSetId=" + this.f10003h + ", mAdvertisingIdsHolder=" + this.f10004i + ", mDeviceType='" + this.f10005j + "', mLocale='" + this.f10006k + "', mStartupState=" + this.f10007l + '}';
    }

    public int u() {
        return this.f9998c.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C0787pi v() {
        return this.f10007l;
    }

    public synchronized String w() {
        String V;
        V = this.f10007l.V();
        if (V == null) {
            V = "";
        }
        return V;
    }

    public synchronized boolean x() {
        return C0737ni.a(this.f10007l);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(C0447c2 c0447c2) {
        this.f9998c = c0447c2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f10001f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.f10005j = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(String str) {
        this.f10006k = str;
    }

    public synchronized String e() {
        String a10;
        Ab ab2 = this.f10003h;
        a10 = ab2 == null ? null : ab2.b().a();
        if (a10 == null) {
            a10 = "";
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(C0787pi c0787pi) {
        this.f10007l = c0787pi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f10002g = str;
    }

    public synchronized void a(Ab ab2) {
        this.f10003h = ab2;
    }

    public C1019zb a() {
        return this.f10004i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(C1019zb c1019zb) {
        this.f10004i = c1019zb;
    }
}
