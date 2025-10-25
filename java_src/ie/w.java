package ie;

import ge.d;
import java.util.List;
/* loaded from: classes2.dex */
public final class w implements ge.d {

    /* renamed from: a  reason: collision with root package name */
    private final String f17453a;

    /* renamed from: b  reason: collision with root package name */
    private final ge.c f17454b;

    public w(String serialName, ge.c kind) {
        kotlin.jvm.internal.m.e(serialName, "serialName");
        kotlin.jvm.internal.m.e(kind, "kind");
        this.f17453a = serialName;
        this.f17454b = kind;
    }

    private final Void b() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // ge.d
    public String a() {
        return this.f17453a;
    }

    @Override // ge.d
    public boolean c() {
        return d.a.c(this);
    }

    @Override // ge.d
    public int d(String name) {
        kotlin.jvm.internal.m.e(name, "name");
        b();
        throw new xc.c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        if (kotlin.jvm.internal.m.a(a(), wVar.a()) && kotlin.jvm.internal.m.a(e(), wVar.e())) {
            return true;
        }
        return false;
    }

    @Override // ge.d
    public int f() {
        return 0;
    }

    @Override // ge.d
    public String g(int i10) {
        b();
        throw new xc.c();
    }

    @Override // ge.d
    public List getAnnotations() {
        return d.a.a(this);
    }

    @Override // ge.d
    public List h(int i10) {
        b();
        throw new xc.c();
    }

    public int hashCode() {
        return a().hashCode() + (e().hashCode() * 31);
    }

    @Override // ge.d
    public ge.d i(int i10) {
        b();
        throw new xc.c();
    }

    @Override // ge.d
    public boolean isInline() {
        return d.a.b(this);
    }

    @Override // ge.d
    public boolean j(int i10) {
        b();
        throw new xc.c();
    }

    @Override // ge.d
    /* renamed from: k */
    public ge.c e() {
        return this.f17454b;
    }

    public String toString() {
        return "PrimitiveDescriptor(" + a() + ')';
    }
}
