package i6;

import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
public abstract /* synthetic */ class i0 {
    public static /* synthetic */ Set a(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
