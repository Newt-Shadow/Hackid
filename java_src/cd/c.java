package cd;

import java.io.Serializable;
import kotlin.jvm.internal.m;
import yc.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c extends yc.c implements a, Serializable {

    /* renamed from: b  reason: collision with root package name */
    private final Enum[] f5166b;

    public c(Enum[] entries) {
        m.e(entries, "entries");
        this.f5166b = entries;
    }

    @Override // yc.b, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        return m((Enum) obj);
    }

    @Override // yc.b
    public int i() {
        return this.f5166b.length;
    }

    @Override // yc.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        return o((Enum) obj);
    }

    @Override // yc.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        return p((Enum) obj);
    }

    public boolean m(Enum element) {
        Object A;
        m.e(element, "element");
        A = k.A(this.f5166b, element.ordinal());
        if (((Enum) A) == element) {
            return true;
        }
        return false;
    }

    @Override // yc.c, java.util.List
    /* renamed from: n */
    public Enum get(int i10) {
        yc.c.f33226a.b(i10, this.f5166b.length);
        return this.f5166b[i10];
    }

    public int o(Enum element) {
        Object A;
        m.e(element, "element");
        int ordinal = element.ordinal();
        A = k.A(this.f5166b, ordinal);
        if (((Enum) A) != element) {
            return -1;
        }
        return ordinal;
    }

    public int p(Enum element) {
        m.e(element, "element");
        return indexOf(element);
    }
}
