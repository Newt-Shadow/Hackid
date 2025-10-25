package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class RRIncrementalMouseInteractionEvent extends RREvent {
    public /* synthetic */ RRIncrementalMouseInteractionEvent(RRIncrementalMouseInteractionData rRIncrementalMouseInteractionData, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : rRIncrementalMouseInteractionData, j10);
    }

    public RRIncrementalMouseInteractionEvent(RRIncrementalMouseInteractionData rRIncrementalMouseInteractionData, long j10) {
        super(RREventType.IncrementalSnapshot, j10, rRIncrementalMouseInteractionData);
    }
}
