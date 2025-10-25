package io.sentry.cache.tape;

import java.io.Closeable;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class c implements Iterable, Closeable {

    /* loaded from: classes2.dex */
    public interface a {
        void a(Object obj, OutputStream outputStream);

        Object b(byte[] bArr);
    }

    public static c o0(d dVar, a aVar) {
        return new b(dVar, aVar);
    }

    public static c q0() {
        return new io.sentry.cache.tape.a();
    }

    public abstract void J0(int i10);

    public void clear() {
        J0(size());
    }

    public abstract void g(Object obj);

    public List s() {
        return t0(size());
    }

    public abstract int size();

    public List t0(int i10) {
        int min = Math.min(i10, size());
        ArrayList arrayList = new ArrayList(min);
        Iterator it = iterator();
        for (int i11 = 0; i11 < min; i11++) {
            arrayList.add(it.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
