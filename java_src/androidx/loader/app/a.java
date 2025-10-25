package androidx.loader.app;

import android.os.Bundle;
import androidx.lifecycle.m;
import androidx.lifecycle.m0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: androidx.loader.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0048a {
        void a(z0.b bVar, Object obj);

        z0.b b(int i10, Bundle bundle);

        void c(z0.b bVar);
    }

    public static a b(m mVar) {
        return new b(mVar, ((m0) mVar).getViewModelStore());
    }

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract z0.b c(int i10, Bundle bundle, InterfaceC0048a interfaceC0048a);

    public abstract void d();
}
