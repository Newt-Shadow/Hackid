package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public enum RREventType {
    DomContentLoaded(0),
    Load(1),
    FullSnapshot(2),
    IncrementalSnapshot(3),
    Meta(4),
    Custom(5),
    Plugin(6);
    
    public static final Companion Companion = new Companion(null);
    private final int value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RREventType fromValue(int i10) {
            switch (i10) {
                case 0:
                    return RREventType.DomContentLoaded;
                case 1:
                    return RREventType.Load;
                case 2:
                    return RREventType.FullSnapshot;
                case 3:
                    return RREventType.IncrementalSnapshot;
                case 4:
                    return RREventType.Meta;
                case 5:
                    return RREventType.Custom;
                case 6:
                    return RREventType.Plugin;
                default:
                    return null;
            }
        }
    }

    RREventType(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
