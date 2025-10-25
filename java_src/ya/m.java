package ya;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private xa.p f33158a;

    /* renamed from: b  reason: collision with root package name */
    private int f33159b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f33160c = false;

    /* renamed from: d  reason: collision with root package name */
    private q f33161d = new n();

    public m(int i10, xa.p pVar) {
        this.f33159b = i10;
        this.f33158a = pVar;
    }

    public xa.p a(List list, boolean z10) {
        return this.f33161d.b(list, b(z10));
    }

    public xa.p b(boolean z10) {
        xa.p pVar = this.f33158a;
        if (pVar == null) {
            return null;
        }
        if (z10) {
            return pVar.b();
        }
        return pVar;
    }

    public int c() {
        return this.f33159b;
    }

    public Rect d(xa.p pVar) {
        return this.f33161d.d(pVar, this.f33158a);
    }

    public void e(q qVar) {
        this.f33161d = qVar;
    }
}
