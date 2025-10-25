package yc;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class d extends AbstractList implements List, jd.b {
    public abstract int g();

    public abstract Object i(int i10);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i10) {
        return i(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return g();
    }
}
