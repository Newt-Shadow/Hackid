package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.h6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0576h6 {

    /* renamed from: a  reason: collision with root package name */
    private final C0625j6 f12505a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, byte[]> f12506b;

    public C0576h6(Context context, I3 i32) {
        Map<String, byte[]> s10;
        String a10 = i32.a();
        if (a10 != null) {
            A2.a(a10);
        }
        C0625j6 c0625j6 = new C0625j6(context, i32);
        this.f12505a = c0625j6;
        s10 = yc.h0.s(c0625j6.a());
        this.f12506b = s10;
    }

    public final Map<String, byte[]> a() {
        return new HashMap(this.f12506b);
    }

    public final void a(String str, byte[] bArr) {
        if (bArr != null) {
            if (!(bArr.length == 0)) {
                this.f12506b.put(str, bArr);
                this.f12505a.a(this.f12506b);
            }
        }
        this.f12506b.remove(str);
        this.f12505a.a(this.f12506b);
    }
}
