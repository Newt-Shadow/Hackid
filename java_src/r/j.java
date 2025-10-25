package r;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public class j implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public /* synthetic */ boolean f28838a;

    /* renamed from: b  reason: collision with root package name */
    public /* synthetic */ int[] f28839b;

    /* renamed from: c  reason: collision with root package name */
    public /* synthetic */ Object[] f28840c;

    /* renamed from: d  reason: collision with root package name */
    public /* synthetic */ int f28841d;

    public j() {
        this(0, 1, null);
    }

    public void a(int i10, Object obj) {
        int i11 = this.f28841d;
        if (i11 != 0 && i10 <= this.f28839b[i11 - 1]) {
            f(i10, obj);
            return;
        }
        if (this.f28838a && i11 >= this.f28839b.length) {
            k.d(this);
        }
        int i12 = this.f28841d;
        if (i12 >= this.f28839b.length) {
            int e10 = s.a.e(i12 + 1);
            int[] copyOf = Arrays.copyOf(this.f28839b, e10);
            m.d(copyOf, "copyOf(this, newSize)");
            this.f28839b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f28840c, e10);
            m.d(copyOf2, "copyOf(this, newSize)");
            this.f28840c = copyOf2;
        }
        this.f28839b[i12] = i10;
        this.f28840c[i12] = obj;
        this.f28841d = i12 + 1;
    }

    public void b() {
        int i10 = this.f28841d;
        Object[] objArr = this.f28840c;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f28841d = 0;
        this.f28838a = false;
    }

    /* renamed from: c */
    public j clone() {
        Object clone = super.clone();
        m.c(clone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        j jVar = (j) clone;
        jVar.f28839b = (int[]) this.f28839b.clone();
        jVar.f28840c = (Object[]) this.f28840c.clone();
        return jVar;
    }

    public Object d(int i10) {
        return k.c(this, i10);
    }

    public int e(int i10) {
        if (this.f28838a) {
            k.d(this);
        }
        return this.f28839b[i10];
    }

    public void f(int i10, Object obj) {
        Object obj2;
        int a10 = s.a.a(this.f28839b, this.f28841d, i10);
        if (a10 >= 0) {
            this.f28840c[a10] = obj;
            return;
        }
        int i11 = ~a10;
        if (i11 < this.f28841d) {
            Object obj3 = this.f28840c[i11];
            obj2 = k.f28842a;
            if (obj3 == obj2) {
                this.f28839b[i11] = i10;
                this.f28840c[i11] = obj;
                return;
            }
        }
        if (this.f28838a && this.f28841d >= this.f28839b.length) {
            k.d(this);
            i11 = ~s.a.a(this.f28839b, this.f28841d, i10);
        }
        int i12 = this.f28841d;
        if (i12 >= this.f28839b.length) {
            int e10 = s.a.e(i12 + 1);
            int[] copyOf = Arrays.copyOf(this.f28839b, e10);
            m.d(copyOf, "copyOf(this, newSize)");
            this.f28839b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f28840c, e10);
            m.d(copyOf2, "copyOf(this, newSize)");
            this.f28840c = copyOf2;
        }
        int i13 = this.f28841d;
        if (i13 - i11 != 0) {
            int[] iArr = this.f28839b;
            int i14 = i11 + 1;
            yc.j.e(iArr, iArr, i14, i11, i13);
            Object[] objArr = this.f28840c;
            yc.j.g(objArr, objArr, i14, i11, this.f28841d);
        }
        this.f28839b[i11] = i10;
        this.f28840c[i11] = obj;
        this.f28841d++;
    }

    public int i() {
        if (this.f28838a) {
            k.d(this);
        }
        return this.f28841d;
    }

    public Object j(int i10) {
        if (this.f28838a) {
            k.d(this);
        }
        return this.f28840c[i10];
    }

    public String toString() {
        if (i() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f28841d * 28);
        sb2.append('{');
        int i10 = this.f28841d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(e(i11));
            sb2.append('=');
            Object j10 = j(i11);
            if (j10 != this) {
                sb2.append(j10);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        m.d(sb3, "buffer.toString()");
        return sb3;
    }

    public j(int i10) {
        if (i10 == 0) {
            this.f28839b = s.a.f29216a;
            this.f28840c = s.a.f29218c;
            return;
        }
        int e10 = s.a.e(i10);
        this.f28839b = new int[e10];
        this.f28840c = new Object[e10];
    }

    public /* synthetic */ j(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
