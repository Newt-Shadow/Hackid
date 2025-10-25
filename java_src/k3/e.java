package k3;

import b3.e3;
import g3.b0;
import y4.e0;
/* loaded from: classes.dex */
abstract class e {

    /* renamed from: a  reason: collision with root package name */
    protected final b0 f24699a;

    /* loaded from: classes.dex */
    public static final class a extends e3 {
        public a(String str) {
            super(str, null, false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(b0 b0Var) {
        this.f24699a = b0Var;
    }

    public final boolean a(e0 e0Var, long j10) {
        if (b(e0Var) && c(e0Var, j10)) {
            return true;
        }
        return false;
    }

    protected abstract boolean b(e0 e0Var);

    protected abstract boolean c(e0 e0Var, long j10);
}
