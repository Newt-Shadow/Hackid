package i0;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class a {
    public static final File a(Context context, String fileName) {
        m.e(context, "<this>");
        m.e(fileName, "fileName");
        File filesDir = context.getApplicationContext().getFilesDir();
        return new File(filesDir, "datastore/" + fileName);
    }
}
