package ie;

import ge.d;
import ge.g;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class k implements ge.d {

    /* renamed from: a  reason: collision with root package name */
    private final String f17427a;

    /* renamed from: b  reason: collision with root package name */
    private final ge.d f17428b;

    /* renamed from: c  reason: collision with root package name */
    private final ge.d f17429c;

    /* renamed from: d  reason: collision with root package name */
    private final int f17430d;

    public /* synthetic */ k(String str, ge.d dVar, ge.d dVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, dVar, dVar2);
    }

    @Override // ge.d
    public String a() {
        return this.f17427a;
    }

    @Override // ge.d
    public boolean c() {
        return d.a.c(this);
    }

    @Override // ge.d
    public int d(String name) {
        Integer m10;
        kotlin.jvm.internal.m.e(name, "name");
        m10 = rd.x.m(name);
        if (m10 != null) {
            return m10.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // ge.d
    public ge.f e() {
        return g.c.f16422a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (kotlin.jvm.internal.m.a(a(), kVar.a()) && kotlin.jvm.internal.m.a(this.f17428b, kVar.f17428b) && kotlin.jvm.internal.m.a(this.f17429c, kVar.f17429c)) {
            return true;
        }
        return false;
    }

    @Override // ge.d
    public int f() {
        return this.f17430d;
    }

    @Override // ge.d
    public String g(int i10) {
        return String.valueOf(i10);
    }

    @Override // ge.d
    public List getAnnotations() {
        return d.a.a(this);
    }

    @Override // ge.d
    public List h(int i10) {
        boolean z10;
        List h10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            h10 = yc.o.h();
            return h10;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + a() + " expects only non-negative indices").toString());
    }

    public int hashCode() {
        return (((a().hashCode() * 31) + this.f17428b.hashCode()) * 31) + this.f17429c.hashCode();
    }

    @Override // ge.d
    public ge.d i(int i10) {
        boolean z10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            int i11 = i10 % 2;
            if (i11 != 0) {
                if (i11 == 1) {
                    return this.f17429c;
                }
                throw new IllegalStateException("Unreached".toString());
            }
            return this.f17428b;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + a() + " expects only non-negative indices").toString());
    }

    @Override // ge.d
    public boolean isInline() {
        return d.a.b(this);
    }

    @Override // ge.d
    public boolean j(int i10) {
        boolean z10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + a() + " expects only non-negative indices").toString());
    }

    public String toString() {
        return a() + '(' + this.f17428b + ", " + this.f17429c + ')';
    }

    private k(String str, ge.d dVar, ge.d dVar2) {
        this.f17427a = str;
        this.f17428b = dVar;
        this.f17429c = dVar2;
        this.f17430d = 2;
    }
}
