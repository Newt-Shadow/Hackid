package androidx.lifecycle;

import android.content.Context;
import androidx.lifecycle.ProcessLifecycleOwner;
import java.util.List;
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements i1.a {
    @Override // i1.a
    public List a() {
        List h10;
        h10 = yc.o.h();
        return h10;
    }

    @Override // i1.a
    /* renamed from: c */
    public m b(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        androidx.startup.a e10 = androidx.startup.a.e(context);
        kotlin.jvm.internal.m.d(e10, "getInstance(context)");
        if (e10.g(ProcessLifecycleInitializer.class)) {
            j.a(context);
            ProcessLifecycleOwner.b bVar = ProcessLifecycleOwner.f2918i;
            bVar.b(context);
            return bVar.a();
        }
        throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml".toString());
    }
}
