package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
@IgnoreJRERequirement
/* loaded from: classes.dex */
public class RREvent {
    private final Object data;
    private final long timestamp;
    private final RREventType type;

    public RREvent(RREventType type, long j10, Object obj) {
        m.e(type, "type");
        this.type = type;
        this.timestamp = j10;
        this.data = obj;
    }

    public final Object getData() {
        return this.data;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final RREventType getType() {
        return this.type;
    }

    public /* synthetic */ RREvent(RREventType rREventType, long j10, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(rREventType, j10, (i10 & 4) != 0 ? null : obj);
    }
}
