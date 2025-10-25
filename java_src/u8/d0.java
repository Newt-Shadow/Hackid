package u8;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    public static final d0 f30896a = new d0();

    private d0() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        r0 = android.app.Application.getProcessName();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String c() {
        /*
            r2 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 <= r1) goto L10
            java.lang.String r0 = n7.i.a()
            java.lang.String r1 = "myProcessName(...)"
            kotlin.jvm.internal.m.d(r0, r1)
            return r0
        L10:
            r1 = 28
            if (r0 < r1) goto L1b
            java.lang.String r0 = com.google.android.gms.common.util.l.a()
            if (r0 == 0) goto L1b
            return r0
        L1b:
            java.lang.String r0 = com.google.android.gms.common.util.n.a()
            if (r0 == 0) goto L22
            return r0
        L22:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: u8.d0.c():java.lang.String");
    }

    public final List a(Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> h10;
        List L;
        int r10;
        boolean z10;
        kotlin.jvm.internal.m.e(context, "context");
        int i10 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        if (systemService instanceof ActivityManager) {
            activityManager = (ActivityManager) systemService;
        } else {
            activityManager = null;
        }
        if (activityManager == null || (h10 = activityManager.getRunningAppProcesses()) == null) {
            h10 = yc.o.h();
        }
        L = yc.w.L(h10);
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
        r10 = yc.p.r(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(r10);
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            String processName = runningAppProcessInfo.processName;
            kotlin.jvm.internal.m.d(processName, "processName");
            arrayList2.add(new c0(processName, runningAppProcessInfo.pid, runningAppProcessInfo.importance, kotlin.jvm.internal.m.a(runningAppProcessInfo.processName, str)));
        }
        return arrayList2;
    }

    public final c0 b(Context context) {
        Object obj;
        boolean z10;
        kotlin.jvm.internal.m.e(context, "context");
        int myPid = Process.myPid();
        Iterator it = a(context).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((c0) obj).b() == myPid) {
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
        c0 c0Var = (c0) obj;
        if (c0Var == null) {
            return new c0(c(), myPid, 0, false);
        }
        return c0Var;
    }
}
