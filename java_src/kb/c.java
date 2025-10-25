package kb;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.posthog.internal.replay.RRFullSnapshotEvent;
import com.posthog.internal.replay.RRMetaEvent;
import com.posthog.internal.replay.RRStyle;
import com.posthog.internal.replay.RRUtilsKt;
import com.posthog.internal.replay.RRWireframe;
import gb.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.m;
import yc.n;
/* loaded from: classes.dex */
public final class c {
    public final void a(byte[] imageBytes, int i10, int i11, int i12) {
        List b10;
        List b11;
        m.e(imageBytes, "imageBytes");
        Bitmap bitmap = BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.length);
        m.d(bitmap, "bitmap");
        b10 = n.b(new RRWireframe(i10, i11, i12, bitmap.getWidth(), bitmap.getHeight(), null, "screenshot", null, null, null, null, o.d(bitmap, null, 0, 3, null), new RRStyle(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null), null, null, null, null, null, 255904, null));
        b11 = n.b(new RRFullSnapshotEvent(b10, 0, 0, System.currentTimeMillis()));
        RRUtilsKt.capture(b11);
    }

    public final void b(int i10, int i11, String screen) {
        m.e(screen, "screen");
        RRMetaEvent rRMetaEvent = new RRMetaEvent(i10, i11, System.currentTimeMillis(), screen);
        ArrayList arrayList = new ArrayList();
        arrayList.add(rRMetaEvent);
        RRUtilsKt.capture(arrayList);
    }
}
