package com.yandex.metrica.impl.ob;

import android.content.Intent;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.j0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0619j0 {

    /* renamed from: a  reason: collision with root package name */
    private final K0 f12626a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Boolean, String> f12627b = new HashMap();

    public C0619j0(K0 k02) {
        this.f12626a = k02;
    }

    public void a(Intent intent) {
        if (intent != null) {
            a(intent.getDataString(), false);
        }
    }

    public void b(String str) {
        a(str, true);
    }

    public void a(String str) {
        a(str, false);
    }

    private void a(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!A2.a(str, this.f12627b.get(Boolean.valueOf(!z10)))) {
            this.f12626a.a(str, z10);
        }
        this.f12627b.put(Boolean.valueOf(z10), str);
    }
}
