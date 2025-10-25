package m5;

import com.google.android.gms.common.api.Status;
import m6.Task;
/* loaded from: classes.dex */
public abstract class v {
    public static void a(Status status, Object obj, m6.l lVar) {
        if (status.n()) {
            lVar.c(obj);
        } else {
            lVar.b(n5.b.a(status));
        }
    }

    public static void b(Status status, m6.l lVar) {
        a(status, null, lVar);
    }

    public static Task c(Task task) {
        return task.h(new h1());
    }

    public static boolean d(Status status, Object obj, m6.l lVar) {
        if (status.n()) {
            return lVar.e(obj);
        }
        return lVar.d(n5.b.a(status));
    }
}
