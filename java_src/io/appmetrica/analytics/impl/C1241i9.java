package io.appmetrica.analytics.impl;

import java.util.HashMap;
import java.util.LinkedList;
/* renamed from: io.appmetrica.analytics.impl.i9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1241i9 extends AbstractC1670zf {

    /* renamed from: a  reason: collision with root package name */
    public final C1473ri f19779a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f19780b;

    /* renamed from: c  reason: collision with root package name */
    public final H4 f19781c;

    public C1241i9(C1386o5 c1386o5) {
        C1473ri c1473ri = new C1473ri(c1386o5);
        this.f19779a = c1473ri;
        this.f19781c = new H4(c1473ri);
        this.f19780b = a();
    }

    public final HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put(EnumC1367nb.EVENT_TYPE_ACTIVATION, new C1206h(this.f19779a));
        hashMap.put(EnumC1367nb.EVENT_TYPE_START, new C1427pl(this.f19779a));
        hashMap.put(EnumC1367nb.EVENT_TYPE_REGULAR, new Eg(this.f19779a));
        C1541ub c1541ub = new C1541ub(this.f19779a);
        hashMap.put(EnumC1367nb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_TYPE_SEND_REFERRER, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_TYPE_CUSTOM_EVENT, c1541ub);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_SET_SESSION_EXTRA;
        C1473ri c1473ri = this.f19779a;
        hashMap.put(enumC1367nb, new C1302kl(c1473ri, c1473ri.f20549t));
        hashMap.put(EnumC1367nb.EVENT_TYPE_APP_OPEN, new Lg(this.f19779a));
        hashMap.put(EnumC1367nb.EVENT_TYPE_PURGE_BUFFER, new Nf(this.f19779a));
        hashMap.put(EnumC1367nb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, new D6(this.f19779a));
        hashMap.put(EnumC1367nb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF, new C1520tf(this.f19779a));
        hashMap.put(EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE, new Bn(this.f19779a));
        An an = new An(this.f19779a);
        hashMap.put(EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF, an);
        hashMap.put(EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT, an);
        hashMap.put(EnumC1367nb.EVENT_TYPE_ANR, c1541ub);
        EnumC1367nb enumC1367nb2 = EnumC1367nb.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        C1473ri c1473ri2 = this.f19779a;
        hashMap.put(enumC1367nb2, new C1302kl(c1473ri2, c1473ri2.f20534e));
        EnumC1367nb enumC1367nb3 = EnumC1367nb.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        C1473ri c1473ri3 = this.f19779a;
        hashMap.put(enumC1367nb3, new C1302kl(c1473ri3, c1473ri3.f20535f));
        hashMap.put(EnumC1367nb.EVENT_TYPE_SEND_USER_PROFILE, c1541ub);
        EnumC1367nb enumC1367nb4 = EnumC1367nb.EVENT_TYPE_SET_USER_PROFILE_ID;
        C1473ri c1473ri4 = this.f19779a;
        hashMap.put(enumC1367nb4, new C1302kl(c1473ri4, c1473ri4.f20540k));
        hashMap.put(EnumC1367nb.EVENT_TYPE_SEND_REVENUE_EVENT, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_TYPE_SEND_AD_REVENUE_EVENT, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_TYPE_CLEANUP, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_TYPE_SEND_ECOMMERCE_EVENT, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_TYPE_WEBVIEW_SYNC, c1541ub);
        hashMap.put(EnumC1367nb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION, new Q9(this.f19779a));
        return hashMap;
    }

    public final C1473ri b() {
        return this.f19779a;
    }

    public final void a(EnumC1367nb enumC1367nb, Aa aa2) {
        this.f19780b.put(enumC1367nb, aa2);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1670zf
    public final AbstractC1216h9 a(int i10) {
        LinkedList linkedList = new LinkedList();
        EnumC1367nb a10 = EnumC1367nb.a(i10);
        H4 h42 = this.f19781c;
        if (h42 != null) {
            h42.a(a10, linkedList);
        }
        Aa aa2 = (Aa) this.f19780b.get(a10);
        if (aa2 != null) {
            aa2.a(linkedList);
        }
        return new C1191g9(linkedList);
    }

    public final Aa a(EnumC1367nb enumC1367nb) {
        return (Aa) this.f19780b.get(enumC1367nb);
    }
}
