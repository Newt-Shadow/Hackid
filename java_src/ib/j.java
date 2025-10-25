package ib;

import com.posthog.internal.replay.RRWireframe;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final d f17396a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17397b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17398c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f17399d;

    /* renamed from: e  reason: collision with root package name */
    private RRWireframe f17400e;

    public j(d listener, boolean z10, boolean z11, boolean z12, RRWireframe rRWireframe) {
        m.e(listener, "listener");
        this.f17396a = listener;
        this.f17397b = z10;
        this.f17398c = z11;
        this.f17399d = z12;
        this.f17400e = rRWireframe;
    }

    public final boolean a() {
        return this.f17399d;
    }

    public final RRWireframe b() {
        return this.f17400e;
    }

    public final d c() {
        return this.f17396a;
    }

    public final boolean d() {
        return this.f17397b;
    }

    public final boolean e() {
        return this.f17398c;
    }

    public final void f(boolean z10) {
        this.f17399d = z10;
    }

    public final void g(RRWireframe rRWireframe) {
        this.f17400e = rRWireframe;
    }

    public final void h(boolean z10) {
        this.f17397b = z10;
    }

    public final void i(boolean z10) {
        this.f17398c = z10;
    }

    public /* synthetic */ j(d dVar, boolean z10, boolean z11, boolean z12, RRWireframe rRWireframe, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? false : z11, (i10 & 8) != 0 ? false : z12, (i10 & 16) != 0 ? null : rRWireframe);
    }
}
