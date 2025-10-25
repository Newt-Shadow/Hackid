package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.p0;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public abstract class a implements p0 {
    protected int memoizedHashCode = 0;

    /* renamed from: androidx.datastore.preferences.protobuf.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0033a implements p0.a {
        protected static void e(Iterable iterable, List list) {
            y.a(iterable);
            if (iterable instanceof c0) {
                List q10 = ((c0) iterable).q();
                c0 c0Var = (c0) list;
                int size = list.size();
                for (Object obj : q10) {
                    if (obj == null) {
                        String str = "Element at index " + (c0Var.size() - size) + " is null.";
                        for (int size2 = c0Var.size() - 1; size2 >= size; size2--) {
                            c0Var.remove(size2);
                        }
                        throw new NullPointerException(str);
                    } else if (obj instanceof g) {
                        c0Var.X((g) obj);
                    } else if (obj instanceof byte[]) {
                        c0Var.X(g.m((byte[]) obj));
                    } else {
                        c0Var.add((String) obj);
                    }
                }
            } else if (iterable instanceof y0) {
                list.addAll((Collection) iterable);
            } else {
                f(iterable, list);
            }
        }

        private static void f(Iterable iterable, List list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (Object obj : iterable) {
                if (obj == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(obj);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static k1 i(p0 p0Var) {
            return new k1(p0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void e(Iterable iterable, List list) {
        AbstractC0033a.e(iterable, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int f(e1 e1Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public k1 g() {
        return new k1(this);
    }

    public void h(OutputStream outputStream) {
        j Y = j.Y(outputStream, j.C(b()));
        d(Y);
        Y.V();
    }
}
