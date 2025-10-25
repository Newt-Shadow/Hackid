package hb;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private boolean f17022a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17023b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17024c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f17025d;

    /* renamed from: e  reason: collision with root package name */
    private long f17026e;

    /* renamed from: f  reason: collision with root package name */
    private long f17027f;

    public n(boolean z10, boolean z11, boolean z12, a aVar, boolean z13, long j10, long j11) {
        this.f17022a = z10;
        this.f17023b = z11;
        this.f17024c = z12;
        this.f17025d = z13;
        this.f17026e = j10;
        this.f17027f = j11;
        if (j10 != 1000) {
            this.f17027f = j10;
        }
    }

    public final boolean a() {
        return this.f17024c;
    }

    public final a b() {
        return null;
    }

    public final boolean c() {
        return this.f17023b;
    }

    public final boolean d() {
        return this.f17022a;
    }

    public final boolean e() {
        return this.f17025d;
    }

    public final long f() {
        return this.f17027f;
    }

    public final void g(boolean z10) {
        this.f17024c = z10;
    }

    public /* synthetic */ n(boolean z10, boolean z11, boolean z12, a aVar, boolean z13, long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10, (i10 & 2) != 0 ? true : z11, (i10 & 4) == 0 ? z12 : true, (i10 & 8) != 0 ? null : aVar, (i10 & 16) != 0 ? false : z13, (i10 & 32) != 0 ? 1000L : j10, (i10 & 64) == 0 ? j11 : 1000L);
    }
}
