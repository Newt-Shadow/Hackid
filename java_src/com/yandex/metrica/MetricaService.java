package com.yandex.metrica;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.impl.ob.C0646k2;
import com.yandex.metrica.impl.ob.C0794q1;
import com.yandex.metrica.impl.ob.C0817r1;
import com.yandex.metrica.impl.ob.F0;
import com.yandex.metrica.impl.ob.InterfaceC0770p1;
import com.yandex.metrica.impl.ob.Vl;
/* loaded from: classes.dex */
public class MetricaService extends Service {

    /* renamed from: c  reason: collision with root package name */
    private static InterfaceC0770p1 f9540c;

    /* renamed from: a  reason: collision with root package name */
    private final d f9541a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final IMetricaService.a f9542b = new b(this);

    /* loaded from: classes.dex */
    class a implements d {
        a() {
        }

        @Override // com.yandex.metrica.MetricaService.d
        public void a(int i10) {
            MetricaService.this.stopSelfResult(i10);
        }
    }

    /* loaded from: classes.dex */
    class b extends IMetricaService.a {
        b(MetricaService metricaService) {
        }

        @Override // com.yandex.metrica.IMetricaService
        public void a(int i10, Bundle bundle) {
            MetricaService.f9540c.a(i10, bundle);
        }

        @Override // com.yandex.metrica.IMetricaService
        public void b(Bundle bundle) {
            MetricaService.f9540c.b(bundle);
        }

        @Override // com.yandex.metrica.IMetricaService
        public void reportData(Bundle bundle) {
            MetricaService.f9540c.reportData(bundle);
        }

        @Override // com.yandex.metrica.IMetricaService
        public void a(Bundle bundle) {
            MetricaService.f9540c.a(bundle);
        }
    }

    /* loaded from: classes.dex */
    static class c extends Binder {
        c() {
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(int i10);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder;
        if ("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER".equals(intent.getAction())) {
            iBinder = new c();
        } else {
            iBinder = this.f9542b;
        }
        f9540c.a(intent);
        return iBinder;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        f9540c.onConfigurationChanged(configuration);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        F0.a(getApplicationContext());
        Vl.a(getApplicationContext());
        InterfaceC0770p1 interfaceC0770p1 = f9540c;
        if (interfaceC0770p1 == null) {
            f9540c = new C0794q1(new C0817r1(getApplicationContext(), this.f9541a));
        } else {
            interfaceC0770p1.a(this.f9541a);
        }
        f9540c.a();
        F0.g().a(new C0646k2(f9540c));
    }

    @Override // android.app.Service
    public void onDestroy() {
        f9540c.b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
        f9540c.c(intent);
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i10) {
        f9540c.a(intent, i10);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        f9540c.a(intent, i10, i11);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        boolean z10;
        f9540c.b(intent);
        if ("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER".equals(intent.getAction())) {
            return false;
        }
        if (intent.getData() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return false;
        }
        return true;
    }
}
