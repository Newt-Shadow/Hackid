package o6;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l0 extends s {

    /* renamed from: h  reason: collision with root package name */
    private static final Object[] f27455h;

    /* renamed from: i  reason: collision with root package name */
    static final l0 f27456i;

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f27457c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f27458d;

    /* renamed from: e  reason: collision with root package name */
    final transient Object[] f27459e;

    /* renamed from: f  reason: collision with root package name */
    private final transient int f27460f;

    /* renamed from: g  reason: collision with root package name */
    private final transient int f27461g;

    static {
        Object[] objArr = new Object[0];
        f27455h = objArr;
        f27456i = new l0(objArr, 0, objArr, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f27457c = objArr;
        this.f27458d = i10;
        this.f27459e = objArr2;
        this.f27460f = i11;
        this.f27461g = i12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: A */
    public r0 iterator() {
        return d().iterator();
    }

    @Override // o6.o, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Object[] objArr = this.f27459e;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int b10 = n.b(obj);
        while (true) {
            int i10 = b10 & this.f27460f;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            b10 = i10 + 1;
        }
    }

    @Override // o6.o
    int g(Object[] objArr, int i10) {
        System.arraycopy(this.f27457c, 0, objArr, i10, this.f27461g);
        return i10 + this.f27461g;
    }

    @Override // o6.s, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f27458d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public Object[] i() {
        return this.f27457c;
    }

    @Override // o6.o
    int l() {
        return this.f27461g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public int m() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public boolean n() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f27461g;
    }

    @Override // o6.s
    q t() {
        return q.p(this.f27457c, this.f27461g);
    }

    @Override // o6.s
    boolean y() {
        return true;
    }
}
