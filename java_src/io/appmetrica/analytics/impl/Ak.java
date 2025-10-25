package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Ak {

    /* renamed from: a  reason: collision with root package name */
    public final String f17960a;

    /* renamed from: b  reason: collision with root package name */
    public final C1575vk f17961b;

    /* renamed from: c  reason: collision with root package name */
    public final C1675zk f17962c;

    /* renamed from: d  reason: collision with root package name */
    public final IBinaryDataHelper f17963d;

    public Ak(Context context, C1212h5 c1212h5) {
        c1212h5.a();
        this.f17960a = "session_extras";
        this.f17961b = new C1575vk();
        this.f17962c = new C1675zk();
        this.f17963d = C1288k7.a(context).a(c1212h5);
    }

    public final Map a() {
        boolean z10;
        try {
            byte[] bArr = this.f17963d.get(this.f17960a);
            if (bArr != null) {
                if (bArr.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    return this.f17961b.toModel(this.f17962c.toState(bArr));
                }
            }
        } catch (Throwable unused) {
        }
        C1575vk c1575vk = this.f17961b;
        this.f17962c.getClass();
        return c1575vk.toModel(new C1625xk());
    }
}
