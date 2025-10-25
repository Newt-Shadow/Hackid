package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceConfig;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceModule;
import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class G1 implements InterfaceC1481s1, InterfaceC1281k0 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f18243a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f18244b;

    /* renamed from: c  reason: collision with root package name */
    public volatile InterfaceC1456r1 f18245c;

    /* renamed from: d  reason: collision with root package name */
    public final C1484s4 f18246d;

    /* renamed from: e  reason: collision with root package name */
    public final N1 f18247e;

    /* renamed from: f  reason: collision with root package name */
    public Ug f18248f;

    /* renamed from: g  reason: collision with root package name */
    public final C1441qa f18249g;

    /* renamed from: h  reason: collision with root package name */
    public final Pd f18250h;

    /* renamed from: i  reason: collision with root package name */
    public final C1234i2 f18251i;

    /* renamed from: j  reason: collision with root package name */
    public final ICommonExecutor f18252j;

    /* renamed from: k  reason: collision with root package name */
    public final H1 f18253k;

    /* renamed from: l  reason: collision with root package name */
    public final E1 f18254l;

    /* renamed from: m  reason: collision with root package name */
    public final C1149eh f18255m;

    /* renamed from: n  reason: collision with root package name */
    public C1486s6 f18256n;

    public G1(Context context, InterfaceC1456r1 interfaceC1456r1) {
        this(context, interfaceC1456r1, new C1535u5(context));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(Intent intent, int i10) {
        b(intent, i10);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void b(Intent intent) {
        this.f18247e.d(intent);
        if (intent != null) {
            String action = intent.getAction();
            Uri data = intent.getData();
            String encodedAuthority = data == null ? null : data.getEncodedAuthority();
            if ("io.appmetrica.analytics.IAppMetricaService".equals(action) && data != null && data.getPath().equals("/client")) {
                int parseInt = Integer.parseInt(data.getQueryParameter("pid"));
                this.f18246d.a(parseInt, encodedAuthority, data.getQueryParameter("psid"));
                this.f18251i.a(parseInt);
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void c(Intent intent) {
        N1 n12 = this.f18247e;
        if (intent != null) {
            n12.getClass();
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                n12.f18629a.a(action, Integer.valueOf(N1.a(intent)));
            }
            for (Map.Entry entry : n12.f18630b.entrySet()) {
                M1 m12 = (M1) entry.getKey();
                if (((L1) entry.getValue()).a(intent)) {
                    m12.a(intent);
                }
            }
            return;
        }
        n12.getClass();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void onConfigurationChanged(Configuration configuration) {
        C1665za.E.u().a(configuration);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void onCreate() {
        String str;
        List b10;
        if (!this.f18243a) {
            this.f18249g.b(this.f18244b);
            C1665za c1665za = C1665za.E;
            synchronized (c1665za) {
                c1665za.B.initAsync();
                c1665za.f21057u.a(c1665za.f21037a);
                c1665za.f21057u.a(new Pn(c1665za.B));
                NetworkServiceLocator.init();
                c1665za.k().a(c1665za.f21053q);
                c1665za.C();
            }
            Sj.f18943a.e();
            Sl sl = C1665za.E.f21057u;
            sl.b();
            Ql b11 = sl.b();
            C1301kk o10 = C1665za.E.o();
            o10.a(new Wj(new C1344md(this.f18247e)), b11);
            sl.a(o10);
            ((C1327ll) C1665za.E.y()).getClass();
            this.f18247e.c(new F1(this));
            C1665za.E.l().init();
            C1665za.E.b().init();
            H1 h12 = this.f18253k;
            Context context = this.f18244b;
            C1484s4 c1484s4 = this.f18246d;
            h12.getClass();
            this.f18248f = new Ug(context, c1484s4, C1665za.E.f21040d.e(), new C1341ma());
            Context context2 = this.f18244b;
            AbstractC1307l1.f20005a.b(context2);
            AppMetrica.getReporter(context2, "20799a27-fa80-4b36-b2db-0f8141f24180");
            File crashesDirectory = FileUtils.getCrashesDirectory(this.f18244b);
            if (crashesDirectory != null) {
                H1 h13 = this.f18253k;
                E1 e12 = this.f18254l;
                h13.getClass();
                this.f18256n = new C1486s6(new FileObserverC1511t6(crashesDirectory, e12, new C1341ma()), crashesDirectory, new C1536u6());
                this.f18252j.execute(new Qf(crashesDirectory, this.f18254l, C1316la.a(this.f18244b)));
                C1486s6 c1486s6 = this.f18256n;
                C1536u6 c1536u6 = c1486s6.f20582c;
                File file = c1486s6.f20581b;
                c1536u6.getClass();
                if (file != null) {
                    if (file.exists()) {
                        if (!file.isDirectory() && file.delete()) {
                            file.mkdir();
                        }
                    } else {
                        file.mkdir();
                    }
                }
                c1486s6.f20580a.startWatching();
            }
            Pd pd2 = this.f18250h;
            Context context3 = this.f18244b;
            Ug ug = this.f18248f;
            pd2.getClass();
            File nativeCrashDirectory = FileUtils.getNativeCrashDirectory(context3);
            Nd nd2 = null;
            if (nativeCrashDirectory != null) {
                str = nativeCrashDirectory.getAbsolutePath();
            } else {
                str = null;
            }
            if (str != null) {
                pd2.f18778a.init(context3, new NativeCrashServiceConfig(str));
                Nd nd3 = new Nd(ug, new Od(pd2));
                pd2.f18779b = nd3;
                nd3.a(pd2.f18778a.getAllCrashes());
                NativeCrashServiceModule nativeCrashServiceModule = pd2.f18778a;
                Nd nd4 = pd2.f18779b;
                if (nd4 == null) {
                    kotlin.jvm.internal.m.s("crashReporter");
                } else {
                    nd2 = nd4;
                }
                nativeCrashServiceModule.setDefaultCrashHandler(nd2);
            }
            b10 = yc.n.b(new Zg());
            new X5(b10).run();
            this.f18243a = true;
        } else {
            C1665za.E.u().a(this.f18244b.getResources().getConfiguration());
        }
        C1665za.E.k().a();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void onDestroy() {
        Qb k10 = C1665za.E.k();
        synchronized (k10) {
            Iterator it = k10.f18816c.iterator();
            while (it.hasNext()) {
                ((InterfaceC1152ek) it.next()).onDestroy();
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void pauseUserSession(Bundle bundle) {
        C1645yf c1645yf;
        bundle.setClassLoader(C1645yf.class.getClassLoader());
        String str = C1645yf.f20986c;
        Integer num = null;
        try {
            c1645yf = (C1645yf) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            c1645yf = null;
        }
        if (c1645yf != null) {
            num = c1645yf.f20987a.getAsInteger("PROCESS_CFG_PROCESS_ID");
        }
        if (num != null) {
            this.f18251i.b(num.intValue());
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void reportData(int i10, Bundle bundle) {
        this.f18255m.getClass();
        List<Xj> list = (List) C1665za.E.f21058v.f19300a.get(Integer.valueOf(i10));
        if (list == null) {
            list = yc.o.h();
        }
        if (!list.isEmpty()) {
            for (Xj xj : list) {
                xj.reportData(i10, bundle);
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void resumeUserSession(Bundle bundle) {
        C1645yf c1645yf;
        bundle.setClassLoader(C1645yf.class.getClassLoader());
        String str = C1645yf.f20986c;
        Integer num = null;
        try {
            c1645yf = (C1645yf) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            c1645yf = null;
        }
        if (c1645yf != null) {
            num = c1645yf.f20987a.getAsInteger("PROCESS_CFG_PROCESS_ID");
        }
        if (num != null) {
            this.f18251i.c(num.intValue());
        }
    }

    public G1(Context context, InterfaceC1456r1 interfaceC1456r1, C1535u5 c1535u5) {
        this(context, interfaceC1456r1, new C1484s4(context, c1535u5), new N1(), C1441qa.f20434d, C1665za.j().d(), C1665za.j().w().e(), new H1());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(Intent intent, int i10, int i11) {
        b(intent, i11);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(Intent intent) {
        N1 n12 = this.f18247e;
        if (intent != null) {
            n12.getClass();
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                n12.f18629a.a(action, Integer.valueOf(N1.a(intent)));
            }
            for (Map.Entry entry : n12.f18630b.entrySet()) {
                M1 m12 = (M1) entry.getKey();
                if (((L1) entry.getValue()).a(intent)) {
                    m12.a(intent);
                }
            }
            return;
        }
        n12.getClass();
    }

    public G1(Context context, InterfaceC1456r1 interfaceC1456r1, C1484s4 c1484s4, N1 n12, C1441qa c1441qa, C1234i2 c1234i2, IHandlerExecutor iHandlerExecutor, H1 h12) {
        this.f18243a = false;
        this.f18254l = new E1(this);
        this.f18244b = context;
        this.f18245c = interfaceC1456r1;
        this.f18246d = c1484s4;
        this.f18247e = n12;
        this.f18249g = c1441qa;
        this.f18251i = c1234i2;
        this.f18252j = iHandlerExecutor;
        this.f18253k = h12;
        this.f18250h = C1665za.j().q();
        this.f18255m = new C1149eh();
    }

    public final void b(Intent intent, int i10) {
        Bundle extras;
        Z3 a10;
        if (intent != null) {
            intent.getExtras().setClassLoader(CounterConfiguration.class.getClassLoader());
            if (intent.getData() != null && (a10 = Z3.a(this.f18244b, (extras = intent.getExtras()))) != null) {
                C1138e6 b10 = C1138e6.b(extras);
                if (!(b10.l() | b10.m())) {
                    try {
                        Ug ug = this.f18248f;
                        C1211h4 a11 = C1211h4.a(a10);
                        G4 g42 = new G4(a10);
                        ug.f19064c.a(a11, g42).a(b10, g42);
                        ug.f19064c.a(a11.f19713c.intValue(), a11.f19712b, a11.f19714d);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        ((C1407p1) this.f18245c).f20322a.stopSelfResult(i10);
    }

    public final void a(Bundle bundle) {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        C1138e6.b(bundle);
        Ug ug = this.f18248f;
        C1138e6 b10 = C1138e6.b(bundle);
        ug.getClass();
        if (b10.m()) {
            return;
        }
        ug.f19063b.execute(new RunnableC1348mh(ug.f19062a, b10, bundle, ug.f19064c));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(InterfaceC1456r1 interfaceC1456r1) {
        this.f18245c = interfaceC1456r1;
    }

    public final void a(File file) {
        Ug ug = this.f18248f;
        ug.getClass();
        C1641yb c1641yb = new C1641yb();
        ug.f19063b.execute(new Pf(file, c1641yb, c1641yb, new Qg(ug)));
    }
}
