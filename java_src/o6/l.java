package o6;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class l extends m implements Map {
    protected abstract Map b();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c(Object obj) {
        return y.b(this, obj);
    }

    @Override // java.util.Map
    public void clear() {
        b().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return b().containsKey(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean e(Object obj) {
        return y.c(this, obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        return b().entrySet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int f() {
        return o0.d(entrySet());
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return b().get(obj);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return b().isEmpty();
    }

    @Override // java.util.Map
    public Set keySet() {
        return b().keySet();
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        return b().put(obj, obj2);
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        b().putAll(map);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return b().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return b().size();
    }

    @Override // java.util.Map
    public Collection values() {
        return b().values();
    }
}
