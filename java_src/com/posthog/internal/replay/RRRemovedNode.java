package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class RRRemovedNode {

    /* renamed from: id  reason: collision with root package name */
    private final int f9479id;
    private final Integer parentId;

    public RRRemovedNode(int i10, Integer num) {
        this.f9479id = i10;
        this.parentId = num;
    }

    public final int getId() {
        return this.f9479id;
    }

    public final Integer getParentId() {
        return this.parentId;
    }

    public /* synthetic */ RRRemovedNode(int i10, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : num);
    }
}
