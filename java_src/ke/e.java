package ke;
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private final yc.f f24907a = new yc.f();

    /* renamed from: b  reason: collision with root package name */
    private int f24908b;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(char[] array) {
        int i10;
        kotlin.jvm.internal.m.e(array, "array");
        synchronized (this) {
            int length = this.f24908b + array.length;
            i10 = c.f24895a;
            if (length < i10) {
                this.f24908b += array.length;
                this.f24907a.addLast(array);
            }
            xc.t tVar = xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final char[] b(int i10) {
        char[] cArr;
        synchronized (this) {
            cArr = (char[]) this.f24907a.B();
            if (cArr != null) {
                this.f24908b -= cArr.length;
            } else {
                cArr = null;
            }
        }
        if (cArr == null) {
            return new char[i10];
        }
        return cArr;
    }
}
