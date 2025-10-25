package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.lang.ref.WeakReference;
/* renamed from: io.appmetrica.analytics.impl.aj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1051aj implements InterfaceC1280k {

    /* renamed from: a  reason: collision with root package name */
    public Te f19398a;

    /* renamed from: b  reason: collision with root package name */
    public ScreenInfo f19399b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f19400c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f19401d;

    /* renamed from: e  reason: collision with root package name */
    public final Zi f19402e = new Zi();

    /* renamed from: f  reason: collision with root package name */
    public WeakReference f19403f = new WeakReference(null);

    public final synchronized void a(Activity activity) {
        this.f19403f = new WeakReference(activity);
        if (!this.f19401d) {
            if (this.f19398a == null) {
                this.f19398a = new Te(C1288k7.a(activity).a());
            }
            Te te2 = this.f19398a;
            kotlin.jvm.internal.m.b(te2);
            this.f19399b = te2.p();
            if (this.f19398a == null) {
                this.f19398a = new Te(C1288k7.a(activity).a());
            }
            Te te3 = this.f19398a;
            kotlin.jvm.internal.m.b(te3);
            this.f19400c = te3.t();
            this.f19401d = true;
        }
        if (this.f19399b == null) {
            b(activity);
        }
    }

    public final void b(Context context) {
        if (context != null) {
            this.f19402e.getClass();
            ScreenInfo a10 = Zi.a(context);
            if (a10 != null && !kotlin.jvm.internal.m.a(a10, this.f19399b)) {
                this.f19399b = a10;
                if (this.f19398a == null) {
                    this.f19398a = new Te(C1288k7.a(context).a());
                }
                Te te2 = this.f19398a;
                kotlin.jvm.internal.m.b(te2);
                te2.a(this.f19399b);
            }
        }
    }

    public final synchronized ScreenInfo a(Context context) {
        if (!this.f19401d) {
            if (this.f19398a == null) {
                this.f19398a = new Te(C1288k7.a(context).a());
            }
            Te te2 = this.f19398a;
            kotlin.jvm.internal.m.b(te2);
            this.f19399b = te2.p();
            if (this.f19398a == null) {
                this.f19398a = new Te(C1288k7.a(context).a());
            }
            Te te3 = this.f19398a;
            kotlin.jvm.internal.m.b(te3);
            this.f19400c = te3.t();
            this.f19401d = true;
        }
        b((Context) this.f19403f.get());
        if (this.f19399b == null) {
            if (AndroidUtils.isApiAchieved(30)) {
                if (!this.f19400c) {
                    b(context);
                    this.f19400c = true;
                    if (this.f19398a == null) {
                        this.f19398a = new Te(C1288k7.a(context).a());
                    }
                    Te te4 = this.f19398a;
                    kotlin.jvm.internal.m.b(te4);
                    te4.v();
                }
            } else {
                b(context);
            }
        }
        return this.f19399b;
    }

    public final void a(Te te2) {
        this.f19398a = te2;
    }
}
