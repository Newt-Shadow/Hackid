package io.sentry.android.ndk;

import io.sentry.protocol.DebugImage;
/* loaded from: classes2.dex */
final class NativeModuleListLoader {
    public static native DebugImage[] nativeLoadModuleList();

    public DebugImage[] a() {
        return nativeLoadModuleList();
    }
}
