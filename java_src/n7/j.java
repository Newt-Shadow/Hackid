package n7;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.m;
import t7.f0;
import yc.o;
import yc.p;
import yc.w;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f26477a = new j();

    private j() {
    }

    public static /* synthetic */ f0.e.d.a.c c(j jVar, String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 0;
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        return jVar.b(str, i10, i11, z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = android.app.Application.getProcessName();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String f() {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 <= r1) goto Le
            java.lang.String r0 = n7.i.a()
            kotlin.jvm.internal.m.b(r0)
            goto L1b
        Le:
            r1 = 28
            java.lang.String r2 = ""
            if (r0 < r1) goto L1a
            java.lang.String r0 = com.google.android.gms.common.util.l.a()
            if (r0 != 0) goto L1b
        L1a:
            r0 = r2
        L1b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n7.j.f():java.lang.String");
    }

    public final f0.e.d.a.c a(String processName, int i10, int i11) {
        m.e(processName, "processName");
        return c(this, processName, i10, i11, false, 8, null);
    }

    public final f0.e.d.a.c b(String processName, int i10, int i11, boolean z10) {
        m.e(processName, "processName");
        f0.e.d.a.c a10 = f0.e.d.a.c.a().e(processName).d(i10).c(i11).b(z10).a();
        m.d(a10, "build(...)");
        return a10;
    }

    public final List d(Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> h10;
        List L;
        int r10;
        boolean z10;
        m.e(context, "context");
        int i10 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        if (systemService instanceof ActivityManager) {
            activityManager = (ActivityManager) systemService;
        } else {
            activityManager = null;
        }
        if (activityManager == null || (h10 = activityManager.getRunningAppProcesses()) == null) {
            h10 = o.h();
        }
        L = w.L(h10);
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : L) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i10) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                arrayList.add(obj);
            }
        }
        r10 = p.r(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(r10);
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            arrayList2.add(f0.e.d.a.c.a().e(runningAppProcessInfo.processName).d(runningAppProcessInfo.pid).c(runningAppProcessInfo.importance).b(m.a(runningAppProcessInfo.processName, str)).a());
        }
        return arrayList2;
    }

    public final f0.e.d.a.c e(Context context) {
        Object obj;
        boolean z10;
        m.e(context, "context");
        int myPid = Process.myPid();
        Iterator it = d(context).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((f0.e.d.a.c) obj).c() == myPid) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        f0.e.d.a.c cVar = (f0.e.d.a.c) obj;
        if (cVar == null) {
            return c(this, f(), myPid, 0, false, 12, null);
        }
        return cVar;
    }
}
