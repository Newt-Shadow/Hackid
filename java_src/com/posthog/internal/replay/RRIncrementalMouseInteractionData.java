package com.posthog.internal.replay;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class RRIncrementalMouseInteractionData {

    /* renamed from: id  reason: collision with root package name */
    private final int f9473id;
    private final int pointerType;
    private final List<RRMousePosition> positions;
    private final RRIncrementalSource source;
    private final RRMouseInteraction type;

    /* renamed from: x  reason: collision with root package name */
    private final int f9474x;

    /* renamed from: y  reason: collision with root package name */
    private final int f9475y;

    public RRIncrementalMouseInteractionData(int i10, RRMouseInteraction type, int i11, int i12, RRIncrementalSource source, int i13, List<RRMousePosition> list) {
        m.e(type, "type");
        m.e(source, "source");
        this.f9473id = i10;
        this.type = type;
        this.f9474x = i11;
        this.f9475y = i12;
        this.source = source;
        this.pointerType = i13;
        this.positions = list;
    }

    public final int getId() {
        return this.f9473id;
    }

    public final int getPointerType() {
        return this.pointerType;
    }

    public final List<RRMousePosition> getPositions() {
        return this.positions;
    }

    public final RRIncrementalSource getSource() {
        return this.source;
    }

    public final RRMouseInteraction getType() {
        return this.type;
    }

    public final int getX() {
        return this.f9474x;
    }

    public final int getY() {
        return this.f9475y;
    }

    public /* synthetic */ RRIncrementalMouseInteractionData(int i10, RRMouseInteraction rRMouseInteraction, int i11, int i12, RRIncrementalSource rRIncrementalSource, int i13, List list, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, rRMouseInteraction, i11, i12, (i14 & 16) != 0 ? RRIncrementalSource.MouseInteraction : rRIncrementalSource, (i14 & 32) != 0 ? 2 : i13, (i14 & 64) != 0 ? null : list);
    }
}
