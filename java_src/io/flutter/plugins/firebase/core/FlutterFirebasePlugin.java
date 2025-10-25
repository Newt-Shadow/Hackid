package io.flutter.plugins.firebase.core;

import androidx.annotation.Keep;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import m6.Task;
@Keep
/* loaded from: classes2.dex */
public interface FlutterFirebasePlugin {
    public static final ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    Task didReinitializeFirebaseCore();

    Task getPluginConstantsForFirebaseApp(h7.f fVar);
}
