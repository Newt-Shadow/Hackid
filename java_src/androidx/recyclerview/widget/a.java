package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a implements g.a {

    /* renamed from: a  reason: collision with root package name */
    private c0.d f3322a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList f3323b;

    /* renamed from: c  reason: collision with root package name */
    final ArrayList f3324c;

    /* renamed from: d  reason: collision with root package name */
    final InterfaceC0053a f3325d;

    /* renamed from: e  reason: collision with root package name */
    Runnable f3326e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f3327f;

    /* renamed from: g  reason: collision with root package name */
    final g f3328g;

    /* renamed from: h  reason: collision with root package name */
    private int f3329h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0053a {
        void a(int i10, int i11);

        void b(b bVar);

        void c(int i10, int i11, Object obj);

        void d(b bVar);

        RecyclerView.a0 e(int i10);

        void f(int i10, int i11);

        void g(int i10, int i11);

        void h(int i10, int i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f3330a;

        /* renamed from: b  reason: collision with root package name */
        int f3331b;

        /* renamed from: c  reason: collision with root package name */
        Object f3332c;

        /* renamed from: d  reason: collision with root package name */
        int f3333d;

        b(int i10, int i11, int i12, Object obj) {
            this.f3330a = i10;
            this.f3331b = i11;
            this.f3333d = i12;
            this.f3332c = obj;
        }

        String a() {
            int i10 = this.f3330a;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 8) {
                            return "??";
                        }
                        return "mv";
                    }
                    return "up";
                }
                return "rm";
            }
            return "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i10 = this.f3330a;
            if (i10 != bVar.f3330a) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.f3333d - this.f3331b) == 1 && this.f3333d == bVar.f3331b && this.f3331b == bVar.f3333d) {
                return true;
            }
            if (this.f3333d != bVar.f3333d || this.f3331b != bVar.f3331b) {
                return false;
            }
            Object obj2 = this.f3332c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f3332c)) {
                    return false;
                }
            } else if (bVar.f3332c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f3330a * 31) + this.f3331b) * 31) + this.f3333d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f3331b + "c:" + this.f3333d + ",p:" + this.f3332c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(InterfaceC0053a interfaceC0053a) {
        this(interfaceC0053a, false);
    }

    private void c(b bVar) {
        p(bVar);
    }

    private void d(b bVar) {
        p(bVar);
    }

    private void e(b bVar) {
        boolean z10;
        char c10;
        int i10 = bVar.f3331b;
        int i11 = bVar.f3333d + i10;
        char c11 = 65535;
        int i12 = i10;
        int i13 = 0;
        while (i12 < i11) {
            this.f3325d.e(i12);
            if (g(i12)) {
                if (c11 == 0) {
                    j(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                c10 = 1;
            } else {
                if (c11 == 1) {
                    p(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                c10 = 0;
            }
            if (z10) {
                i12 -= i13;
                i11 -= i13;
                i13 = 1;
            } else {
                i13++;
            }
            i12++;
            c11 = c10;
        }
        if (i13 != bVar.f3333d) {
            a(bVar);
            bVar = b(2, i10, i13, null);
        }
        if (c11 == 0) {
            j(bVar);
        } else {
            p(bVar);
        }
    }

    private void f(b bVar) {
        int i10 = bVar.f3331b;
        int i11 = bVar.f3333d + i10;
        int i12 = 0;
        boolean z10 = true;
        int i13 = i10;
        while (i10 < i11) {
            this.f3325d.e(i10);
            if (g(i10)) {
                if (!z10) {
                    j(b(4, i13, i12, bVar.f3332c));
                    i13 = i10;
                    i12 = 0;
                }
                z10 = true;
            } else {
                if (z10) {
                    p(b(4, i13, i12, bVar.f3332c));
                    i13 = i10;
                    i12 = 0;
                }
                z10 = false;
            }
            i12++;
            i10++;
        }
        if (i12 != bVar.f3333d) {
            Object obj = bVar.f3332c;
            a(bVar);
            bVar = b(4, i13, i12, obj);
        }
        if (!z10) {
            j(bVar);
        } else {
            p(bVar);
        }
    }

    private boolean g(int i10) {
        int size = this.f3324c.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f3324c.get(i11);
            int i12 = bVar.f3330a;
            if (i12 == 8) {
                if (m(bVar.f3333d, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = bVar.f3331b;
                int i14 = bVar.f3333d + i13;
                while (i13 < i14) {
                    if (m(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void j(b bVar) {
        int i10;
        boolean z10;
        int i11 = bVar.f3330a;
        if (i11 != 1 && i11 != 8) {
            int t10 = t(bVar.f3331b, i11);
            int i12 = bVar.f3331b;
            int i13 = bVar.f3330a;
            if (i13 != 2) {
                if (i13 == 4) {
                    i10 = 1;
                } else {
                    throw new IllegalArgumentException("op should be remove or update." + bVar);
                }
            } else {
                i10 = 0;
            }
            int i14 = 1;
            for (int i15 = 1; i15 < bVar.f3333d; i15++) {
                int t11 = t(bVar.f3331b + (i10 * i15), bVar.f3330a);
                int i16 = bVar.f3330a;
                if (i16 == 2 ? t11 != t10 : i16 != 4 || t11 != t10 + 1) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (z10) {
                    i14++;
                } else {
                    b b10 = b(i16, t10, i14, bVar.f3332c);
                    k(b10, i12);
                    a(b10);
                    if (bVar.f3330a == 4) {
                        i12 += i14;
                    }
                    i14 = 1;
                    t10 = t11;
                }
            }
            Object obj = bVar.f3332c;
            a(bVar);
            if (i14 > 0) {
                b b11 = b(bVar.f3330a, t10, i14, obj);
                k(b11, i12);
                a(b11);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }

    private void p(b bVar) {
        this.f3324c.add(bVar);
        int i10 = bVar.f3330a;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 == 8) {
                        this.f3325d.a(bVar.f3331b, bVar.f3333d);
                        return;
                    }
                    throw new IllegalArgumentException("Unknown update op type for " + bVar);
                }
                this.f3325d.c(bVar.f3331b, bVar.f3333d, bVar.f3332c);
                return;
            }
            this.f3325d.f(bVar.f3331b, bVar.f3333d);
            return;
        }
        this.f3325d.g(bVar.f3331b, bVar.f3333d);
    }

    private int t(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.f3324c.size() - 1; size >= 0; size--) {
            b bVar = (b) this.f3324c.get(size);
            int i14 = bVar.f3330a;
            if (i14 == 8) {
                int i15 = bVar.f3331b;
                int i16 = bVar.f3333d;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 >= i13 && i10 <= i12) {
                    if (i13 == i15) {
                        if (i11 == 1) {
                            bVar.f3333d = i16 + 1;
                        } else if (i11 == 2) {
                            bVar.f3333d = i16 - 1;
                        }
                        i10++;
                    } else {
                        if (i11 == 1) {
                            bVar.f3331b = i15 + 1;
                        } else if (i11 == 2) {
                            bVar.f3331b = i15 - 1;
                        }
                        i10--;
                    }
                } else if (i10 < i15) {
                    if (i11 == 1) {
                        bVar.f3331b = i15 + 1;
                        bVar.f3333d = i16 + 1;
                    } else if (i11 == 2) {
                        bVar.f3331b = i15 - 1;
                        bVar.f3333d = i16 - 1;
                    }
                }
            } else {
                int i17 = bVar.f3331b;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= bVar.f3333d;
                    } else if (i14 == 2) {
                        i10 += bVar.f3333d;
                    }
                } else if (i11 == 1) {
                    bVar.f3331b = i17 + 1;
                } else if (i11 == 2) {
                    bVar.f3331b = i17 - 1;
                }
            }
        }
        for (int size2 = this.f3324c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = (b) this.f3324c.get(size2);
            if (bVar2.f3330a == 8) {
                int i18 = bVar2.f3333d;
                if (i18 == bVar2.f3331b || i18 < 0) {
                    this.f3324c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f3333d <= 0) {
                this.f3324c.remove(size2);
                a(bVar2);
            }
        }
        return i10;
    }

    @Override // androidx.recyclerview.widget.g.a
    public void a(b bVar) {
        if (!this.f3327f) {
            bVar.f3332c = null;
            this.f3322a.a(bVar);
        }
    }

    @Override // androidx.recyclerview.widget.g.a
    public b b(int i10, int i11, int i12, Object obj) {
        b bVar = (b) this.f3322a.b();
        if (bVar == null) {
            return new b(i10, i11, i12, obj);
        }
        bVar.f3330a = i10;
        bVar.f3331b = i11;
        bVar.f3333d = i12;
        bVar.f3332c = obj;
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        int size = this.f3324c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f3325d.d((b) this.f3324c.get(i10));
        }
        r(this.f3324c);
        this.f3329h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        h();
        int size = this.f3323b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f3323b.get(i10);
            int i11 = bVar.f3330a;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 4) {
                        if (i11 == 8) {
                            this.f3325d.d(bVar);
                            this.f3325d.a(bVar.f3331b, bVar.f3333d);
                        }
                    } else {
                        this.f3325d.d(bVar);
                        this.f3325d.c(bVar.f3331b, bVar.f3333d, bVar.f3332c);
                    }
                } else {
                    this.f3325d.d(bVar);
                    this.f3325d.h(bVar.f3331b, bVar.f3333d);
                }
            } else {
                this.f3325d.d(bVar);
                this.f3325d.g(bVar.f3331b, bVar.f3333d);
            }
            Runnable runnable = this.f3326e;
            if (runnable != null) {
                runnable.run();
            }
        }
        r(this.f3323b);
        this.f3329h = 0;
    }

    void k(b bVar, int i10) {
        this.f3325d.b(bVar);
        int i11 = bVar.f3330a;
        if (i11 != 2) {
            if (i11 == 4) {
                this.f3325d.c(i10, bVar.f3333d, bVar.f3332c);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
        this.f3325d.h(i10, bVar.f3333d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l(int i10) {
        return m(i10, 0);
    }

    int m(int i10, int i11) {
        int size = this.f3324c.size();
        while (i11 < size) {
            b bVar = (b) this.f3324c.get(i11);
            int i12 = bVar.f3330a;
            if (i12 == 8) {
                int i13 = bVar.f3331b;
                if (i13 == i10) {
                    i10 = bVar.f3333d;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (bVar.f3333d <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = bVar.f3331b;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = bVar.f3333d;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += bVar.f3333d;
                }
            }
            i11++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n(int i10) {
        if ((i10 & this.f3329h) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        if (this.f3323b.size() > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        this.f3328g.b(this.f3323b);
        int size = this.f3323b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f3323b.get(i10);
            int i11 = bVar.f3330a;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 4) {
                        if (i11 == 8) {
                            d(bVar);
                        }
                    } else {
                        f(bVar);
                    }
                } else {
                    e(bVar);
                }
            } else {
                c(bVar);
            }
            Runnable runnable = this.f3326e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f3323b.clear();
    }

    void r(List list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a((b) list.get(i10));
        }
        list.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        r(this.f3323b);
        r(this.f3324c);
        this.f3329h = 0;
    }

    a(InterfaceC0053a interfaceC0053a, boolean z10) {
        this.f3322a = new c0.e(30);
        this.f3323b = new ArrayList();
        this.f3324c = new ArrayList();
        this.f3329h = 0;
        this.f3325d = interfaceC0053a;
        this.f3327f = z10;
        this.f3328g = new g(this);
    }
}
