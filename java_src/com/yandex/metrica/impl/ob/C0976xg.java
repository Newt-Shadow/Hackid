package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.yandex.metrica.impl.ob.C0486dg;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.xg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0976xg {

    /* renamed from: a  reason: collision with root package name */
    private final Zl<C0486dg.a, Integer> f13954a;

    /* renamed from: b  reason: collision with root package name */
    private final long f13955b;

    /* renamed from: c  reason: collision with root package name */
    private final String f13956c;

    /* renamed from: d  reason: collision with root package name */
    private final String f13957d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f13958e;

    /* renamed from: f  reason: collision with root package name */
    private final C0717mn f13959f;

    /* renamed from: g  reason: collision with root package name */
    private final M0 f13960g;

    /* renamed from: com.yandex.metrica.impl.ob.xg$a */
    /* loaded from: classes2.dex */
    public static final class a<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            int a10;
            a10 = zc.b.a((Comparable) ((xc.k) t10).d(), (Comparable) ((xc.k) t11).d());
            return a10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.xg$b */
    /* loaded from: classes2.dex */
    public static final class b<T> implements Comparator<C0486dg> {
        b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public final int compare(C0486dg c0486dg, C0486dg c0486dg2) {
            int a10;
            a10 = kd.c.a(c0486dg.f12219c - c0486dg2.f12219c);
            if (a10 == 0) {
                int intValue = ((Number) C0976xg.this.f13954a.a(c0486dg.f12220d)).intValue();
                Object a11 = C0976xg.this.f13954a.a(c0486dg2.f12220d);
                kotlin.jvm.internal.m.d(a11, "sourcePriorities[second.source]");
                return intValue - ((Number) a11).intValue();
            }
            return a10;
        }
    }

    public C0976xg(Context context, C0717mn c0717mn, M0 m02) {
        this.f13958e = context;
        this.f13959f = c0717mn;
        this.f13960g = m02;
        Zl<C0486dg.a, Integer> zl = new Zl<>(0);
        zl.a(C0486dg.a.HMS, 1);
        zl.a(C0486dg.a.GP, 2);
        this.f13954a = zl;
        this.f13955b = TimeUnit.DAYS.toSeconds(1L);
        this.f13956c = "com.android.vending";
        this.f13957d = "com.huawei.appmarket";
    }

    private final JSONObject c(C0486dg c0486dg) {
        JSONObject put = new JSONObject().put("referrer", c0486dg.f12217a).put("install_timestamp_seconds", c0486dg.f12219c).put("click_timestamp_seconds", c0486dg.f12218b).put(ClimateForcast.SOURCE, c0486dg.f12220d.f12225a);
        kotlin.jvm.internal.m.d(put, "JSONObject()\n           …eferrerInfo.source.value)");
        return put;
    }

    public final boolean b(C0486dg c0486dg) {
        String str;
        boolean z10;
        if (c0486dg != null) {
            str = c0486dg.f12217a;
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        return !z10;
    }

    public final boolean a(C0486dg c0486dg) {
        String str;
        if (c0486dg == null) {
            return false;
        }
        C0717mn c0717mn = this.f13959f;
        Context context = this.f13958e;
        String packageName = context.getPackageName();
        c0717mn.getClass();
        try {
            PackageManager packageManager = context.getPackageManager();
            if (A2.a(30)) {
                str = C0742nn.a(packageManager, packageName);
            } else {
                str = packageManager.getInstallerPackageName(packageName);
            }
        } catch (Throwable unused) {
            str = null;
        }
        int ordinal = c0486dg.f12220d.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return false;
            }
            return kotlin.jvm.internal.m.a(this.f13957d, str);
        }
        return kotlin.jvm.internal.m.a(this.f13956c, str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C0976xg(android.content.Context r1, com.yandex.metrica.impl.ob.C0717mn r2, com.yandex.metrica.impl.ob.M0 r3, int r4) {
        /*
            r0 = this;
            r2 = r4 & 2
            r3 = 0
            if (r2 == 0) goto Lb
            com.yandex.metrica.impl.ob.mn r2 = new com.yandex.metrica.impl.ob.mn
            r2.<init>()
            goto Lc
        Lb:
            r2 = r3
        Lc:
            r4 = r4 & 4
            if (r4 == 0) goto L19
            com.yandex.metrica.impl.ob.M0 r3 = com.yandex.metrica.impl.ob.C0761oh.a()
            java.lang.String r4 = "YandexMetricaSelfReportFacade.getReporter()"
            kotlin.jvm.internal.m.d(r3, r4)
        L19:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0976xg.<init>(android.content.Context, com.yandex.metrica.impl.ob.mn, com.yandex.metrica.impl.ob.M0, int):void");
    }

    public final C0486dg a(List<C0486dg> list) {
        C0486dg c0486dg = null;
        if (list.isEmpty()) {
            return null;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        C0717mn c0717mn = this.f13959f;
        Context context = this.f13958e;
        PackageInfo b10 = c0717mn.b(context, context.getPackageName(), 0);
        if (b10 != null) {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(b10.firstInstallTime);
            a aVar = new a();
            Iterator<T> it = list.iterator();
            if (it.hasNext()) {
                C0486dg c0486dg2 = (C0486dg) it.next();
                xc.k a10 = xc.q.a(c0486dg2, Long.valueOf(Math.abs(c0486dg2.f12219c - seconds)));
                while (it.hasNext()) {
                    C0486dg c0486dg3 = (C0486dg) it.next();
                    xc.k a11 = xc.q.a(c0486dg3, Long.valueOf(Math.abs(c0486dg3.f12219c - seconds)));
                    if (aVar.compare(a10, a11) > 0) {
                        a10 = a11;
                    }
                }
                C0486dg c0486dg4 = (C0486dg) a10.a();
                if (((Number) a10.b()).longValue() < this.f13955b) {
                    c0486dg = c0486dg4;
                }
            } else {
                throw new NoSuchElementException();
            }
        }
        if (c0486dg == null) {
            b bVar = new b();
            Iterator<T> it2 = list.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            C0486dg c0486dg5 = (C0486dg) it2.next();
            while (it2.hasNext()) {
                C0486dg c0486dg6 = (C0486dg) it2.next();
                if (bVar.compare(c0486dg5, c0486dg6) < 0) {
                    c0486dg5 = c0486dg6;
                }
            }
            c0486dg = c0486dg5;
        }
        this.f13960g.reportEvent("several_filled_referrers", a(list, c0486dg, b10).toString());
        return c0486dg;
    }

    private final JSONObject a(List<C0486dg> list, C0486dg c0486dg, PackageInfo packageInfo) {
        int r10;
        JSONObject jSONObject = new JSONObject();
        r10 = yc.p.r(list, 10);
        ArrayList arrayList = new ArrayList(r10);
        for (C0486dg c0486dg2 : list) {
            arrayList.add(c(c0486dg2));
        }
        JSONObject putOpt = jSONObject.put("candidates", Tl.b((List<?>) arrayList)).put("chosen", c(c0486dg)).putOpt("install_time", packageInfo != null ? Long.valueOf(packageInfo.firstInstallTime) : null);
        kotlin.jvm.internal.m.d(putOpt, "JSONObject()\n           …geInfo?.firstInstallTime)");
        return putOpt;
    }
}
