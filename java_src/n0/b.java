package n0;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class b {
    public static final File a(Context context, String name) {
        m.e(context, "<this>");
        m.e(name, "name");
        return i0.a.a(context, name + ".preferences_pb");
    }
}
