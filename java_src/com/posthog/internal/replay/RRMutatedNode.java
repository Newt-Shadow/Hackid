package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class RRMutatedNode {
    private final Integer parentId;
    private final RRWireframe wireframe;

    public RRMutatedNode(RRWireframe wireframe, Integer num) {
        m.e(wireframe, "wireframe");
        this.wireframe = wireframe;
        this.parentId = num;
    }

    public final Integer getParentId() {
        return this.parentId;
    }

    public final RRWireframe getWireframe() {
        return this.wireframe;
    }

    public /* synthetic */ RRMutatedNode(RRWireframe rRWireframe, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(rRWireframe, (i10 & 2) != 0 ? null : num);
    }
}
