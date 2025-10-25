package m5;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private final Map f25910a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private final Map f25911b = Collections.synchronizedMap(new WeakHashMap());

    private final void h(boolean z10, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f25910a) {
            hashMap = new HashMap(this.f25910a);
        }
        synchronized (this.f25911b) {
            hashMap2 = new HashMap(this.f25911b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z10 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).d(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z10 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((m6.l) entry2.getKey()).d(new com.google.android.gms.common.api.b(status));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(BasePendingResult basePendingResult, boolean z10) {
        this.f25910a.put(basePendingResult, Boolean.valueOf(z10));
        basePendingResult.a(new x(this, basePendingResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(m6.l lVar, boolean z10) {
        this.f25911b.put(lVar, Boolean.valueOf(z10));
        lVar.a().c(new y(this, lVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(int i10, String str) {
        StringBuilder sb2 = new StringBuilder("The connection to Google Play services was lost");
        if (i10 == 1) {
            sb2.append(" due to service disconnection.");
        } else if (i10 == 3) {
            sb2.append(" due to dead object exception.");
        }
        if (str != null) {
            sb2.append(" Last reason for disconnect: ");
            sb2.append(str);
        }
        h(true, new Status(20, sb2.toString()));
    }

    public final void f() {
        h(false, e.f25769p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        if (this.f25910a.isEmpty() && this.f25911b.isEmpty()) {
            return false;
        }
        return true;
    }
}
