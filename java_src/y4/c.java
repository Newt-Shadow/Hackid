package y4;

import android.os.Bundle;
import android.util.SparseArray;
import b3.r;
import java.util.List;
import o6.q;
/* loaded from: classes.dex */
public abstract class c {
    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) q0.j(c.class.getClassLoader()));
        }
    }

    public static o6.q b(r.a aVar, List list) {
        q.a r10 = o6.q.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            r10.a(aVar.fromBundle((Bundle) a.e((Bundle) list.get(i10))));
        }
        return r10.k();
    }

    public static SparseArray c(r.a aVar, SparseArray sparseArray) {
        SparseArray sparseArray2 = new SparseArray(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            sparseArray2.put(sparseArray.keyAt(i10), aVar.fromBundle((Bundle) sparseArray.valueAt(i10)));
        }
        return sparseArray2;
    }
}
