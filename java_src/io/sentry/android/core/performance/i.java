package io.sentry.android.core.performance;

import android.view.Window;
import io.sentry.android.core.internal.gestures.j;
/* loaded from: classes2.dex */
public class i extends j {

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f22462b;

    public i(Window.Callback callback, Runnable runnable) {
        super(callback);
        this.f22462b = runnable;
    }

    @Override // io.sentry.android.core.internal.gestures.j, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.f22462b.run();
    }
}
