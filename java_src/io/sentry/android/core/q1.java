package io.sentry.android.core;
/* loaded from: classes2.dex */
public enum q1 {
    SENTRY_HANDLER_STRATEGY_DEFAULT(0),
    SENTRY_HANDLER_STRATEGY_CHAIN_AT_START(1);
    
    private final int value;

    q1(int i10) {
        this.value = i10;
    }

    public int getValue() {
        return this.value;
    }
}
