package s8;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f29544b;

    /* renamed from: a  reason: collision with root package name */
    private final Set f29545a = new HashSet();

    d() {
    }

    public static d a() {
        d dVar = f29544b;
        if (dVar == null) {
            synchronized (d.class) {
                dVar = f29544b;
                if (dVar == null) {
                    dVar = new d();
                    f29544b = dVar;
                }
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set b() {
        Set unmodifiableSet;
        synchronized (this.f29545a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f29545a);
        }
        return unmodifiableSet;
    }
}
