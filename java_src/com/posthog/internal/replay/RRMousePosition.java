package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class RRMousePosition {

    /* renamed from: id  reason: collision with root package name */
    private final int f9476id;
    private final Long timeOffset;

    /* renamed from: x  reason: collision with root package name */
    private final int f9477x;

    /* renamed from: y  reason: collision with root package name */
    private final int f9478y;

    public RRMousePosition(int i10, int i11, int i12, Long l10) {
        this.f9477x = i10;
        this.f9478y = i11;
        this.f9476id = i12;
        this.timeOffset = l10;
    }

    public final int getId() {
        return this.f9476id;
    }

    public final Long getTimeOffset() {
        return this.timeOffset;
    }

    public final int getX() {
        return this.f9477x;
    }

    public final int getY() {
        return this.f9478y;
    }

    public /* synthetic */ RRMousePosition(int i10, int i11, int i12, Long l10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, (i13 & 8) != 0 ? null : l10);
    }
}
