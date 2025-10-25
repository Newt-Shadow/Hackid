package z7;
/* loaded from: classes.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f33579a;

    /* renamed from: b  reason: collision with root package name */
    private final d[] f33580b;

    /* renamed from: c  reason: collision with root package name */
    private final b f33581c;

    public a(int i10, d... dVarArr) {
        this.f33579a = i10;
        this.f33580b = dVarArr;
        this.f33581c = new b(i10);
    }

    @Override // z7.d
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        d[] dVarArr;
        if (stackTraceElementArr.length <= this.f33579a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (d dVar : this.f33580b) {
            if (stackTraceElementArr2.length <= this.f33579a) {
                break;
            }
            stackTraceElementArr2 = dVar.a(stackTraceElementArr);
        }
        if (stackTraceElementArr2.length > this.f33579a) {
            return this.f33581c.a(stackTraceElementArr2);
        }
        return stackTraceElementArr2;
    }
}
