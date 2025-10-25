package j2;

import android.content.Context;
import java.io.File;
/* loaded from: classes.dex */
public abstract class c {

    /* loaded from: classes.dex */
    public interface a {
        void a(Context context, String[] strArr, String str, File file, d dVar);
    }

    /* loaded from: classes.dex */
    public interface b {
        String a(String str);

        void b(String str);

        String c(String str);

        String[] d();

        void e(String str);
    }

    /* renamed from: j2.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0225c {
    }

    public static void a(Context context, String str) {
        b(context, str, null, null);
    }

    public static void b(Context context, String str, String str2, InterfaceC0225c interfaceC0225c) {
        new d().f(context, str, str2, interfaceC0225c);
    }
}
