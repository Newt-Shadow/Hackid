package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.IParamsCallback;
import com.yandex.metrica.impl.ob.ResultReceiverC0520f0;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.yandex.metrica.impl.ob.hi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0588hi implements InterfaceC0637ji, Q0 {

    /* renamed from: j  reason: collision with root package name */
    static final Map<EnumC0563gi, IParamsCallback.Reason> f12545j = Collections.unmodifiableMap(new a());

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f12546a;

    /* renamed from: b  reason: collision with root package name */
    private final T1 f12547b;

    /* renamed from: c  reason: collision with root package name */
    private final C0712mi f12548c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f12549d;

    /* renamed from: e  reason: collision with root package name */
    private C0467cm f12550e;

    /* renamed from: f  reason: collision with root package name */
    private final ResultReceiverC0520f0.a f12551f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f12552g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<Yh, List<String>> f12553h;

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f12554i;

    /* renamed from: com.yandex.metrica.impl.ob.hi$a */
    /* loaded from: classes2.dex */
    class a extends HashMap<EnumC0563gi, IParamsCallback.Reason> {
        a() {
            put(EnumC0563gi.UNKNOWN, IParamsCallback.Reason.UNKNOWN);
            put(EnumC0563gi.NETWORK, IParamsCallback.Reason.NETWORK);
            put(EnumC0563gi.PARSE, IParamsCallback.Reason.INVALID_RESPONSE);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.hi$b */
    /* loaded from: classes2.dex */
    class b implements ResultReceiverC0520f0.a {
        b(C0588hi c0588hi) {
        }

        @Override // com.yandex.metrica.impl.ob.ResultReceiverC0520f0.a
        public void a(int i10, Bundle bundle) {
        }
    }

    public C0588hi(Context context, T1 t12, C0429b9 c0429b9, Handler handler) {
        this(t12, new C0712mi(context, c0429b9), handler);
    }

    private void f() {
        WeakHashMap weakHashMap = new WeakHashMap();
        for (Map.Entry<Yh, List<String>> entry : this.f12553h.entrySet()) {
            List<String> value = entry.getValue();
            if (this.f12548c.a((Collection<String>) value)) {
                weakHashMap.put(entry.getKey(), value);
            }
        }
        for (Map.Entry entry2 : weakHashMap.entrySet()) {
            Yh yh = (Yh) entry2.getKey();
            if (yh != null) {
                a(yh, new Bundle());
            }
        }
        weakHashMap.clear();
    }

    @Override // com.yandex.metrica.impl.ob.Q0
    public long a() {
        return this.f12548c.e();
    }

    public String b() {
        return this.f12548c.c();
    }

    public C0826ra c() {
        return this.f12548c.d();
    }

    public C0541fl d() {
        return this.f12548c.f();
    }

    public String e() {
        return this.f12548c.g();
    }

    public void g() {
        boolean b10;
        synchronized (this.f12552g) {
            C0712mi c0712mi = this.f12548c;
            synchronized (c0712mi) {
                b10 = c0712mi.b(Arrays.asList(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS, "appmetrica_device_id_hash", "yandex_mobile_metrica_device_id", "yandex_mobile_metrica_get_ad_url", "yandex_mobile_metrica_report_ad_url", "yandex_mobile_metrica_uuid"));
            }
            if (b10) {
                this.f12547b.a(this.f12546a, new ResultReceiverC0520f0(this.f12549d, this.f12551f), this.f12554i);
            }
        }
    }

    C0588hi(T1 t12, C0712mi c0712mi, Handler handler) {
        this.f12546a = Arrays.asList("yandex_mobile_metrica_uuid", "yandex_mobile_metrica_device_id", "appmetrica_device_id_hash", "yandex_mobile_metrica_get_ad_url", "yandex_mobile_metrica_report_ad_url", IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS);
        this.f12552g = new Object();
        this.f12553h = new WeakHashMap();
        this.f12547b = t12;
        this.f12548c = c0712mi;
        this.f12549d = handler;
        this.f12551f = new b(this);
    }

    public void a(IIdentifierCallback iIdentifierCallback, List<String> list, Map<String, String> map) {
        Qh qh = new Qh(iIdentifierCallback);
        synchronized (this.f12552g) {
            this.f12548c.a(map);
            if (this.f12553h.isEmpty()) {
                this.f12547b.g();
            }
            this.f12553h.put(qh, list);
            if (this.f12548c.b(list)) {
                this.f12547b.a(list, new ResultReceiverC0520f0(this.f12549d, new C0612ii(this, qh)), map);
            } else {
                a(qh, new Bundle());
            }
        }
    }

    public void b(String str) {
        synchronized (this.f12552g) {
            this.f12547b.b(str);
        }
    }

    public void a(Bundle bundle, Yh yh) {
        synchronized (this.f12552g) {
            this.f12548c.a(bundle);
            f();
            f();
            if (yh != null) {
                a(yh, bundle);
            }
        }
    }

    public void a(C0467cm c0467cm) {
        this.f12550e = c0467cm;
    }

    public void a(List<String> list) {
        synchronized (this.f12552g) {
            List<String> b10 = this.f12548c.b();
            if (A2.b(list)) {
                if (!A2.b(b10)) {
                    this.f12548c.a((List<String>) null);
                    this.f12547b.a((List<String>) null);
                }
            } else if (!A2.a(list, b10)) {
                this.f12548c.a(list);
                this.f12547b.a(list);
            } else {
                this.f12547b.a(b10);
            }
        }
    }

    public void a(Map<String, String> map) {
        if (A2.b(map)) {
            return;
        }
        synchronized (this.f12552g) {
            Map<String, String> i10 = Tl.i(map);
            this.f12554i = i10;
            this.f12547b.a(i10);
            this.f12548c.a(i10);
        }
    }

    public void a(String str) {
        synchronized (this.f12552g) {
            this.f12547b.a(str);
        }
    }

    public void a(InterfaceC0566gl interfaceC0566gl) {
        this.f12548c.a(interfaceC0566gl);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.yandex.metrica.impl.ob.Yh r6, android.os.Bundle r7) {
        /*
            r5 = this;
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r0 = r5.f12553h
            boolean r0 = r0.containsKey(r6)
            if (r0 == 0) goto L98
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r0 = r5.f12553h
            java.lang.Object r0 = r0.get(r6)
            java.util.List r0 = (java.util.List) r0
            com.yandex.metrica.impl.ob.mi r1 = r5.f12548c
            boolean r1 = r1.a(r0)
            r2 = 0
            if (r1 == 0) goto L2a
            if (r0 != 0) goto L1c
            goto L26
        L1c:
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            com.yandex.metrica.impl.ob.mi r7 = r5.f12548c
            r7.a(r0, r2)
        L26:
            r6.onReceive(r2)
            goto L86
        L2a:
            java.lang.String r1 = "startup_error_key_code"
            boolean r3 = r7.containsKey(r1)
            if (r3 == 0) goto L45
            int r7 = r7.getInt(r1)
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC0563gi.UNKNOWN
            r3 = 1
            if (r7 == r3) goto L42
            r3 = 2
            if (r7 == r3) goto L3f
            goto L46
        L3f:
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC0563gi.PARSE
            goto L46
        L42:
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC0563gi.NETWORK
            goto L46
        L45:
            r1 = r2
        L46:
            if (r1 != 0) goto L64
            com.yandex.metrica.impl.ob.mi r7 = r5.f12548c
            boolean r7 = r7.a()
            if (r7 != 0) goto L62
            com.yandex.metrica.impl.ob.cm r7 = r5.f12550e
            if (r7 == 0) goto L5f
            java.util.Map<java.lang.String, java.lang.String> r3 = r5.f12554i
            java.lang.Object[] r3 = new java.lang.Object[]{r3}
            java.lang.String r4 = "Clids error. Passed clids: %s, and clids from server are empty."
            r7.fw(r4, r3)
        L5f:
            com.yandex.metrica.IParamsCallback$Reason r7 = com.yandex.metrica.IParamsCallback.Reason.INCONSISTENT_CLIDS
            goto L65
        L62:
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC0563gi.UNKNOWN
        L64:
            r7 = r2
        L65:
            if (r7 != 0) goto L76
            java.util.Map<com.yandex.metrica.impl.ob.gi, com.yandex.metrica.IParamsCallback$Reason> r7 = com.yandex.metrica.impl.ob.C0588hi.f12545j
            com.yandex.metrica.IParamsCallback$Reason r3 = com.yandex.metrica.IParamsCallback.Reason.UNKNOWN
            java.lang.Object r7 = r7.get(r1)
            if (r7 != 0) goto L72
            goto L73
        L72:
            r3 = r7
        L73:
            r7 = r3
            com.yandex.metrica.IParamsCallback$Reason r7 = (com.yandex.metrica.IParamsCallback.Reason) r7
        L76:
            if (r0 != 0) goto L79
            goto L83
        L79:
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            com.yandex.metrica.impl.ob.mi r1 = r5.f12548c
            r1.a(r0, r2)
        L83:
            r6.a(r7, r2)
        L86:
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r7 = r5.f12553h
            r7.remove(r6)
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r6 = r5.f12553h
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto L98
            com.yandex.metrica.impl.ob.T1 r6 = r5.f12547b
            r6.f()
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0588hi.a(com.yandex.metrica.impl.ob.Yh, android.os.Bundle):void");
    }
}
