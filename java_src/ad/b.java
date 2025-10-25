package ad;

import ad.i;
import id.l;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class b implements i.c {

    /* renamed from: a  reason: collision with root package name */
    private final l f289a;

    /* renamed from: b  reason: collision with root package name */
    private final i.c f290b;

    public b(i.c baseKey, l safeCast) {
        m.e(baseKey, "baseKey");
        m.e(safeCast, "safeCast");
        this.f289a = safeCast;
        this.f290b = baseKey instanceof b ? ((b) baseKey).f290b : baseKey;
    }

    public final boolean a(i.c key) {
        m.e(key, "key");
        if (key != this && this.f290b != key) {
            return false;
        }
        return true;
    }

    public final i.b b(i.b element) {
        m.e(element, "element");
        return (i.b) this.f289a.invoke(element);
    }
}
