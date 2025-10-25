package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.yandex.metrica.impl.ob.D3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class F3 implements P3, InterfaceC0662ki, R3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10061a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f10062b;

    /* renamed from: c  reason: collision with root package name */
    private final C0513ei f10063c;

    /* renamed from: d  reason: collision with root package name */
    private final C0834ri f10064d;

    /* renamed from: e  reason: collision with root package name */
    private final C0449c4 f10065e;

    /* renamed from: f  reason: collision with root package name */
    private final C0971xb f10066f;

    /* renamed from: g  reason: collision with root package name */
    private final N4<M4, F3> f10067g;

    /* renamed from: h  reason: collision with root package name */
    private final C0938w2<F3> f10068h;

    /* renamed from: j  reason: collision with root package name */
    private final J3 f10070j;

    /* renamed from: k  reason: collision with root package name */
    private Jf f10071k;

    /* renamed from: l  reason: collision with root package name */
    private final M f10072l;

    /* renamed from: m  reason: collision with root package name */
    private final C0904ug f10073m;

    /* renamed from: i  reason: collision with root package name */
    private List<V0> f10069i = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    private final Object f10074n = new Object();

    /* loaded from: classes2.dex */
    class a implements InterfaceC0461cg {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultReceiver f10075a;

        a(F3 f32, ResultReceiver resultReceiver) {
            this.f10075a = resultReceiver;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0461cg
        public void a(C0486dg c0486dg) {
            byte[] a10;
            ResultReceiver resultReceiver = this.f10075a;
            int i10 = ResultReceiverC0511eg.f12331b;
            if (resultReceiver != null) {
                Bundle bundle = new Bundle();
                if (c0486dg == null) {
                    a10 = null;
                } else {
                    a10 = c0486dg.a();
                }
                bundle.putByteArray("referrer", a10);
                resultReceiver.send(1, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public F3(Context context, C0513ei c0513ei, I3 i32, D3 d32, C0449c4 c0449c4, C0856sg c0856sg, J3 j32, H3 h32, N n10, C0971xb c0971xb, C0904ug c0904ug) {
        Context applicationContext = context.getApplicationContext();
        this.f10061a = applicationContext;
        this.f10062b = i32;
        this.f10063c = c0513ei;
        this.f10065e = c0449c4;
        this.f10070j = j32;
        this.f10067g = h32.a(this);
        C0834ri a10 = c0513ei.a(applicationContext, i32, d32.f9871a);
        this.f10064d = a10;
        this.f10066f = c0971xb;
        c0971xb.a(applicationContext, a10.d());
        this.f10072l = n10.a(a10, c0971xb, applicationContext);
        this.f10068h = h32.a(this, a10);
        this.f10073m = c0904ug;
        c0513ei.a(i32, this);
    }

    public void a(D3.a aVar) {
        this.f10065e.a(aVar);
    }

    public synchronized void b(C0723n4 c0723n4) {
        this.f10070j.b(c0723n4);
    }

    public synchronized void a(C0723n4 c0723n4) {
        this.f10070j.a(c0723n4);
        c0723n4.a(this.f10072l.a(Tl.a(this.f10064d.d().v())));
    }

    public Context b() {
        return this.f10061a;
    }

    public void a(C0445c0 c0445c0, C0723n4 c0723n4) {
        this.f10067g.a(c0445c0, c0723n4);
    }

    public D3.a a() {
        return this.f10065e.a();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public void a(C0787pi c0787pi) {
        this.f10066f.a(c0787pi);
        synchronized (this.f10074n) {
            Iterator<InterfaceC0648k4> it = this.f10070j.a().iterator();
            while (it.hasNext()) {
                ((K) it.next()).a(this.f10072l.a(Tl.a(c0787pi.v())));
            }
            ArrayList arrayList = new ArrayList();
            for (V0 v02 : this.f10069i) {
                if (v02.a(c0787pi)) {
                    a(v02.c(), v02.a());
                } else {
                    arrayList.add(v02);
                }
            }
            this.f10069i = new ArrayList(arrayList);
            if (!arrayList.isEmpty()) {
                this.f10068h.d();
            }
        }
        if (this.f10071k == null) {
            this.f10071k = F0.g().l();
        }
        this.f10071k.a(c0787pi);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public void a(EnumC0563gi enumC0563gi, C0787pi c0787pi) {
        synchronized (this.f10074n) {
            for (V0 v02 : this.f10069i) {
                ResultReceiver c10 = v02.c();
                L a10 = this.f10072l.a(v02.a());
                int i10 = ResultReceiverC0520f0.f12354b;
                if (c10 != null) {
                    Bundle bundle = new Bundle();
                    enumC0563gi.a(bundle);
                    a10.c(bundle);
                    c10.send(2, bundle);
                }
            }
            this.f10069i.clear();
        }
    }

    public void a(V0 v02) {
        ResultReceiver resultReceiver;
        Map<String, String> map;
        List<String> list;
        HashMap hashMap = new HashMap();
        if (v02 != null) {
            list = v02.b();
            resultReceiver = v02.c();
            map = v02.a();
        } else {
            resultReceiver = null;
            map = hashMap;
            list = null;
        }
        boolean a10 = this.f10064d.a(list, map);
        if (!a10) {
            a(resultReceiver, map);
        }
        if (!this.f10064d.e()) {
            if (a10) {
                a(resultReceiver, map);
                return;
            }
            return;
        }
        synchronized (this.f10074n) {
            if (a10 && v02 != null) {
                this.f10069i.add(v02);
            }
        }
        this.f10068h.d();
    }

    public void a(ResultReceiver resultReceiver) {
        this.f10073m.a(new a(this, resultReceiver));
    }

    @Override // com.yandex.metrica.impl.ob.R3
    public void a(D3 d32) {
        this.f10064d.a(d32.f9871a);
        this.f10065e.a(d32.f9872b);
    }

    private void a(ResultReceiver resultReceiver, Map<String, String> map) {
        L a10 = this.f10072l.a(map);
        int i10 = ResultReceiverC0520f0.f12354b;
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            a10.c(bundle);
            resultReceiver.send(1, bundle);
        }
    }
}
