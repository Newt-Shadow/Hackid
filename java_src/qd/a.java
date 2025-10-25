package qd;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class a implements e {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f28742a;

    public a(e sequence) {
        kotlin.jvm.internal.m.e(sequence, "sequence");
        this.f28742a = new AtomicReference(sequence);
    }

    @Override // qd.e
    public Iterator iterator() {
        e eVar = (e) this.f28742a.getAndSet(null);
        if (eVar != null) {
            return eVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
