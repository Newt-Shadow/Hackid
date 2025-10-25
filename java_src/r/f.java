package r;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public class f implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public /* synthetic */ boolean f28821a;

    /* renamed from: b  reason: collision with root package name */
    public /* synthetic */ long[] f28822b;

    /* renamed from: c  reason: collision with root package name */
    public /* synthetic */ Object[] f28823c;

    /* renamed from: d  reason: collision with root package name */
    public /* synthetic */ int f28824d;

    public f() {
        this(0, 1, null);
    }

    public void a() {
        int i10 = this.f28824d;
        Object[] objArr = this.f28823c;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f28824d = 0;
        this.f28821a = false;
    }

    /* renamed from: b */
    public f clone() {
        Object clone = super.clone();
        m.c(clone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        f fVar = (f) clone;
        fVar.f28822b = (long[]) this.f28822b.clone();
        fVar.f28823c = (Object[]) this.f28823c.clone();
        return fVar;
    }

    public Object c(long j10) {
        Object obj;
        int b10 = s.a.b(this.f28822b, this.f28824d, j10);
        if (b10 >= 0) {
            Object obj2 = this.f28823c[b10];
            obj = g.f28825a;
            if (obj2 != obj) {
                return this.f28823c[b10];
            }
        }
        return null;
    }

    public int d(long j10) {
        Object obj;
        if (this.f28821a) {
            int i10 = this.f28824d;
            long[] jArr = this.f28822b;
            Object[] objArr = this.f28823c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj2 = objArr[i12];
                obj = g.f28825a;
                if (obj2 != obj) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj2;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f28821a = false;
            this.f28824d = i11;
        }
        return s.a.b(this.f28822b, this.f28824d, j10);
    }

    public long e(int i10) {
        boolean z10;
        Object obj;
        if (i10 >= 0 && i10 < this.f28824d) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (this.f28821a) {
                int i11 = this.f28824d;
                long[] jArr = this.f28822b;
                Object[] objArr = this.f28823c;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj2 = objArr[i13];
                    obj = g.f28825a;
                    if (obj2 != obj) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj2;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                this.f28821a = false;
                this.f28824d = i12;
            }
            return this.f28822b[i10];
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
    }

    public void f(long j10, Object obj) {
        Object obj2;
        Object obj3;
        int b10 = s.a.b(this.f28822b, this.f28824d, j10);
        if (b10 >= 0) {
            this.f28823c[b10] = obj;
            return;
        }
        int i10 = ~b10;
        if (i10 < this.f28824d) {
            Object obj4 = this.f28823c[i10];
            obj3 = g.f28825a;
            if (obj4 == obj3) {
                this.f28822b[i10] = j10;
                this.f28823c[i10] = obj;
                return;
            }
        }
        if (this.f28821a) {
            int i11 = this.f28824d;
            long[] jArr = this.f28822b;
            if (i11 >= jArr.length) {
                Object[] objArr = this.f28823c;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj5 = objArr[i13];
                    obj2 = g.f28825a;
                    if (obj5 != obj2) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj5;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                this.f28821a = false;
                this.f28824d = i12;
                i10 = ~s.a.b(this.f28822b, i12, j10);
            }
        }
        int i14 = this.f28824d;
        if (i14 >= this.f28822b.length) {
            int f10 = s.a.f(i14 + 1);
            long[] copyOf = Arrays.copyOf(this.f28822b, f10);
            m.d(copyOf, "copyOf(this, newSize)");
            this.f28822b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f28823c, f10);
            m.d(copyOf2, "copyOf(this, newSize)");
            this.f28823c = copyOf2;
        }
        int i15 = this.f28824d;
        if (i15 - i10 != 0) {
            long[] jArr2 = this.f28822b;
            int i16 = i10 + 1;
            yc.j.f(jArr2, jArr2, i16, i10, i15);
            Object[] objArr2 = this.f28823c;
            yc.j.g(objArr2, objArr2, i16, i10, this.f28824d);
        }
        this.f28822b[i10] = j10;
        this.f28823c[i10] = obj;
        this.f28824d++;
    }

    public void i(long j10) {
        Object obj;
        Object obj2;
        int b10 = s.a.b(this.f28822b, this.f28824d, j10);
        if (b10 >= 0) {
            Object obj3 = this.f28823c[b10];
            obj = g.f28825a;
            if (obj3 != obj) {
                Object[] objArr = this.f28823c;
                obj2 = g.f28825a;
                objArr[b10] = obj2;
                this.f28821a = true;
            }
        }
    }

    public int j() {
        Object obj;
        if (this.f28821a) {
            int i10 = this.f28824d;
            long[] jArr = this.f28822b;
            Object[] objArr = this.f28823c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj2 = objArr[i12];
                obj = g.f28825a;
                if (obj2 != obj) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj2;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f28821a = false;
            this.f28824d = i11;
        }
        return this.f28824d;
    }

    public Object k(int i10) {
        boolean z10;
        Object obj;
        if (i10 >= 0 && i10 < this.f28824d) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (this.f28821a) {
                int i11 = this.f28824d;
                long[] jArr = this.f28822b;
                Object[] objArr = this.f28823c;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj2 = objArr[i13];
                    obj = g.f28825a;
                    if (obj2 != obj) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj2;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                this.f28821a = false;
                this.f28824d = i12;
            }
            return this.f28823c[i10];
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
    }

    public String toString() {
        if (j() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f28824d * 28);
        sb2.append('{');
        int i10 = this.f28824d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(e(i11));
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

    public f(int i10) {
        if (i10 == 0) {
            this.f28822b = s.a.f29217b;
            this.f28823c = s.a.f29218c;
            return;
        }
        int f10 = s.a.f(i10);
        this.f28822b = new long[f10];
        this.f28823c = new Object[f10];
    }

    public /* synthetic */ f(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
