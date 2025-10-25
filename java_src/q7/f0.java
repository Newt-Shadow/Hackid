package q7;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import t7.f0;
/* loaded from: classes.dex */
public class f0 {

    /* renamed from: g  reason: collision with root package name */
    private static final Map f28430g;

    /* renamed from: h  reason: collision with root package name */
    static final String f28431h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f28432a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f28433b;

    /* renamed from: c  reason: collision with root package name */
    private final b f28434c;

    /* renamed from: d  reason: collision with root package name */
    private final z7.d f28435d;

    /* renamed from: e  reason: collision with root package name */
    private final y7.j f28436e;

    /* renamed from: f  reason: collision with root package name */
    private final n7.j f28437f = n7.j.f26477a;

    static {
        HashMap hashMap = new HashMap();
        f28430g = hashMap;
        hashMap.put("armeabi", 5);
        hashMap.put("armeabi-v7a", 6);
        hashMap.put("arm64-v8a", 9);
        hashMap.put("x86", 0);
        hashMap.put("x86_64", 1);
        f28431h = String.format(Locale.US, "Crashlytics Android SDK/%s", "20.0.0");
    }

    public f0(Context context, o0 o0Var, b bVar, z7.d dVar, y7.j jVar) {
        this.f28432a = context;
        this.f28433b = o0Var;
        this.f28434c = bVar;
        this.f28435d = dVar;
        this.f28436e = jVar;
    }

    private f0.e.d.a.c A(f0.a aVar) {
        return this.f28437f.a(aVar.e(), aVar.d(), aVar.c());
    }

    private f0.a a(f0.a aVar) {
        List list;
        if (this.f28436e.b().f33033b.f33042c && this.f28434c.f28390c.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (g gVar : this.f28434c.f28390c) {
                arrayList.add(f0.a.AbstractC0319a.a().d(gVar.c()).b(gVar.a()).c(gVar.b()).a());
            }
            list = Collections.unmodifiableList(arrayList);
        } else {
            list = null;
        }
        return f0.a.a().c(aVar.c()).e(aVar.e()).g(aVar.g()).i(aVar.i()).d(aVar.d()).f(aVar.f()).h(aVar.h()).j(aVar.j()).b(list).a();
    }

    private f0.b b() {
        return t7.f0.b().l("20.0.0").h(this.f28434c.f28388a).i(this.f28433b.a().c()).g(this.f28433b.a().e()).f(this.f28433b.a().d()).d(this.f28434c.f28393f).e(this.f28434c.f28394g).k(4);
    }

    private static long f(long j10) {
        if (j10 > 0) {
            return j10;
        }
        return 0L;
    }

    private static int g() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = (Integer) f28430g.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    private f0.e.d.a.b.AbstractC0323a h() {
        return f0.e.d.a.b.AbstractC0323a.a().b(0L).d(0L).c(this.f28434c.f28392e).e(this.f28434c.f28389b).a();
    }

    private List i() {
        return Collections.singletonList(h());
    }

    private f0.e.d.a j(int i10, f0.a aVar) {
        boolean z10;
        if (aVar.c() != 100) {
            z10 = true;
        } else {
            z10 = false;
        }
        return f0.e.d.a.a().c(Boolean.valueOf(z10)).d(A(aVar)).h(i10).f(o(aVar)).a();
    }

    private f0.e.d.a k(int i10, z7.e eVar, Thread thread, int i11, int i12, boolean z10) {
        Boolean bool;
        boolean z11;
        f0.e.d.a.c e10 = this.f28437f.e(this.f28432a);
        if (e10.b() > 0) {
            if (e10.b() != 100) {
                z11 = true;
            } else {
                z11 = false;
            }
            bool = Boolean.valueOf(z11);
        } else {
            bool = null;
        }
        return f0.e.d.a.a().c(bool).d(e10).b(this.f28437f.d(this.f28432a)).h(i10).f(p(eVar, thread, i11, i12, z10)).a();
    }

    private f0.e.d.c l(int i10) {
        Double d10;
        f a10 = f.a(this.f28432a);
        Float b10 = a10.b();
        if (b10 != null) {
            d10 = Double.valueOf(b10.doubleValue());
        } else {
            d10 = null;
        }
        int c10 = a10.c();
        boolean n10 = j.n(this.f28432a);
        long f10 = f(j.b(this.f28432a) - j.a(this.f28432a));
        return f0.e.d.c.a().b(d10).c(c10).f(n10).e(i10).g(f10).d(j.c(Environment.getDataDirectory().getPath())).a();
    }

    private f0.e.d.a.b.c m(z7.e eVar, int i10, int i11) {
        return n(eVar, i10, i11, 0);
    }

    private f0.e.d.a.b.c n(z7.e eVar, int i10, int i11, int i12) {
        String str = eVar.f33585b;
        String str2 = eVar.f33584a;
        StackTraceElement[] stackTraceElementArr = eVar.f33586c;
        int i13 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        z7.e eVar2 = eVar.f33587d;
        if (i12 >= i11) {
            z7.e eVar3 = eVar2;
            while (eVar3 != null) {
                eVar3 = eVar3.f33587d;
                i13++;
            }
        }
        f0.e.d.a.b.c.AbstractC0326a d10 = f0.e.d.a.b.c.a().f(str).e(str2).c(r(stackTraceElementArr, i10)).d(i13);
        if (eVar2 != null && i13 == 0) {
            d10.b(n(eVar2, i10, i11, i12 + 1));
        }
        return d10.a();
    }

    private f0.e.d.a.b o(f0.a aVar) {
        return f0.e.d.a.b.a().b(aVar).e(w()).c(i()).a();
    }

    private f0.e.d.a.b p(z7.e eVar, Thread thread, int i10, int i11, boolean z10) {
        return f0.e.d.a.b.a().f(z(eVar, thread, i10, z10)).d(m(eVar, i10, i11)).e(w()).c(i()).a();
    }

    private f0.e.d.a.b.AbstractC0329e.AbstractC0331b q(StackTraceElement stackTraceElement, f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a abstractC0332a) {
        long j10;
        long j11 = 0;
        if (stackTraceElement.isNativeMethod()) {
            j10 = Math.max(stackTraceElement.getLineNumber(), 0L);
        } else {
            j10 = 0;
        }
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            j11 = stackTraceElement.getLineNumber();
        }
        return abstractC0332a.e(j10).f(str).b(fileName).d(j11).a();
    }

    private List r(StackTraceElement[] stackTraceElementArr, int i10) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(q(stackTraceElement, f0.e.d.a.b.AbstractC0329e.AbstractC0331b.a().c(i10)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private f0.e.a s() {
        return f0.e.a.a().e(this.f28433b.f()).g(this.f28434c.f28393f).d(this.f28434c.f28394g).f(this.f28433b.a().c()).b(this.f28434c.f28395h.d()).c(this.f28434c.f28395h.e()).a();
    }

    private f0.e t(String str, long j10) {
        return f0.e.a().m(j10).j(str).h(f28431h).b(s()).l(v()).e(u()).i(3).a();
    }

    private f0.e.c u() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int g10 = g();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b10 = j.b(this.f28432a);
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean x10 = j.x();
        int l10 = j.l();
        String str = Build.MANUFACTURER;
        return f0.e.c.a().b(g10).f(Build.MODEL).c(availableProcessors).h(b10).d(blockCount).i(x10).j(l10).e(str).g(Build.PRODUCT).a();
    }

    private f0.e.AbstractC0336e v() {
        return f0.e.AbstractC0336e.a().d(3).e(Build.VERSION.RELEASE).b(Build.VERSION.CODENAME).c(j.y()).a();
    }

    private f0.e.d.a.b.AbstractC0327d w() {
        return f0.e.d.a.b.AbstractC0327d.a().d(CommonUrlParts.Values.FALSE_INTEGER).c(CommonUrlParts.Values.FALSE_INTEGER).b(0L).a();
    }

    private f0.e.d.a.b.AbstractC0329e x(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return y(thread, stackTraceElementArr, 0);
    }

    private f0.e.d.a.b.AbstractC0329e y(Thread thread, StackTraceElement[] stackTraceElementArr, int i10) {
        return f0.e.d.a.b.AbstractC0329e.a().d(thread.getName()).c(i10).b(r(stackTraceElementArr, i10)).a();
    }

    private List z(z7.e eVar, Thread thread, int i10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(y(thread, eVar.f33586c, i10));
        if (z10) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(x(key, this.f28435d.a(entry.getValue())));
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public f0.e.d c(f0.a aVar) {
        int i10 = this.f28432a.getResources().getConfiguration().orientation;
        return f0.e.d.a().g("anr").f(aVar.i()).b(j(i10, a(aVar))).c(l(i10)).a();
    }

    public f0.e.d d(Throwable th, Thread thread, String str, long j10, int i10, int i11, boolean z10) {
        int i12 = this.f28432a.getResources().getConfiguration().orientation;
        return f0.e.d.a().g(str).f(j10).b(k(i12, z7.e.a(th, this.f28435d), thread, i10, i11, z10)).c(l(i12)).a();
    }

    public t7.f0 e(String str, long j10) {
        return b().m(t(str, j10)).a();
    }
}
