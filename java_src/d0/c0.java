package d0;

import android.view.MotionEvent;
/* loaded from: classes.dex */
public abstract class c0 {
    public static boolean a(MotionEvent motionEvent, int i10) {
        if ((motionEvent.getSource() & i10) == i10) {
            return true;
        }
        return false;
    }
}
