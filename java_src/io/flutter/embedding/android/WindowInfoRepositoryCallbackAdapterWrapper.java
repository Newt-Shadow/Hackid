package io.flutter.embedding.android;

import android.app.Activity;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class WindowInfoRepositoryCallbackAdapterWrapper {
    final s1.a adapter;

    public WindowInfoRepositoryCallbackAdapterWrapper(s1.a aVar) {
        this.adapter = aVar;
    }

    public void addWindowLayoutInfoListener(Activity activity, Executor executor, c0.a aVar) {
        this.adapter.b(activity, executor, aVar);
    }

    public void removeWindowLayoutInfoListener(c0.a aVar) {
        this.adapter.c(aVar);
    }
}
