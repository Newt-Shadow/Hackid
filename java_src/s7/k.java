package s7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final List f29521a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final int f29522b;

    public k(int i10) {
        this.f29522b = i10;
    }

    public List a() {
        List b10 = b();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < b10.size(); i10++) {
            arrayList.add(((j) b10.get(i10)).h());
        }
        return arrayList;
    }

    public synchronized List b() {
        return Collections.unmodifiableList(new ArrayList(this.f29521a));
    }

    public synchronized boolean c(List list) {
        this.f29521a.clear();
        if (list.size() > this.f29522b) {
            n7.g f10 = n7.g.f();
            f10.k("Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.f29522b);
            return this.f29521a.addAll(list.subList(0, this.f29522b));
        }
        return this.f29521a.addAll(list);
    }
}
