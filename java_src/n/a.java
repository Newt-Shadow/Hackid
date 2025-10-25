package n;

import java.util.HashMap;
import java.util.Map;
import n.b;
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: e  reason: collision with root package name */
    private final HashMap f26058e = new HashMap();

    public boolean contains(Object obj) {
        return this.f26058e.containsKey(obj);
    }

    @Override // n.b
    protected b.c g(Object obj) {
        return (b.c) this.f26058e.get(obj);
    }

    @Override // n.b
    public Object n(Object obj, Object obj2) {
        b.c g10 = g(obj);
        if (g10 != null) {
            return g10.f26064b;
        }
        this.f26058e.put(obj, m(obj, obj2));
        return null;
    }

    @Override // n.b
    public Object o(Object obj) {
        Object o10 = super.o(obj);
        this.f26058e.remove(obj);
        return o10;
    }

    public Map.Entry p(Object obj) {
        if (contains(obj)) {
            return ((b.c) this.f26058e.get(obj)).f26066d;
        }
        return null;
    }
}
