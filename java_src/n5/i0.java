package n5;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.a;
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    private final SparseIntArray f26328a = new SparseIntArray();

    /* renamed from: b  reason: collision with root package name */
    private l5.g f26329b;

    public i0(l5.g gVar) {
        q.k(gVar);
        this.f26329b = gVar;
    }

    public final int a(Context context, int i10) {
        return this.f26328a.get(i10, -1);
    }

    public final int b(Context context, a.f fVar) {
        q.k(context);
        q.k(fVar);
        int i10 = 0;
        if (!fVar.i()) {
            return 0;
        }
        int j10 = fVar.j();
        int a10 = a(context, j10);
        if (a10 == -1) {
            int i11 = 0;
            while (true) {
                if (i11 < this.f26328a.size()) {
                    int keyAt = this.f26328a.keyAt(i11);
                    if (keyAt > j10 && this.f26328a.get(keyAt) == 0) {
                        break;
                    }
                    i11++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 == -1) {
                a10 = this.f26329b.h(context, j10);
            } else {
                a10 = i10;
            }
            this.f26328a.put(j10, a10);
        }
        return a10;
    }

    public final void c() {
        this.f26328a.clear();
    }
}
