package k7;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements k8.b {

    /* renamed from: b  reason: collision with root package name */
    private volatile Set f24857b = null;

    /* renamed from: a  reason: collision with root package name */
    private volatile Set f24856a = Collections.newSetFromMap(new ConcurrentHashMap());

    x(Collection collection) {
        this.f24856a.addAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x b(Collection collection) {
        return new x((Set) collection);
    }

    private synchronized void d() {
        for (k8.b bVar : this.f24856a) {
            this.f24857b.add(bVar.get());
        }
        this.f24856a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(k8.b bVar) {
        if (this.f24857b == null) {
            this.f24856a.add(bVar);
        } else {
            this.f24857b.add(bVar.get());
        }
    }

    @Override // k8.b
    /* renamed from: c */
    public Set get() {
        if (this.f24857b == null) {
            synchronized (this) {
                if (this.f24857b == null) {
                    this.f24857b = Collections.newSetFromMap(new ConcurrentHashMap());
                    d();
                }
            }
        }
        return Collections.unmodifiableSet(this.f24857b);
    }
}
