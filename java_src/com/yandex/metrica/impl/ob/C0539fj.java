package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
/* renamed from: com.yandex.metrica.impl.ob.fj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0539fj {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12419a;

    /* renamed from: b  reason: collision with root package name */
    private final B0 f12420b;

    /* renamed from: c  reason: collision with root package name */
    private final C0641jm f12421c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0539fj(Context context, B0 b02, C0641jm c0641jm) {
        this.f12419a = context;
        this.f12420b = b02;
        this.f12421c = c0641jm;
    }

    public String a() {
        return L0.a(this.f12420b.a(this.f12419a, "uuid.dat"));
    }

    public String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                str = this.f12421c.a();
            }
            File a10 = this.f12420b.a(this.f12419a, "uuid.dat");
            if (a10 != null) {
                L0.a(str, "uuid.dat", new FileOutputStream(a10));
            }
            return str;
        } catch (Throwable unused) {
            return null;
        }
    }
}
