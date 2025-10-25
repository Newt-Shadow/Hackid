package com.yandex.metrica.impl.ob;

import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class A1 implements B1 {

    /* renamed from: a  reason: collision with root package name */
    private final C0838rm<String, Integer> f9689a = new C0838rm<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<e, d> f9690b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<e, d> f9691c = new LinkedHashMap();

    /* loaded from: classes2.dex */
    class a implements d {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.A1.d
        public boolean a(Intent intent, A1 a12) {
            return A1.a(A1.this, intent);
        }
    }

    /* loaded from: classes2.dex */
    class b implements d {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.A1.d
        public boolean a(Intent intent, A1 a12) {
            return A1.this.e(intent);
        }
    }

    /* loaded from: classes2.dex */
    class c implements d {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.A1.d
        public boolean a(Intent intent, A1 a12) {
            if (A1.this.e(intent) && A1.a(A1.this)) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface d {
        boolean a(Intent intent, A1 a12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface e {
        void a(Intent intent);
    }

    private int d(Intent intent) {
        Uri data = intent.getData();
        if (data != null && data.getPath().equals("/client")) {
            try {
                return Integer.parseInt(data.getQueryParameter("pid"));
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(Intent intent) {
        boolean z10 = false;
        if (!"com.yandex.metrica.IMetricaService".equals(intent.getAction())) {
            return false;
        }
        if (d(intent) == Process.myPid()) {
            z10 = true;
        }
        return !z10;
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f9689a.a(action, Integer.valueOf(d(intent)));
            }
            a(intent, this.f9690b);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void c(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f9689a.a(action, Integer.valueOf(d(intent)));
            }
            a(intent, this.f9690b);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f9689a.b(action, Integer.valueOf(d(intent)));
            }
            a(intent, this.f9691c);
        }
    }

    private void a(Intent intent, Map<e, d> map) {
        for (Map.Entry<e, d> entry : map.entrySet()) {
            if (entry.getValue().a(intent, this)) {
                entry.getKey().a(intent);
            }
        }
    }

    public void c(e eVar) {
        this.f9690b.put(eVar, new b());
    }

    private int c() {
        Collection<Integer> a10 = this.f9689a.a("com.yandex.metrica.IMetricaService");
        if (A2.b(a10)) {
            return 0;
        }
        int i10 = 0;
        for (Integer num : a10) {
            if (!(num.intValue() == Process.myPid())) {
                i10++;
            }
        }
        return i10;
    }

    public void b(e eVar) {
        this.f9690b.put(eVar, new a());
    }

    public void a(e eVar) {
        this.f9691c.put(eVar, new c());
    }

    static boolean a(A1 a12, Intent intent) {
        if (a12.e(intent)) {
            return a12.c() == 1;
        }
        return false;
    }

    static boolean a(A1 a12) {
        return a12.c() == 0;
    }
}
