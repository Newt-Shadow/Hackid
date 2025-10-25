package androidx.lifecycle;
/* loaded from: classes.dex */
public interface DefaultLifecycleObserver extends l {
    default void onCreate(m owner) {
        kotlin.jvm.internal.m.e(owner, "owner");
    }

    default void onDestroy(m owner) {
        kotlin.jvm.internal.m.e(owner, "owner");
    }

    default void onPause(m owner) {
        kotlin.jvm.internal.m.e(owner, "owner");
    }

    default void onResume(m owner) {
        kotlin.jvm.internal.m.e(owner, "owner");
    }

    default void onStart(m owner) {
        kotlin.jvm.internal.m.e(owner, "owner");
    }

    default void onStop(m owner) {
        kotlin.jvm.internal.m.e(owner, "owner");
    }
}
