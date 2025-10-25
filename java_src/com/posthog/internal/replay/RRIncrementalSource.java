package com.posthog.internal.replay;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public enum RRIncrementalSource {
    Mutation(0),
    MouseMove(1),
    MouseInteraction(2),
    Scroll(3),
    ViewportResize(4),
    Input(5),
    TouchMove(6),
    MediaInteraction(7),
    StyleSheetRule(8),
    CanvasMutation(9),
    Font(10),
    Log(11),
    Drag(12),
    StyleDeclaration(13),
    Selection(14),
    AdoptedStyleSheet(15),
    CustomElement(16);
    
    public static final Companion Companion = new Companion(null);
    private final int value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RRIncrementalSource fromValue(int i10) {
            switch (i10) {
                case 0:
                    return RRIncrementalSource.Mutation;
                case 1:
                    return RRIncrementalSource.MouseMove;
                case 2:
                    return RRIncrementalSource.MouseInteraction;
                case 3:
                    return RRIncrementalSource.Scroll;
                case 4:
                    return RRIncrementalSource.ViewportResize;
                case 5:
                    return RRIncrementalSource.Input;
                case 6:
                    return RRIncrementalSource.TouchMove;
                case 7:
                    return RRIncrementalSource.MediaInteraction;
                case 8:
                    return RRIncrementalSource.StyleSheetRule;
                case 9:
                    return RRIncrementalSource.CanvasMutation;
                case 10:
                    return RRIncrementalSource.Font;
                case 11:
                    return RRIncrementalSource.Log;
                case 12:
                    return RRIncrementalSource.Drag;
                case 13:
                    return RRIncrementalSource.StyleDeclaration;
                case 14:
                    return RRIncrementalSource.Selection;
                case 15:
                    return RRIncrementalSource.AdoptedStyleSheet;
                case 16:
                    return RRIncrementalSource.CustomElement;
                default:
                    return null;
            }
        }
    }

    RRIncrementalSource(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
