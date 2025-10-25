package com.yandex.metrica.impl.ob;

import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.profile.UserProfile;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.lj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0688lj implements M0 {

    /* renamed from: a  reason: collision with root package name */
    private final C0663kj f12811a = new C0663kj();

    public void a(H6 h62) {
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void b() {
    }

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void d(String str, String str2) {
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this.f12811a;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
    }

    @Override // com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z10) {
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
    }

    public void a(C0942w6 c0942w6) {
    }

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void b(String str, String str2) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
    }
}
