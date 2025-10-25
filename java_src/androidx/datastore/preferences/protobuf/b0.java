package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
class b0 implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private Iterator f2122a;

    public b0(Iterator it) {
        this.f2122a = it;
    }

    @Override // java.util.Iterator
    /* renamed from: b */
    public Map.Entry next() {
        Map.Entry entry = (Map.Entry) this.f2122a.next();
        entry.getValue();
        return entry;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2122a.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f2122a.remove();
    }
}
