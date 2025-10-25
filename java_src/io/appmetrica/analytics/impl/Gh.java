package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.internal.CounterConfiguration;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Gh extends Z3 {

    /* renamed from: c  reason: collision with root package name */
    protected M8 f18271c;

    /* renamed from: d  reason: collision with root package name */
    protected C1495sf f18272d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f18273e;

    /* renamed from: f  reason: collision with root package name */
    public String f18274f;

    public Gh(C1645yf c1645yf, CounterConfiguration counterConfiguration) {
        this(c1645yf, counterConfiguration, null);
    }

    public final void a(C1103cl c1103cl) {
        this.f18271c = new M8(c1103cl);
    }

    public final Bundle c() {
        Bundle bundle = new Bundle();
        this.f19320b.toBundle(bundle);
        C1645yf c1645yf = this.f19319a;
        synchronized (c1645yf) {
            bundle.putParcelable("PROCESS_CFG_OBJ", c1645yf);
        }
        return bundle;
    }

    public final String d() {
        M8 m82 = this.f18271c;
        if (m82.f18577a.isEmpty()) {
            return null;
        }
        return new JSONObject(m82.f18577a).toString();
    }

    public final synchronized String e() {
        return this.f18274f;
    }

    public boolean f() {
        return this.f18273e;
    }

    public Gh(C1645yf c1645yf, CounterConfiguration counterConfiguration, String str) {
        super(c1645yf, counterConfiguration);
        this.f18273e = true;
        this.f18274f = str;
    }
}
