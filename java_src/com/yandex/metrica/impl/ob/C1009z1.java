package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.z1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1009z1 {

    /* renamed from: a  reason: collision with root package name */
    private final B0 f14052a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f14053b;

    public C1009z1(Xl xl) {
        this(xl, new B0());
    }

    public void a(Context context) {
        long j10;
        String a10;
        synchronized (this) {
        }
        if (!this.f14053b) {
            synchronized (this) {
                try {
                    a10 = L0.a(this.f14052a.a(context, "metrica_service_settings.dat"));
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(a10)) {
                    j10 = new JSONObject(a10).optLong("delay");
                }
                j10 = 0;
            }
            if (j10 > 0) {
                try {
                    Thread.sleep(j10);
                } catch (Throwable unused2) {
                }
            }
            this.f14053b = true;
        }
    }

    C1009z1(Xl xl, B0 b02) {
        this.f14053b = false;
        this.f14052a = b02;
    }
}
