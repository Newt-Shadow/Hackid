package y4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class i implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f32894a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Map f32895b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private Set f32896c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private List f32897d = Collections.emptyList();

    public Set E() {
        Set set;
        synchronized (this.f32894a) {
            set = this.f32896c;
        }
        return set;
    }

    public void d(Object obj) {
        synchronized (this.f32894a) {
            ArrayList arrayList = new ArrayList(this.f32897d);
            arrayList.add(obj);
            this.f32897d = Collections.unmodifiableList(arrayList);
            Integer num = (Integer) this.f32895b.get(obj);
            if (num == null) {
                HashSet hashSet = new HashSet(this.f32896c);
                hashSet.add(obj);
                this.f32896c = Collections.unmodifiableSet(hashSet);
            }
            Map map = this.f32895b;
            int i10 = 1;
            if (num != null) {
                i10 = 1 + num.intValue();
            }
            map.put(obj, Integer.valueOf(i10));
        }
    }

    public int g(Object obj) {
        int i10;
        synchronized (this.f32894a) {
            if (this.f32895b.containsKey(obj)) {
                i10 = ((Integer) this.f32895b.get(obj)).intValue();
            } else {
                i10 = 0;
            }
        }
        return i10;
    }

    public void i(Object obj) {
        synchronized (this.f32894a) {
            Integer num = (Integer) this.f32895b.get(obj);
            if (num == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f32897d);
            arrayList.remove(obj);
            this.f32897d = Collections.unmodifiableList(arrayList);
            if (num.intValue() == 1) {
                this.f32895b.remove(obj);
                HashSet hashSet = new HashSet(this.f32896c);
                hashSet.remove(obj);
                this.f32896c = Collections.unmodifiableSet(hashSet);
            } else {
                this.f32895b.put(obj, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        Iterator it;
        synchronized (this.f32894a) {
            it = this.f32897d.iterator();
        }
        return it;
    }
}
