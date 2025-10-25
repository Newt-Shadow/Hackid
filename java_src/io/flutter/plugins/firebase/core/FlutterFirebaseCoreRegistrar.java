package io.flutter.plugins.firebase.core;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Collections;
import java.util.List;
@Keep
/* loaded from: classes2.dex */
public class FlutterFirebaseCoreRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k7.c> getComponents() {
        return Collections.singletonList(s8.h.b(BuildConfig.LIBRARY_NAME, BuildConfig.LIBRARY_VERSION));
    }
}
