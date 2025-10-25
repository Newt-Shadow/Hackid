package io.appmetrica.analytics.impl;

import android.util.Pair;
/* renamed from: io.appmetrica.analytics.impl.c0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1082c0 {

    /* renamed from: a  reason: collision with root package name */
    public Rc f19448a;

    /* renamed from: b  reason: collision with root package name */
    public long f19449b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f19450c;

    /* renamed from: d  reason: collision with root package name */
    public final C1103cl f19451d;

    public C1082c0(String str, long j10, C1103cl c1103cl) {
        this.f19449b = j10;
        try {
            this.f19448a = new Rc(str);
        } catch (Throwable unused) {
            this.f19448a = new Rc();
        }
        this.f19451d = c1103cl;
    }

    public final synchronized void a(Pair pair) {
        if (this.f19451d.b(this.f19448a, (String) pair.first, (String) pair.second)) {
            this.f19450c = true;
        }
    }

    public final synchronized String toString() {
        return "Map size " + this.f19448a.size() + ". Is changed " + this.f19450c + ". Current revision " + this.f19449b;
    }

    public final synchronized C1057b0 a() {
        if (this.f19450c) {
            this.f19449b++;
            this.f19450c = false;
        }
        return new C1057b0(AbstractC1491sb.b(this.f19448a), this.f19449b);
    }
}
