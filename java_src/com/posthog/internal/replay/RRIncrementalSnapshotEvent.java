package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class RRIncrementalSnapshotEvent extends RREvent {
    public /* synthetic */ RRIncrementalSnapshotEvent(RRIncrementalMutationData rRIncrementalMutationData, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : rRIncrementalMutationData, j10);
    }

    public RRIncrementalSnapshotEvent(RRIncrementalMutationData rRIncrementalMutationData, long j10) {
        super(RREventType.IncrementalSnapshot, j10, rRIncrementalMutationData);
    }
}
