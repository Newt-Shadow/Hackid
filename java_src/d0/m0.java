package d0;

import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class m0 {

    /* renamed from: a  reason: collision with root package name */
    private static Map f14352a = Collections.synchronizedMap(new WeakHashMap());

    /* loaded from: classes.dex */
    private static class a {
        static float a(VelocityTracker velocityTracker, int i10) {
            return velocityTracker.getAxisVelocity(i10);
        }
    }

    public static void a(VelocityTracker velocityTracker, MotionEvent motionEvent) {
        velocityTracker.addMovement(motionEvent);
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            if (!f14352a.containsKey(velocityTracker)) {
                f14352a.put(velocityTracker, new n0());
            }
            ((n0) f14352a.get(velocityTracker)).a(motionEvent);
        }
    }

    public static void b(VelocityTracker velocityTracker, int i10) {
        c(velocityTracker, i10, Float.MAX_VALUE);
    }

    public static void c(VelocityTracker velocityTracker, int i10, float f10) {
        velocityTracker.computeCurrentVelocity(i10, f10);
        n0 e10 = e(velocityTracker);
        if (e10 != null) {
            e10.c(i10, f10);
        }
    }

    public static float d(VelocityTracker velocityTracker, int i10) {
        if (Build.VERSION.SDK_INT >= 34) {
            return a.a(velocityTracker, i10);
        }
        if (i10 == 0) {
            return velocityTracker.getXVelocity();
        }
        if (i10 == 1) {
            return velocityTracker.getYVelocity();
        }
        n0 e10 = e(velocityTracker);
        if (e10 != null) {
            return e10.d(i10);
        }
        return 0.0f;
    }

    private static n0 e(VelocityTracker velocityTracker) {
        return (n0) f14352a.get(velocityTracker);
    }
}
