package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import com.yandex.metrica.impl.ob.C0768p;
import java.lang.ref.WeakReference;
/* renamed from: com.yandex.metrica.impl.ob.f2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0522f2 implements C0768p.b {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: g  reason: collision with root package name */
    private static volatile C0522f2 f12361g;

    /* renamed from: a  reason: collision with root package name */
    private final Context f12362a;

    /* renamed from: b  reason: collision with root package name */
    private C0447c2 f12363b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<Activity> f12364c = new WeakReference<>(null);

    /* renamed from: d  reason: collision with root package name */
    private final C0429b9 f12365d;

    /* renamed from: e  reason: collision with root package name */
    private final C0472d2 f12366e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12367f;

    C0522f2(Context context, C0429b9 c0429b9, C0472d2 c0472d2) {
        this.f12362a = context;
        this.f12365d = c0429b9;
        this.f12366e = c0472d2;
        this.f12363b = c0429b9.s();
        this.f12367f = c0429b9.x();
        P.g().a().a(this);
    }

    public static C0522f2 a(Context context) {
        if (f12361g == null) {
            synchronized (C0522f2.class) {
                if (f12361g == null) {
                    f12361g = new C0522f2(context, new C0429b9(C0629ja.a(context).c()), new C0472d2());
                }
            }
        }
        return f12361g;
    }

    private void b(Context context) {
        C0447c2 a10;
        if (context != null && (a10 = this.f12366e.a(context)) != null && !a10.equals(this.f12363b)) {
            this.f12363b = a10;
            this.f12365d.a(a10);
        }
    }

    public synchronized C0447c2 a() {
        b(this.f12364c.get());
        if (this.f12363b == null) {
            if (A2.a(30)) {
                if (!this.f12367f) {
                    b(this.f12362a);
                    this.f12367f = true;
                    this.f12365d.z();
                }
            } else {
                b(this.f12362a);
            }
        }
        return this.f12363b;
    }

    @Override // com.yandex.metrica.impl.ob.C0768p.b
    public synchronized void a(Activity activity) {
        this.f12364c = new WeakReference<>(activity);
        if (this.f12363b == null) {
            b(activity);
        }
    }
}
