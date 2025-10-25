package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public enum RRMouseInteraction {
    MouseUp(0),
    MouseDown(1),
    Click(2),
    ContextMenu(3),
    DblClick(4),
    Focus(5),
    Blur(6),
    TouchStart(7),
    TouchMoveDeparted(8),
    TouchEnd(9),
    TouchCancel(10);
    
    public static final Companion Companion = new Companion(null);
    private final int value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RRMouseInteraction fromValue(int i10) {
            switch (i10) {
                case 0:
                    return RRMouseInteraction.MouseUp;
                case 1:
                    return RRMouseInteraction.MouseDown;
                case 2:
                    return RRMouseInteraction.Click;
                case 3:
                    return RRMouseInteraction.ContextMenu;
                case 4:
                    return RRMouseInteraction.DblClick;
                case 5:
                    return RRMouseInteraction.Focus;
                case 6:
                    return RRMouseInteraction.Blur;
                case 7:
                    return RRMouseInteraction.TouchStart;
                case 8:
                    return RRMouseInteraction.TouchMoveDeparted;
                case 9:
                    return RRMouseInteraction.TouchEnd;
                case 10:
                    return RRMouseInteraction.TouchCancel;
                default:
                    return null;
            }
        }
    }

    RRMouseInteraction(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
