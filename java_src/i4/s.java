package i4;

import android.util.SparseArray;
import y4.m0;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray f17247a = new SparseArray();

    public m0 a(int i10) {
        m0 m0Var = (m0) this.f17247a.get(i10);
        if (m0Var == null) {
            m0 m0Var2 = new m0(9223372036854775806L);
            this.f17247a.put(i10, m0Var2);
            return m0Var2;
        }
        return m0Var;
    }

    public void b() {
        this.f17247a.clear();
    }
}
