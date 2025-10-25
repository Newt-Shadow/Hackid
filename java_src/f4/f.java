package f4;

import android.net.Uri;
import b3.x1;
import java.util.Map;
import x4.e0;
import x4.l0;
/* loaded from: classes.dex */
public abstract class f implements e0.e {

    /* renamed from: a  reason: collision with root package name */
    public final long f15778a = d4.n.a();

    /* renamed from: b  reason: collision with root package name */
    public final x4.n f15779b;

    /* renamed from: c  reason: collision with root package name */
    public final int f15780c;

    /* renamed from: d  reason: collision with root package name */
    public final x1 f15781d;

    /* renamed from: e  reason: collision with root package name */
    public final int f15782e;

    /* renamed from: f  reason: collision with root package name */
    public final Object f15783f;

    /* renamed from: g  reason: collision with root package name */
    public final long f15784g;

    /* renamed from: h  reason: collision with root package name */
    public final long f15785h;

    /* renamed from: i  reason: collision with root package name */
    protected final l0 f15786i;

    public f(x4.j jVar, x4.n nVar, int i10, x1 x1Var, int i11, Object obj, long j10, long j11) {
        this.f15786i = new l0(jVar);
        this.f15779b = (x4.n) y4.a.e(nVar);
        this.f15780c = i10;
        this.f15781d = x1Var;
        this.f15782e = i11;
        this.f15783f = obj;
        this.f15784g = j10;
        this.f15785h = j11;
    }

    public final long b() {
        return this.f15786i.q();
    }

    public final long d() {
        return this.f15785h - this.f15784g;
    }

    public final Map e() {
        return this.f15786i.s();
    }

    public final Uri f() {
        return this.f15786i.r();
    }
}
