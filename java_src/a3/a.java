package a3;

import android.util.SparseArray;
import java.util.HashMap;
import n2.f;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray f66a = new SparseArray();

    /* renamed from: b  reason: collision with root package name */
    private static HashMap f67b;

    static {
        HashMap hashMap = new HashMap();
        f67b = hashMap;
        hashMap.put(f.DEFAULT, 0);
        f67b.put(f.VERY_LOW, 1);
        f67b.put(f.HIGHEST, 2);
        for (f fVar : f67b.keySet()) {
            f66a.append(((Integer) f67b.get(fVar)).intValue(), fVar);
        }
    }

    public static int a(f fVar) {
        Integer num = (Integer) f67b.get(fVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + fVar);
    }

    public static f b(int i10) {
        f fVar = (f) f66a.get(i10);
        if (fVar != null) {
            return fVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i10);
    }
}
