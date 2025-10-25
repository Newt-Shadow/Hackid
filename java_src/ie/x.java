package ie;

import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public final class x implements ge.d, c {

    /* renamed from: a  reason: collision with root package name */
    private final ge.d f17455a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17456b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f17457c;

    public x(ge.d original) {
        kotlin.jvm.internal.m.e(original, "original");
        this.f17455a = original;
        this.f17456b = original.a() + '?';
        this.f17457c = n.a(original);
    }

    @Override // ge.d
    public String a() {
        return this.f17456b;
    }

    @Override // ie.c
    public Set b() {
        return this.f17457c;
    }

    @Override // ge.d
    public boolean c() {
        return true;
    }

    @Override // ge.d
    public int d(String name) {
        kotlin.jvm.internal.m.e(name, "name");
        return this.f17455a.d(name);
    }

    @Override // ge.d
    public ge.f e() {
        return this.f17455a.e();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof x) && kotlin.jvm.internal.m.a(this.f17455a, ((x) obj).f17455a)) {
            return true;
        }
        return false;
    }

    @Override // ge.d
    public int f() {
        return this.f17455a.f();
    }

    @Override // ge.d
    public String g(int i10) {
        return this.f17455a.g(i10);
    }

    @Override // ge.d
    public List getAnnotations() {
        return this.f17455a.getAnnotations();
    }

    @Override // ge.d
    public List h(int i10) {
        return this.f17455a.h(i10);
    }

    public int hashCode() {
        return this.f17455a.hashCode() * 31;
    }

    @Override // ge.d
    public ge.d i(int i10) {
        return this.f17455a.i(i10);
    }

    @Override // ge.d
    public boolean isInline() {
        return this.f17455a.isInline();
    }

    @Override // ge.d
    public boolean j(int i10) {
        return this.f17455a.j(i10);
    }

    public final ge.d k() {
        return this.f17455a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f17455a);
        sb2.append('?');
        return sb2.toString();
    }
}
