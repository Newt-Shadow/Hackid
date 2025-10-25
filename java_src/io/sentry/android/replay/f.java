package io.sentry.android.replay;

import java.io.Closeable;
/* loaded from: classes2.dex */
public interface f extends Closeable {
    void pause();

    void resume();

    void start(u uVar);

    void stop();
}
