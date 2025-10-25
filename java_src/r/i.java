package r;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private int[] f28835a;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f28836b;

    /* renamed from: c  reason: collision with root package name */
    private int f28837c;

    public i() {
        this(0, 1, null);
    }

    private final int c(Object obj, int i10) {
        int i11 = this.f28837c;
        if (i11 == 0) {
            return -1;
        }
        int a10 = s.a.a(this.f28835a, i11, i10);
        if (a10 < 0) {
            return a10;
        }
        if (m.a(obj, this.f28836b[a10 << 1])) {
            return a10;
        }
        int i12 = a10 + 1;
        while (i12 < i11 && this.f28835a[i12] == i10) {
            if (m.a(obj, this.f28836b[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = a10 - 1; i13 >= 0 && this.f28835a[i13] == i10; i13--) {
            if (m.a(obj, this.f28836b[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    private final int f() {
        int i10 = this.f28837c;
        if (i10 == 0) {
            return -1;
        }
        int a10 = s.a.a(this.f28835a, i10, 0);
        if (a10 < 0) {
            return a10;
        }
        if (this.f28836b[a10 << 1] == null) {
            return a10;
        }
        int i11 = a10 + 1;
        while (i11 < i10 && this.f28835a[i11] == 0) {
            if (this.f28836b[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = a10 - 1; i12 >= 0 && this.f28835a[i12] == 0; i12--) {
            if (this.f28836b[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public final int a(Object obj) {
        int i10 = this.f28837c * 2;
        Object[] objArr = this.f28836b;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (m.a(obj, objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public void b(int i10) {
        int i11 = this.f28837c;
        int[] iArr = this.f28835a;
        if (iArr.length < i10) {
            int[] copyOf = Arrays.copyOf(iArr, i10);
            m.d(copyOf, "copyOf(this, newSize)");
            this.f28835a = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f28836b, i10 * 2);
            m.d(copyOf2, "copyOf(this, newSize)");
            this.f28836b = copyOf2;
        }
        if (this.f28837c == i11) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public void clear() {
        if (this.f28837c > 0) {
            this.f28835a = s.a.f29216a;
            this.f28836b = s.a.f29218c;
            this.f28837c = 0;
        }
        if (this.f28837c <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean containsKey(Object obj) {
        if (e(obj) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(Object obj) {
        if (a(obj) >= 0) {
            return true;
        }
        return false;
    }

    public int e(Object obj) {
        if (obj == null) {
            return f();
        }
        return c(obj, obj.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof i) {
                if (size() != ((i) obj).size()) {
                    return false;
                }
                i iVar = (i) obj;
                int i10 = this.f28837c;
                for (int i11 = 0; i11 < i10; i11++) {
                    Object g10 = g(i11);
                    Object k10 = k(i11);
                    Object obj2 = iVar.get(g10);
                    if (k10 == null) {
                        if (obj2 != null || !iVar.containsKey(g10)) {
                            return false;
                        }
                    } else if (!m.a(k10, obj2)) {
                        return false;
                    }
                }
                return true;
            } else if (!(obj instanceof Map) || size() != ((Map) obj).size()) {
                return false;
            } else {
                int i12 = this.f28837c;
                for (int i13 = 0; i13 < i12; i13++) {
                    Object g11 = g(i13);
                    Object k11 = k(i13);
                    Object obj3 = ((Map) obj).get(g11);
                    if (k11 == null) {
                        if (obj3 != null || !((Map) obj).containsKey(g11)) {
                            return false;
                        }
                    } else if (!m.a(k11, obj3)) {
                        return false;
                    }
                }
                return true;
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public Object g(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.f28837c) {
            z10 = true;
        }
        if (z10) {
            return this.f28836b[i10 << 1];
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
    }

    public Object get(Object obj) {
        int e10 = e(obj);
        if (e10 >= 0) {
            return this.f28836b[(e10 << 1) + 1];
        }
        return null;
    }

    public Object getOrDefault(Object obj, Object obj2) {
        int e10 = e(obj);
        if (e10 >= 0) {
            return this.f28836b[(e10 << 1) + 1];
        }
        return obj2;
    }

    public void h(i map) {
        m.e(map, "map");
        int i10 = map.f28837c;
        b(this.f28837c + i10);
        if (this.f28837c == 0) {
            if (i10 > 0) {
                yc.j.e(map.f28835a, this.f28835a, 0, 0, i10);
                yc.j.g(map.f28836b, this.f28836b, 0, 0, i10 << 1);
                this.f28837c = i10;
                return;
            }
            return;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            put(map.g(i11), map.k(i11));
        }
    }

    public int hashCode() {
        int i10;
        int[] iArr = this.f28835a;
        Object[] objArr = this.f28836b;
        int i11 = this.f28837c;
        int i12 = 1;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            Object obj = objArr[i12];
            int i15 = iArr[i13];
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i14 += i10 ^ i15;
            i13++;
            i12 += 2;
        }
        return i14;
    }

    public Object i(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 < this.f28837c) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            Object[] objArr = this.f28836b;
            int i11 = i10 << 1;
            Object obj = objArr[i11 + 1];
            int i12 = this.f28837c;
            if (i12 <= 1) {
                clear();
            } else {
                int i13 = i12 - 1;
                int[] iArr = this.f28835a;
                int i14 = 8;
                if (iArr.length > 8 && i12 < iArr.length / 3) {
                    if (i12 > 8) {
                        i14 = i12 + (i12 >> 1);
                    }
                    int[] copyOf = Arrays.copyOf(iArr, i14);
                    m.d(copyOf, "copyOf(this, newSize)");
                    this.f28835a = copyOf;
                    Object[] copyOf2 = Arrays.copyOf(this.f28836b, i14 << 1);
                    m.d(copyOf2, "copyOf(this, newSize)");
                    this.f28836b = copyOf2;
                    if (i12 == this.f28837c) {
                        if (i10 > 0) {
                            yc.j.e(iArr, this.f28835a, 0, 0, i10);
                            yc.j.g(objArr, this.f28836b, 0, 0, i11);
                        }
                        if (i10 < i13) {
                            int i15 = i10 + 1;
                            int i16 = i13 + 1;
                            yc.j.e(iArr, this.f28835a, i10, i15, i16);
                            yc.j.g(objArr, this.f28836b, i11, i15 << 1, i16 << 1);
                        }
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    if (i10 < i13) {
                        int i17 = i10 + 1;
                        int i18 = i13 + 1;
                        yc.j.e(iArr, iArr, i10, i17, i18);
                        Object[] objArr2 = this.f28836b;
                        yc.j.g(objArr2, objArr2, i11, i17 << 1, i18 << 1);
                    }
                    Object[] objArr3 = this.f28836b;
                    int i19 = i13 << 1;
                    objArr3[i19] = null;
                    objArr3[i19 + 1] = null;
                }
                if (i12 == this.f28837c) {
                    this.f28837c = i13;
                } else {
                    throw new ConcurrentModificationException();
                }
            }
            return obj;
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
    }

    public boolean isEmpty() {
        if (this.f28837c <= 0) {
            return true;
        }
        return false;
    }

    public Object j(int i10, Object obj) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.f28837c) {
            z10 = true;
        }
        if (z10) {
            int i11 = (i10 << 1) + 1;
            Object[] objArr = this.f28836b;
            Object obj2 = objArr[i11];
            objArr[i11] = obj;
            return obj2;
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
    }

    public Object k(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.f28837c) {
            z10 = true;
        }
        if (z10) {
            return this.f28836b[(i10 << 1) + 1];
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
    }

    public Object put(Object obj, Object obj2) {
        int i10;
        int f10;
        int i11 = this.f28837c;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        if (obj != null) {
            f10 = c(obj, i10);
        } else {
            f10 = f();
        }
        if (f10 >= 0) {
            int i12 = (f10 << 1) + 1;
            Object[] objArr = this.f28836b;
            Object obj3 = objArr[i12];
            objArr[i12] = obj2;
            return obj3;
        }
        int i13 = ~f10;
        int[] iArr = this.f28835a;
        if (i11 >= iArr.length) {
            int i14 = 8;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i14 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i14);
            m.d(copyOf, "copyOf(this, newSize)");
            this.f28835a = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f28836b, i14 << 1);
            m.d(copyOf2, "copyOf(this, newSize)");
            this.f28836b = copyOf2;
            if (i11 != this.f28837c) {
                throw new ConcurrentModificationException();
            }
        }
        if (i13 < i11) {
            int[] iArr2 = this.f28835a;
            int i15 = i13 + 1;
            yc.j.e(iArr2, iArr2, i15, i13, i11);
            Object[] objArr2 = this.f28836b;
            yc.j.g(objArr2, objArr2, i15 << 1, i13 << 1, this.f28837c << 1);
        }
        int i16 = this.f28837c;
        if (i11 == i16) {
            int[] iArr3 = this.f28835a;
            if (i13 < iArr3.length) {
                iArr3[i13] = i10;
                Object[] objArr3 = this.f28836b;
                int i17 = i13 << 1;
                objArr3[i17] = obj;
                objArr3[i17 + 1] = obj2;
                this.f28837c = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 == null) {
            return put(obj, obj2);
        }
        return obj3;
    }

    public Object remove(Object obj) {
        int e10 = e(obj);
        if (e10 >= 0) {
            return i(e10);
        }
        return null;
    }

    public Object replace(Object obj, Object obj2) {
        int e10 = e(obj);
        if (e10 >= 0) {
            return j(e10, obj2);
        }
        return null;
    }

    public int size() {
        return this.f28837c;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f28837c * 28);
        sb2.append('{');
        int i10 = this.f28837c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            Object g10 = g(i11);
            if (g10 != sb2) {
                sb2.append(g10);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            Object k10 = k(i11);
            if (k10 != sb2) {
                sb2.append(k10);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        m.d(sb3, "StringBuilder(capacity).…builderAction).toString()");
        return sb3;
    }

    public i(int i10) {
        int[] iArr;
        Object[] objArr;
        if (i10 == 0) {
            iArr = s.a.f29216a;
        } else {
            iArr = new int[i10];
        }
        this.f28835a = iArr;
        if (i10 == 0) {
            objArr = s.a.f29218c;
        } else {
            objArr = new Object[i10 << 1];
        }
        this.f28836b = objArr;
    }

    public boolean remove(Object obj, Object obj2) {
        int e10 = e(obj);
        if (e10 < 0 || !m.a(obj2, k(e10))) {
            return false;
        }
        i(e10);
        return true;
    }

    public boolean replace(Object obj, Object obj2, Object obj3) {
        int e10 = e(obj);
        if (e10 < 0 || !m.a(obj2, k(e10))) {
            return false;
        }
        j(e10, obj3);
        return true;
    }

    public /* synthetic */ i(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }

    public i(i iVar) {
        this(0, 1, null);
        if (iVar != null) {
            h(iVar);
        }
    }
}
