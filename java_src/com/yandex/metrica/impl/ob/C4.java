package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.C0808qf;
import com.yandex.metrica.impl.ob.E4;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class C4 {

    /* renamed from: h  reason: collision with root package name */
    public static final Map<Integer, Integer> f9824h = Collections.unmodifiableMap(new a());

    /* renamed from: a  reason: collision with root package name */
    private final C0445c0 f9825a;

    /* renamed from: b  reason: collision with root package name */
    private final D4 f9826b;

    /* renamed from: c  reason: collision with root package name */
    private final E4 f9827c;

    /* renamed from: d  reason: collision with root package name */
    private final C0468cn f9828d;

    /* renamed from: e  reason: collision with root package name */
    private final C0468cn f9829e;

    /* renamed from: f  reason: collision with root package name */
    private final dc.d f9830f;

    /* renamed from: g  reason: collision with root package name */
    private final O3 f9831g;

    /* loaded from: classes2.dex */
    class a extends HashMap<Integer, Integer> {
        a() {
            put(Integer.valueOf(EnumC0396a1.EVENT_TYPE_DIAGNOSTIC.b()), 22);
            put(Integer.valueOf(EnumC0396a1.EVENT_TYPE_DIAGNOSTIC_STATBOX.b()), 23);
            put(Integer.valueOf(EnumC0396a1.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING.b()), 24);
            put(Integer.valueOf(EnumC0396a1.EVENT_TYPE_APPMETRICA_DIAGNOSTICS.b()), 24);
        }
    }

    public C4(C0445c0 c0445c0, D4 d42, E4 e42, O3 o32, C0468cn c0468cn, C0468cn c0468cn2, dc.d dVar) {
        this.f9825a = c0445c0;
        this.f9826b = d42;
        this.f9827c = e42;
        this.f9831g = o32;
        this.f9829e = c0468cn;
        this.f9828d = c0468cn2;
        this.f9830f = dVar;
    }

    public byte[] a() {
        int length;
        C0808qf c0808qf = new C0808qf();
        C0808qf.d dVar = new C0808qf.d();
        c0808qf.f13297a = new C0808qf.d[]{dVar};
        E4.a a10 = this.f9827c.a();
        dVar.f13331a = a10.f9947a;
        C0808qf.d.b bVar = new C0808qf.d.b();
        dVar.f13332b = bVar;
        bVar.f13371c = 2;
        bVar.f13369a = new C0808qf.f();
        C0808qf.f fVar = dVar.f13332b.f13369a;
        long j10 = a10.f9948b;
        fVar.f13377a = j10;
        fVar.f13378b = ((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(j10 * 1000) / 1000;
        dVar.f13332b.f13370b = this.f9826b.k();
        C0808qf.d.a aVar = new C0808qf.d.a();
        dVar.f13333c = new C0808qf.d.a[]{aVar};
        aVar.f13335a = a10.f9949c;
        aVar.f13350p = this.f9831g.a(this.f9825a.o());
        aVar.f13336b = this.f9830f.currentTimeSeconds() - a10.f9948b;
        aVar.f13337c = f9824h.get(Integer.valueOf(this.f9825a.o())).intValue();
        if (!TextUtils.isEmpty(this.f9825a.g())) {
            aVar.f13338d = this.f9829e.a(this.f9825a.g());
        }
        if (!TextUtils.isEmpty(this.f9825a.q())) {
            String q10 = this.f9825a.q();
            String a11 = this.f9828d.a(q10);
            if (!TextUtils.isEmpty(a11)) {
                aVar.f13339e = a11.getBytes();
            }
            int length2 = q10.getBytes().length;
            byte[] bArr = aVar.f13339e;
            if (bArr == null) {
                length = 0;
            } else {
                length = bArr.length;
            }
            aVar.f13344j = length2 - length;
        }
        return MessageNano.toByteArray(c0808qf);
    }
}
