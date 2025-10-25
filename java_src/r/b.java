package r;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import yc.w;
/* loaded from: classes.dex */
public final class b implements Collection, Set, jd.b {

    /* renamed from: a  reason: collision with root package name */
    private int[] f28814a;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f28815b;

    /* renamed from: c  reason: collision with root package name */
    private int f28816c;

    /* loaded from: classes.dex */
    private final class a extends e {
        public a() {
            super(b.this.n());
        }

        @Override // r.e
        protected Object b(int i10) {
            return b.this.t(i10);
        }

        @Override // r.e
        protected void c(int i10) {
            b.this.o(i10);
        }
    }

    public b() {
        this(0, 1, null);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        int i10;
        int c10;
        int n10 = n();
        boolean z10 = false;
        if (obj == null) {
            c10 = d.d(this);
            i10 = 0;
        } else {
            int hashCode = obj.hashCode();
            i10 = hashCode;
            c10 = d.c(this, obj, hashCode);
        }
        if (c10 >= 0) {
            return false;
        }
        int i11 = ~c10;
        if (n10 >= l().length) {
            int i12 = 8;
            if (n10 >= 8) {
                i12 = (n10 >> 1) + n10;
            } else if (n10 < 4) {
                i12 = 4;
            }
            int[] l10 = l();
            Object[] i13 = i();
            d.a(this, i12);
            if (n10 == n()) {
                if (l().length == 0) {
                    z10 = true;
                }
                if (!z10) {
                    yc.j.i(l10, l(), 0, 0, l10.length, 6, null);
                    yc.j.j(i13, i(), 0, 0, i13.length, 6, null);
                }
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i11 < n10) {
            int i14 = i11 + 1;
            yc.j.e(l(), l(), i14, i11, n10);
            yc.j.g(i(), i(), i14, i11, n10);
        }
        if (n10 == n() && i11 < l().length) {
            l()[i11] = i10;
            i()[i11] = obj;
            s(n() + 1);
            return true;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection elements) {
        m.e(elements, "elements");
        g(n() + elements.size());
        boolean z10 = false;
        for (Object obj : elements) {
            z10 |= add(obj);
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (n() != 0) {
            r(s.a.f29216a);
            p(s.a.f29218c);
            s(0);
        }
        if (n() == 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection elements) {
        m.e(elements, "elements");
        for (Object obj : elements) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && size() == ((Set) obj).size()) {
            try {
                int n10 = n();
                for (int i10 = 0; i10 < n10; i10++) {
                    if (((Set) obj).contains(t(i10))) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final void g(int i10) {
        int n10 = n();
        if (l().length < i10) {
            int[] l10 = l();
            Object[] i11 = i();
            d.a(this, i10);
            if (n() > 0) {
                yc.j.i(l10, l(), 0, 0, n(), 6, null);
                yc.j.j(i11, i(), 0, 0, n(), 6, null);
            }
        }
        if (n() == n10) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] l10 = l();
        int n10 = n();
        int i10 = 0;
        for (int i11 = 0; i11 < n10; i11++) {
            i10 += l10[i11];
        }
        return i10;
    }

    public final Object[] i() {
        return this.f28815b;
    }

    public final int indexOf(Object obj) {
        if (obj == null) {
            return d.d(this);
        }
        return d.c(this, obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        if (n() <= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new a();
    }

    public final int[] l() {
        return this.f28814a;
    }

    public int m() {
        return this.f28816c;
    }

    public final int n() {
        return this.f28816c;
    }

    public final Object o(int i10) {
        int n10 = n();
        Object obj = i()[i10];
        if (n10 <= 1) {
            clear();
        } else {
            int i11 = n10 - 1;
            int i12 = 8;
            if (l().length > 8 && n() < l().length / 3) {
                if (n() > 8) {
                    i12 = n() + (n() >> 1);
                }
                int[] l10 = l();
                Object[] i13 = i();
                d.a(this, i12);
                if (i10 > 0) {
                    yc.j.i(l10, l(), 0, 0, i10, 6, null);
                    yc.j.j(i13, i(), 0, 0, i10, 6, null);
                }
                if (i10 < i11) {
                    int i14 = i10 + 1;
                    int i15 = i11 + 1;
                    yc.j.e(l10, l(), i10, i14, i15);
                    yc.j.g(i13, i(), i10, i14, i15);
                }
            } else {
                if (i10 < i11) {
                    int i16 = i10 + 1;
                    int i17 = i11 + 1;
                    yc.j.e(l(), l(), i10, i16, i17);
                    yc.j.g(i(), i(), i10, i16, i17);
                }
                i()[i11] = null;
            }
            if (n10 == n()) {
                s(i11);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        return obj;
    }

    public final void p(Object[] objArr) {
        m.e(objArr, "<set-?>");
        this.f28815b = objArr;
    }

    public final void r(int[] iArr) {
        m.e(iArr, "<set-?>");
        this.f28814a = iArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            o(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection elements) {
        m.e(elements, "elements");
        boolean z10 = false;
        for (Object obj : elements) {
            z10 |= remove(obj);
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection elements) {
        boolean I;
        m.e(elements, "elements");
        boolean z10 = false;
        for (int n10 = n() - 1; -1 < n10; n10--) {
            I = w.I(elements, i()[n10]);
            if (!I) {
                o(n10);
                z10 = true;
            }
        }
        return z10;
    }

    public final void s(int i10) {
        this.f28816c = i10;
    }

    @Override // java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return m();
    }

    public final Object t(int i10) {
        return i()[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        Object[] l10;
        l10 = yc.j.l(this.f28815b, 0, this.f28816c);
        return l10;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(n() * 14);
        sb2.append('{');
        int n10 = n();
        for (int i10 = 0; i10 < n10; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            Object t10 = t(i10);
            if (t10 != this) {
                sb2.append(t10);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        m.d(sb3, "StringBuilder(capacity).…builderAction).toString()");
        return sb3;
    }

    public b(int i10) {
        this.f28814a = s.a.f29216a;
        this.f28815b = s.a.f29218c;
        if (i10 > 0) {
            d.a(this, i10);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] array) {
        m.e(array, "array");
        Object[] result = c.a(array, this.f28816c);
        yc.j.g(this.f28815b, result, 0, 0, this.f28816c);
        m.d(result, "result");
        return result;
    }

    public /* synthetic */ b(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
