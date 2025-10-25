package io.flutter.plugin.common;

import android.content.Intent;
/* loaded from: classes2.dex */
public interface PluginRegistry {

    /* loaded from: classes2.dex */
    public interface ActivityResultListener {
        boolean onActivityResult(int i10, int i11, Intent intent);
    }

    /* loaded from: classes2.dex */
    public interface NewIntentListener {
        boolean onNewIntent(Intent intent);
    }

    /* loaded from: classes2.dex */
    public interface RequestPermissionsResultListener {
        boolean onRequestPermissionsResult(int i10, String[] strArr, int[] iArr);
    }

    /* loaded from: classes2.dex */
    public interface UserLeaveHintListener {
        void onUserLeaveHint();
    }

    /* loaded from: classes2.dex */
    public interface WindowFocusChangedListener {
        void onWindowFocusChanged(boolean z10);
    }
}
