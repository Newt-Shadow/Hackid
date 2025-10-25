package io.appmetrica.analytics.internal;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import io.appmetrica.analytics.impl.BinderC1432q1;
import io.appmetrica.analytics.impl.C1325lj;
import io.appmetrica.analytics.impl.C1350mj;
import io.appmetrica.analytics.impl.C1407p1;
import io.appmetrica.analytics.impl.C1506t1;
import io.appmetrica.analytics.impl.C1535u5;
import io.appmetrica.analytics.impl.C1556v1;
import io.appmetrica.analytics.impl.C1581w1;
import io.appmetrica.analytics.impl.C1606x1;
import io.appmetrica.analytics.impl.C1631y1;
import io.appmetrica.analytics.impl.C1656z1;
import io.appmetrica.analytics.impl.C1665za;
import io.appmetrica.analytics.impl.D1;
import io.appmetrica.analytics.impl.G1;
import io.appmetrica.analytics.impl.J1;
import io.appmetrica.analytics.impl.Yj;
import io.appmetrica.analytics.logger.common.BaseReleaseLogger;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class AppMetricaService extends Service {

    /* renamed from: c  reason: collision with root package name */
    private static D1 f21085c;

    /* renamed from: a  reason: collision with root package name */
    private final C1407p1 f21086a = new C1407p1(this);

    /* renamed from: b  reason: collision with root package name */
    private final a f21087b = new a();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder;
        String action = intent.getAction();
        if (action != null && action.startsWith("io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK")) {
            iBinder = new BinderC1432q1();
        } else {
            iBinder = this.f21087b;
        }
        D1 d12 = f21085c;
        d12.f18070a.execute(new C1606x1(d12, intent));
        return iBinder;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        D1 d12 = f21085c;
        d12.f18070a.execute(new C1506t1(d12, configuration));
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C1665za.a(getApplicationContext());
        BaseReleaseLogger.init(getApplicationContext());
        D1 d12 = f21085c;
        if (d12 == null) {
            Context applicationContext = getApplicationContext();
            G1 g12 = new G1(applicationContext, this.f21086a, new C1535u5(applicationContext));
            Yj yj = C1665za.E.f21058v;
            J1 j12 = new J1(g12);
            LinkedHashMap linkedHashMap = yj.f19300a;
            Object obj = linkedHashMap.get(1);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(1, obj);
            }
            ((List) obj).add(j12);
            f21085c = new D1(C1665za.E.f21040d.b(), g12);
        } else {
            d12.f18071b.a(this.f21086a);
        }
        C1665za c1665za = C1665za.E;
        C1350mj c1350mj = new C1350mj(f21085c);
        synchronized (c1665za) {
            c1665za.f21042f = new C1325lj(c1665za.f21037a, c1350mj);
        }
        f21085c.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        f21085c.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
        D1 d12 = f21085c;
        d12.f18070a.execute(new C1631y1(d12, intent));
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i10) {
        D1 d12 = f21085c;
        d12.f18070a.execute(new C1556v1(d12, intent, i10));
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        D1 d12 = f21085c;
        d12.f18070a.execute(new C1581w1(d12, intent, i10, i11));
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        D1 d12 = f21085c;
        d12.f18070a.execute(new C1656z1(d12, intent));
        String action = intent.getAction();
        if ((action != null && action.startsWith("io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK")) || intent.getData() == null) {
            return false;
        }
        return true;
    }
}
