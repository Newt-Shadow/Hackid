package com.posthog.internal.replay;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class RRIncrementalMutationData {
    private final List<RRMutatedNode> adds;
    private final List<RRRemovedNode> removes;
    private final RRIncrementalSource source;
    private final List<RRMutatedNode> updates;

    public RRIncrementalMutationData() {
        this(null, null, null, null, 15, null);
    }

    public final List<RRMutatedNode> getAdds() {
        return this.adds;
    }

    public final List<RRRemovedNode> getRemoves() {
        return this.removes;
    }

    public final RRIncrementalSource getSource() {
        return this.source;
    }

    public final List<RRMutatedNode> getUpdates() {
        return this.updates;
    }

    public RRIncrementalMutationData(List<RRMutatedNode> list, List<RRRemovedNode> list2, List<RRMutatedNode> list3, RRIncrementalSource source) {
        m.e(source, "source");
        this.adds = list;
        this.removes = list2;
        this.updates = list3;
        this.source = source;
    }

    public /* synthetic */ RRIncrementalMutationData(List list, List list2, List list3, RRIncrementalSource rRIncrementalSource, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list, (i10 & 2) != 0 ? null : list2, (i10 & 4) != 0 ? null : list3, (i10 & 8) != 0 ? RRIncrementalSource.Mutation : rRIncrementalSource);
    }
}
