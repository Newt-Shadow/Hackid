package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.dj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0489dj {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0439bj f12255a;

    /* renamed from: b  reason: collision with root package name */
    private final C0862sm f12256b;

    /* renamed from: c  reason: collision with root package name */
    private final C0539fj f12257c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0464cj f12258d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0489dj(InterfaceC0439bj interfaceC0439bj, InterfaceC0464cj interfaceC0464cj, C0862sm c0862sm, C0539fj c0539fj) {
        this.f12255a = interfaceC0439bj;
        this.f12258d = interfaceC0464cj;
        this.f12256b = c0862sm;
        this.f12257c = c0539fj;
    }

    public W0 a() {
        String str;
        try {
            this.f12256b.a();
            str = this.f12257c.a();
            try {
                if (TextUtils.isEmpty(str)) {
                    str = this.f12255a.a();
                    if (!TextUtils.isEmpty(str) || this.f12258d.a()) {
                        str = this.f12257c.a(str);
                    }
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str = null;
        }
        this.f12256b.b();
        if (str == null) {
            return new W0(null, U0.UNKNOWN, "Uuid must be obtained via async API YandexMetricaInternal#requestStartupIdentifiers(@NonNull Context context, @NonNull IIdentifierCallback callback,@NonNull String... identifiers)");
        }
        return new W0(str, U0.OK, null);
    }
}
