package ad;

import ad.i;
import id.Function2;
import java.io.Serializable;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class j implements i, Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final j f295a = new j();

    private j() {
    }

    @Override // ad.i
    public i.b a(i.c key) {
        m.e(key, "key");
        return null;
    }

    @Override // ad.i
    public i e(i context) {
        m.e(context, "context");
        return context;
    }

    @Override // ad.i
    public i g(i.c key) {
        m.e(key, "key");
        return this;
    }

    public int hashCode() {
        return 0;
    }

    @Override // ad.i
    public Object k(Object obj, Function2 operation) {
        m.e(operation, "operation");
        return obj;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
