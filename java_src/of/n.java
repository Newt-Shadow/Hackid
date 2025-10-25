package of;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2.dex */
public class n implements mf.a {

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f27619a = false;

    /* renamed from: b  reason: collision with root package name */
    final Map f27620b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    final LinkedBlockingQueue f27621c = new LinkedBlockingQueue();

    @Override // mf.a
    public synchronized mf.c a(String str) {
        m mVar;
        mVar = (m) this.f27620b.get(str);
        if (mVar == null) {
            mVar = new m(str, this.f27621c, this.f27619a);
            this.f27620b.put(str, mVar);
        }
        return mVar;
    }

    public void b() {
        this.f27620b.clear();
        this.f27621c.clear();
    }

    public LinkedBlockingQueue c() {
        return this.f27621c;
    }

    public List d() {
        return new ArrayList(this.f27620b.values());
    }

    public void e() {
        this.f27619a = true;
    }
}
