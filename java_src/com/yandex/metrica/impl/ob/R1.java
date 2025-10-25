package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class R1 implements N0 {

    /* renamed from: a  reason: collision with root package name */
    private Context f11162a;

    /* renamed from: b  reason: collision with root package name */
    private A3 f11163b;

    /* renamed from: c  reason: collision with root package name */
    private T1 f11164c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f11165d;

    /* renamed from: e  reason: collision with root package name */
    private C0588hi f11166e;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, M0> f11167f;

    /* renamed from: g  reason: collision with root package name */
    private final Kn<String> f11168g;

    /* renamed from: h  reason: collision with root package name */
    private final List<String> f11169h;

    public R1(Context context, A3 a32, T1 t12, Handler handler, C0588hi c0588hi) {
        HashMap hashMap = new HashMap();
        this.f11167f = hashMap;
        this.f11168g = new Hn(new Mn(hashMap));
        this.f11169h = Arrays.asList("20799a27-fa80-4b36-b2db-0f8141f24180", "0e5e9c33-f8c3-4568-86c5-2e4f57523f72");
        this.f11162a = context;
        this.f11163b = a32;
        this.f11164c = t12;
        this.f11165d = handler;
        this.f11166e = c0588hi;
    }

    public C0620j1 a(com.yandex.metrica.j jVar, boolean z10, C0429b9 c0429b9) {
        this.f11168g.a(jVar.apiKey);
        Context context = this.f11162a;
        A3 a32 = this.f11163b;
        C0620j1 c0620j1 = new C0620j1(context, a32, jVar, this.f11164c, new C0626j7(context, a32), this.f11166e, new C0986y2(this, "20799a27-fa80-4b36-b2db-0f8141f24180"), new C0986y2(this, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"), c0429b9, P.g(), new A0(context));
        a(c0620j1);
        if (z10) {
            c0620j1.f9742i.c(c0620j1.f9735b);
        }
        Map map = jVar.f14106h;
        if (!A2.b(map)) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (TextUtils.isEmpty(str)) {
                    if (c0620j1.f9736c.isEnabled()) {
                        c0620j1.f9736c.fw("Invalid App Environment (key,value) pair: (%s,%s).", str, str2);
                    }
                } else {
                    c0620j1.f9742i.a(str, str2, c0620j1.f9735b);
                }
            }
        }
        c0620j1.a(jVar.errorEnvironment);
        c0620j1.f();
        this.f11164c.a(c0620j1);
        this.f11167f.put(jVar.apiKey, c0620j1);
        return c0620j1;
    }

    @Override // com.yandex.metrica.impl.ob.O0
    public N0 b() {
        return this;
    }

    public synchronized void c(com.yandex.metrica.f fVar) {
        if (this.f11167f.containsKey(fVar.apiKey)) {
            C0467cm b10 = Ul.b(fVar.apiKey);
            if (b10.isEnabled()) {
                b10.fw("Reporter with apiKey=%s already exists.", fVar.apiKey);
            }
        } else {
            b(fVar);
            Log.i("AppMetrica", "Activate reporter with APIKey " + A2.a(fVar.apiKey));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.yandex.metrica.impl.ob.M0] */
    @Override // com.yandex.metrica.impl.ob.N0
    public synchronized M0 b(com.yandex.metrica.f fVar) {
        C0670l1 c0670l1;
        M0 m02 = this.f11167f.get(fVar.apiKey);
        c0670l1 = m02;
        if (m02 == 0) {
            if (!this.f11169h.contains(fVar.apiKey)) {
                this.f11166e.g();
            }
            C0670l1 c0670l12 = new C0670l1(this.f11162a, this.f11163b, fVar, this.f11164c);
            a(c0670l12);
            c0670l12.f();
            this.f11167f.put(fVar.apiKey, c0670l12);
            c0670l1 = c0670l12;
        }
        return c0670l1;
    }

    @Override // com.yandex.metrica.impl.ob.N0
    public synchronized R0 a(com.yandex.metrica.j jVar) {
        R0 r02;
        R0 r03 = (M0) this.f11167f.get(jVar.apiKey);
        r02 = r03;
        if (r03 == null) {
            C0470d0 c0470d0 = new C0470d0(this.f11162a, this.f11163b, jVar, this.f11164c);
            a(c0470d0);
            c0470d0.a(jVar.errorEnvironment);
            c0470d0.f();
            r02 = c0470d0;
        }
        return r02;
    }

    private void a(B b10) {
        b10.a(new C0421b1(this.f11165d, b10));
        b10.f9735b.a(this.f11166e);
    }
}
