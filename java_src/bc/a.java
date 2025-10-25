package bc;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4732a = new a();

    private a() {
    }

    public static final File a(Context context) {
        m.e(context, "context");
        if (b()) {
            return context.getNoBackupFilesDir();
        }
        return context.getFilesDir();
    }

    public static final boolean b() {
        return true;
    }
}
