package com.posthog.internal.replay;
/* loaded from: classes.dex */
public interface PostHogSessionReplayHandler {
    boolean isActive();

    void start(boolean z10);

    void stop();
}
