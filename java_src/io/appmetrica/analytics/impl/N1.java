package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class N1 {

    /* renamed from: a  reason: collision with root package name */
    public final Ba f18629a = new Ba();

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashMap f18630b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    public final LinkedHashMap f18631c = new LinkedHashMap();

    public final void a() {
    }

    public final void b() {
    }

    public final void c(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f18629a.a(action, Integer.valueOf(a(intent)));
            }
            for (Map.Entry entry : this.f18630b.entrySet()) {
                M1 m12 = (M1) entry.getKey();
                if (((L1) entry.getValue()).a(intent)) {
                    m12.a(intent);
                }
            }
        }
    }

    public final void d(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                Ba ba2 = this.f18629a;
                Integer valueOf = Integer.valueOf(a(intent));
                Collection collection = (Collection) ba2.f17991a.get(action);
                if (collection != null && collection.remove(valueOf)) {
                    if (collection.isEmpty() && ba2.f17992b) {
                        ba2.f17991a.remove(action);
                    }
                    new ArrayList(collection);
                }
            }
            for (Map.Entry entry : this.f18631c.entrySet()) {
                M1 m12 = (M1) entry.getKey();
                if (((L1) entry.getValue()).a(intent)) {
                    m12.a(intent);
                }
            }
        }
    }

    public final void a(Intent intent, int i10) {
    }

    public final void b(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f18629a.a(action, Integer.valueOf(a(intent)));
            }
            for (Map.Entry entry : this.f18630b.entrySet()) {
                M1 m12 = (M1) entry.getKey();
                if (((L1) entry.getValue()).a(intent)) {
                    m12.a(intent);
                }
            }
        }
    }

    public final void a(Intent intent, int i10, int i11) {
    }

    public final void a(Configuration configuration) {
    }

    public final void a(M1 m12) {
        this.f18631c.put(m12, new L1() { // from class: io.appmetrica.analytics.impl.yo
            @Override // io.appmetrica.analytics.impl.L1
            public final boolean a(Intent intent) {
                return N1.a(N1.this, intent);
            }
        });
    }

    public static final boolean a(N1 n12, Intent intent) {
        Collection collection;
        n12.getClass();
        return kotlin.jvm.internal.m.a("io.appmetrica.analytics.IAppMetricaService", intent.getAction()) && ((collection = (Collection) n12.f18629a.f17991a.get("io.appmetrica.analytics.IAppMetricaService")) == null || collection.size() == 0);
    }

    public final void c(M1 m12) {
        this.f18630b.put(m12, new L1() { // from class: io.appmetrica.analytics.impl.ap
            @Override // io.appmetrica.analytics.impl.L1
            public final boolean a(Intent intent) {
                return N1.c(N1.this, intent);
            }
        });
    }

    public static final boolean c(N1 n12, Intent intent) {
        n12.getClass();
        return kotlin.jvm.internal.m.a("io.appmetrica.analytics.IAppMetricaService", intent.getAction());
    }

    public final void b(M1 m12) {
        this.f18630b.put(m12, new L1() { // from class: io.appmetrica.analytics.impl.zo
            @Override // io.appmetrica.analytics.impl.L1
            public final boolean a(Intent intent) {
                return N1.b(N1.this, intent);
            }
        });
    }

    public static final boolean b(N1 n12, Intent intent) {
        Collection collection;
        n12.getClass();
        return kotlin.jvm.internal.m.a("io.appmetrica.analytics.IAppMetricaService", intent.getAction()) && (collection = (Collection) n12.f18629a.f17991a.get("io.appmetrica.analytics.IAppMetricaService")) != null && collection.size() == 1;
    }

    public static int a(Intent intent) {
        Uri data = intent.getData();
        if (data != null && kotlin.jvm.internal.m.a(data.getPath(), "/client")) {
            try {
                String queryParameter = data.getQueryParameter("pid");
                kotlin.jvm.internal.m.b(queryParameter);
                return Integer.parseInt(queryParameter);
            } catch (Throwable unused) {
            }
        }
        return -1;
    }
}
