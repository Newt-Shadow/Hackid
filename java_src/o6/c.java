package o6;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class c extends d implements v {
    /* JADX INFO: Access modifiers changed from: protected */
    public c(Map map) {
        super(map);
    }

    @Override // o6.f, o6.z
    public Map a() {
        return super.a();
    }

    @Override // o6.f
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // o6.d, o6.z
    public boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // o6.d
    Collection u(Collection collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // o6.d
    Collection v(Object obj, Collection collection) {
        return w(obj, (List) collection, null);
    }
}
