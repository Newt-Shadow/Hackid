package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.os.Bundle;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.oj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0763oj implements T0 {
    @Override // com.yandex.metrica.impl.ob.T0
    public String a() {
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void b(boolean z10) {
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public String c() {
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public C0645k1 d() {
        return new C0645k1(new C0638jj());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void setStatisticsSending(boolean z10) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void setUserProfileID(String str) {
    }

    @Override // com.yandex.metrica.impl.ob.ResultReceiverC0520f0.a
    public void a(int i10, Bundle bundle) {
    }

    @Override // com.yandex.metrica.impl.ob.O0
    public N0 b() {
        return new C0713mj();
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void c(com.yandex.metrica.f fVar) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(Location location) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void c(String str, String str2) {
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.j jVar) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(boolean z10) {
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public M0 a(com.yandex.metrica.f fVar) {
        return new C0688lj();
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(IIdentifierCallback iIdentifierCallback, List<String> list) {
        iIdentifierCallback.onRequestError(IIdentifierCallback.Reason.UNKNOWN);
    }
}
