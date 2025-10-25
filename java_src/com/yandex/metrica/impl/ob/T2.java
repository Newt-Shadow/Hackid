package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class T2 implements T0 {

    /* renamed from: n  reason: collision with root package name */
    private static final EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason> f11387n;

    /* renamed from: a  reason: collision with root package name */
    private final Context f11388a;

    /* renamed from: b  reason: collision with root package name */
    private final C0429b9 f11389b;

    /* renamed from: c  reason: collision with root package name */
    private final C0588hi f11390c;

    /* renamed from: d  reason: collision with root package name */
    private final C0436bg f11391d;

    /* renamed from: e  reason: collision with root package name */
    private final A3 f11392e;

    /* renamed from: f  reason: collision with root package name */
    private final R1 f11393f;

    /* renamed from: g  reason: collision with root package name */
    private final T1 f11394g;

    /* renamed from: h  reason: collision with root package name */
    private final C0669l0 f11395h;

    /* renamed from: i  reason: collision with root package name */
    private final C0898ua f11396i;

    /* renamed from: j  reason: collision with root package name */
    private final C0887u f11397j;

    /* renamed from: k  reason: collision with root package name */
    private final C0746o2 f11398k;

    /* renamed from: l  reason: collision with root package name */
    private volatile C0645k1 f11399l;

    /* renamed from: m  reason: collision with root package name */
    private IIdentifierCallback f11400m;

    /* loaded from: classes2.dex */
    class a implements IIdentifierCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppMetricaDeviceIDListener f11401a;

        a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
            this.f11401a = appMetricaDeviceIDListener;
        }

        @Override // com.yandex.metrica.IIdentifierCallback
        public void onReceive(Map<String, String> map) {
            T2.a(T2.this, (IIdentifierCallback) null);
            this.f11401a.onLoaded(map.get("appmetrica_device_id_hash"));
        }

        @Override // com.yandex.metrica.IIdentifierCallback
        public void onRequestError(IIdentifierCallback.Reason reason) {
            T2.a(T2.this, (IIdentifierCallback) null);
            this.f11401a.onError((AppMetricaDeviceIDListener.Reason) T2.f11387n.get(reason));
        }
    }

    static {
        EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason> enumMap = new EnumMap<>(IIdentifierCallback.Reason.class);
        f11387n = enumMap;
        enumMap.put((EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason>) IIdentifierCallback.Reason.UNKNOWN, (IIdentifierCallback.Reason) AppMetricaDeviceIDListener.Reason.UNKNOWN);
        enumMap.put((EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason>) IIdentifierCallback.Reason.INVALID_RESPONSE, (IIdentifierCallback.Reason) AppMetricaDeviceIDListener.Reason.INVALID_RESPONSE);
        enumMap.put((EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason>) IIdentifierCallback.Reason.NETWORK, (IIdentifierCallback.Reason) AppMetricaDeviceIDListener.Reason.NETWORK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T2(Context context, S0 s02) {
        this(context.getApplicationContext(), s02, new C0429b9(C0629ja.a(context.getApplicationContext()).c()));
    }

    static /* synthetic */ IIdentifierCallback a(T2 t22, IIdentifierCallback iIdentifierCallback) {
        t22.f11400m = null;
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.O0
    public N0 b() {
        return this.f11393f;
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void c(com.yandex.metrica.f fVar) {
        this.f11393f.c(fVar);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public C0645k1 d() {
        return this.f11399l;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void setStatisticsSending(boolean z10) {
        this.f11399l.b().setStatisticsSending(z10);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void setUserProfileID(String str) {
        this.f11399l.b().setUserProfileID(str);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.j jVar) {
        this.f11396i.a(this.f11388a, this.f11390c).a(yandexMetricaConfig, this.f11390c.c());
        C0467cm b10 = Ul.b(jVar.apiKey);
        Sl a10 = Ul.a(jVar.apiKey);
        this.f11395h.getClass();
        if (this.f11399l == null) {
            this.f11391d.a();
            this.f11390c.a(b10);
            this.f11390c.a(jVar.f14102d);
            this.f11390c.a(jVar.f14100b);
            this.f11390c.a(jVar.f14101c);
            if (A2.a((Object) jVar.f14101c)) {
                this.f11390c.b("api");
            }
            this.f11392e.b(jVar);
            this.f11394g.a(jVar.locationTracking, jVar.statisticsSending, (Boolean) null);
            C0620j1 a11 = this.f11393f.a(jVar, false, this.f11389b);
            this.f11399l = new C0645k1(a11, new C0619j0(a11));
            this.f11397j.a(this.f11399l.a());
            this.f11398k.a(a11);
            this.f11390c.g();
            Log.i("AppMetrica", "Activate AppMetrica with APIKey " + A2.a(jVar.apiKey));
            if (Boolean.TRUE.equals(jVar.logs)) {
                b10.setEnabled();
                a10.setEnabled();
                C0467cm.a().setEnabled();
                Sl.a().setEnabled();
                return;
            }
            b10.setDisabled();
            a10.setDisabled();
            C0467cm.a().setDisabled();
            Sl.a().setDisabled();
        } else if (b10.isEnabled()) {
            b10.w("Appmetrica already has been activated!");
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void b(boolean z10) {
        this.f11399l.b().b(z10);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public String c() {
        return this.f11390c.b();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void c(String str, String str2) {
        this.f11399l.b().c(str, str2);
    }

    private T2(Context context, S0 s02, C0429b9 c0429b9) {
        this(context, s02, c0429b9, new O(context), new U2(), P.g(), new C0898ua());
    }

    T2(Context context, S0 s02, C0429b9 c0429b9, O o10, U2 u22, P p10, C0898ua c0898ua) {
        this.f11388a = context;
        this.f11389b = c0429b9;
        Handler c10 = s02.c();
        A3 a10 = u22.a(context, u22.a(c10, this));
        this.f11392e = a10;
        C0669l0 f10 = p10.f();
        this.f11395h = f10;
        T1 a11 = u22.a(a10, context, s02.b());
        this.f11394g = a11;
        f10.a(a11);
        o10.a(context);
        C0588hi a12 = u22.a(context, a11, c0429b9, c10);
        this.f11390c = a12;
        this.f11397j = s02.a();
        this.f11396i = c0898ua;
        a11.a(a12);
        this.f11391d = u22.a(a11, c0429b9, c10);
        this.f11393f = u22.a(context, a10, a11, c10, a12);
        this.f11398k = p10.l();
    }

    @Override // com.yandex.metrica.impl.ob.ResultReceiverC0520f0.a
    public void a(int i10, Bundle bundle) {
        this.f11390c.a(bundle, (Yh) null);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f11391d.a(deferredDeeplinkParametersListener);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f11391d.a(deferredDeeplinkListener);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        a aVar = new a(appMetricaDeviceIDListener);
        this.f11400m = aVar;
        this.f11390c.a(aVar, Collections.singletonList("appmetrica_device_id_hash"), this.f11392e.a());
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public M0 a(com.yandex.metrica.f fVar) {
        return this.f11393f.b(fVar);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public String a() {
        return this.f11390c.e();
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(IIdentifierCallback iIdentifierCallback, List<String> list) {
        this.f11390c.a(iIdentifierCallback, list, this.f11392e.a());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(Location location) {
        this.f11399l.b().a(location);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(boolean z10) {
        this.f11399l.b().a(z10);
    }
}
