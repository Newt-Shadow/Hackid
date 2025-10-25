package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.y;
import java.util.List;
/* loaded from: classes.dex */
final class e0 implements d0 {
    static y.b d(Object obj, long j10) {
        return (y.b) o1.z(obj, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.d0
    public void a(Object obj, Object obj2, long j10) {
        y.b d10 = d(obj, j10);
        y.b d11 = d(obj2, j10);
        int size = d10.size();
        int size2 = d11.size();
        if (size > 0 && size2 > 0) {
            if (!d10.w()) {
                d10 = d10.c(size2 + size);
            }
            d10.addAll(d11);
        }
        if (size > 0) {
            d11 = d10;
        }
        o1.O(obj, j10, d11);
    }

    @Override // androidx.datastore.preferences.protobuf.d0
    public void b(Object obj, long j10) {
        d(obj, j10).b();
    }

    @Override // androidx.datastore.preferences.protobuf.d0
    public List c(Object obj, long j10) {
        int i10;
        y.b d10 = d(obj, j10);
        if (!d10.w()) {
            int size = d10.size();
            if (size == 0) {
                i10 = 10;
            } else {
                i10 = size * 2;
            }
            y.b c10 = d10.c(i10);
            o1.O(obj, j10, c10);
            return c10;
        }
        return d10;
    }
}
