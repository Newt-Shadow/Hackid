package com.yandex.metrica.impl.ob;

import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.profile.UserProfile;
import java.util.Map;
/* loaded from: classes2.dex */
public class Zf implements IReporter {

    /* renamed from: b  reason: collision with root package name */
    static final Kn<String> f11878b = new Hn(new Fn("Event name"));

    /* renamed from: c  reason: collision with root package name */
    static final Kn<String> f11879c = new Hn(new Fn("Error message"));

    /* renamed from: d  reason: collision with root package name */
    static final Kn<String> f11880d = new Hn(new Fn("Error identifier"));

    /* renamed from: e  reason: collision with root package name */
    static final Kn<Throwable> f11881e = new Hn(new Gn("Unhandled exception"));

    /* renamed from: f  reason: collision with root package name */
    static final Kn<UserProfile> f11882f = new Hn(new Gn("User profile"));

    /* renamed from: g  reason: collision with root package name */
    static final Kn<Revenue> f11883g = new Hn(new Gn("Revenue"));

    /* renamed from: h  reason: collision with root package name */
    static final Kn<AdRevenue> f11884h = new Hn(new Gn("AdRevenue"));

    /* renamed from: i  reason: collision with root package name */
    static final Kn<ECommerceEvent> f11885i = new Hn(new Gn("ECommerceEvent"));

    /* renamed from: a  reason: collision with root package name */
    private final Yf f11886a;

    public Zf() {
        this(new Yf());
    }

    public Yf a() {
        return this.f11886a;
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this.f11886a;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        ((Hn) f11884h).a(adRevenue);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        ((Hn) f11885i).a(eCommerceEvent);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
        ((Hn) f11879c).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
        ((Hn) f11878b).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
        ((Hn) f11883g).a(revenue);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
        ((Hn) f11881e).a(th);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
        ((Hn) f11882f).a(userProfile);
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z10) {
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
    }

    Zf(Yf yf) {
        this.f11886a = yf;
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        ((Hn) f11880d).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
        ((Hn) f11878b).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        ((Hn) f11880d).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
        ((Hn) f11878b).a(str);
    }
}
