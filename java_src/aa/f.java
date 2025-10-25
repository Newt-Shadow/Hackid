package aa;
/* loaded from: classes.dex */
public enum f {
    L(1),
    M(0),
    Q(3),
    H(2);
    

    /* renamed from: f  reason: collision with root package name */
    private static final f[] f242f;

    /* renamed from: a  reason: collision with root package name */
    private final int f244a;

    static {
        f fVar;
        f fVar2;
        f fVar3;
        f242f = new f[]{fVar, r0, fVar3, fVar2};
    }

    f(int i10) {
        this.f244a = i10;
    }

    public static f b(int i10) {
        if (i10 >= 0) {
            f[] fVarArr = f242f;
            if (i10 < fVarArr.length) {
                return fVarArr[i10];
            }
        }
        throw new IllegalArgumentException();
    }
}
