package io.flutter.plugins.firebase.analytics;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
@Keep
/* loaded from: classes2.dex */
public final class FlutterFirebaseAppRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k7.c> getComponents() {
        List<k7.c> b10;
        b10 = yc.n.b(s8.h.b(BuildConfig.LIBRARY_NAME, BuildConfig.LIBRARY_VERSION));
        return b10;
    }
}
