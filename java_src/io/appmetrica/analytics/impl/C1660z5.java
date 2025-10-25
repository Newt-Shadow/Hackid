package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: io.appmetrica.analytics.impl.z5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1660z5 implements B9 {

    /* renamed from: a  reason: collision with root package name */
    public final G9 f21015a;

    /* renamed from: b  reason: collision with root package name */
    public final List f21016b;

    /* renamed from: c  reason: collision with root package name */
    public final List f21017c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f21018d;

    public C1660z5(G9 g92, List<? extends O8> list, List<? extends O8> list2, C1212h5 c1212h5) {
        this.f21015a = g92;
        this.f21016b = list;
        this.f21017c = list2;
        Objects.toString(c1212h5);
        this.f21018d = new AtomicBoolean(true);
    }

    public final boolean a() {
        List<O8> list = this.f21017c;
        if (!list.isEmpty() && !list.isEmpty()) {
            for (O8 o82 : list) {
                if (!o82.b()) {
                    break;
                }
            }
        }
        List<O8> list2 = this.f21016b;
        if ((!list2.isEmpty()) && !list2.isEmpty()) {
            for (O8 o83 : list2) {
                if (o83.b()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void b() {
        this.f21018d.set(false);
    }

    public final void c() {
        this.f21018d.set(true);
    }

    public final void d() {
        if (this.f21018d.get()) {
            List<O8> list = this.f21017c;
            if (!list.isEmpty() && !list.isEmpty()) {
                for (O8 o82 : list) {
                    if (!o82.b()) {
                        return;
                    }
                }
            }
            ((Sm) this.f21015a).c();
        }
    }

    public final void e() {
        if (this.f21018d.get() && a()) {
            ((Sm) this.f21015a).c();
        }
    }

    public final void f() {
        if (this.f21018d.get() && a()) {
            ((Sm) this.f21015a).b();
        }
    }
}
