package io.flutter.embedding.engine.plugins.lifecycle;

import androidx.lifecycle.i;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
/* loaded from: classes2.dex */
public class FlutterLifecycleAdapter {
    public static i getActivityLifecycle(ActivityPluginBinding activityPluginBinding) {
        return ((HiddenLifecycleReference) activityPluginBinding.getLifecycle()).getLifecycle();
    }
}
