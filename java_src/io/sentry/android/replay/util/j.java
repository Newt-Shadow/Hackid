package io.sentry.android.replay.util;

import android.graphics.Rect;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.IntSize;
import java.lang.reflect.Field;
import java.util.List;
import rd.b0;
/* loaded from: classes2.dex */
public abstract class j {
    public static final Rect a(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        boolean z10;
        kotlin.jvm.internal.m.e(layoutCoordinates, "<this>");
        if (layoutCoordinates2 == null) {
            layoutCoordinates2 = LayoutCoordinatesKt.findRootCoordinates(layoutCoordinates);
        }
        float f10 = IntSize.getWidth-impl(layoutCoordinates2.getSize-YbymL2g());
        float f11 = IntSize.getHeight-impl(layoutCoordinates2.getSize-YbymL2g());
        boolean z11 = false;
        androidx.compose.ui.geometry.Rect localBoundingBoxOf$default = LayoutCoordinates.localBoundingBoxOf$default(layoutCoordinates2, layoutCoordinates, false, 2, (Object) null);
        float left = localBoundingBoxOf$default.getLeft();
        float f12 = 0.0f;
        if (left < 0.0f) {
            left = 0.0f;
        }
        if (left > f10) {
            left = f10;
        }
        float top = localBoundingBoxOf$default.getTop();
        if (top < 0.0f) {
            top = 0.0f;
        }
        if (top > f11) {
            top = f11;
        }
        float right = localBoundingBoxOf$default.getRight();
        if (right < 0.0f) {
            right = 0.0f;
        }
        if (right <= f10) {
            f10 = right;
        }
        float bottom = localBoundingBoxOf$default.getBottom();
        if (bottom >= 0.0f) {
            f12 = bottom;
        }
        if (f12 <= f11) {
            f11 = f12;
        }
        if (left == f10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            if (top == f11) {
                z11 = true;
            }
            if (!z11) {
                long j10 = layoutCoordinates2.localToWindow-MK-Hz9U(OffsetKt.Offset(left, top));
                long j11 = layoutCoordinates2.localToWindow-MK-Hz9U(OffsetKt.Offset(f10, top));
                long j12 = layoutCoordinates2.localToWindow-MK-Hz9U(OffsetKt.Offset(f10, f11));
                long j13 = layoutCoordinates2.localToWindow-MK-Hz9U(OffsetKt.Offset(left, f11));
                float f13 = Offset.getX-impl(j10);
                float f14 = Offset.getX-impl(j11);
                float f15 = Offset.getX-impl(j13);
                float f16 = Offset.getX-impl(j12);
                float min = Math.min(f13, Math.min(f14, Math.min(f15, f16)));
                float max = Math.max(f13, Math.max(f14, Math.max(f15, f16)));
                float f17 = Offset.getY-impl(j10);
                float f18 = Offset.getY-impl(j11);
                float f19 = Offset.getY-impl(j13);
                float f20 = Offset.getY-impl(j12);
                return new Rect((int) min, (int) Math.min(f17, Math.min(f18, Math.min(f19, f20))), (int) max, (int) Math.max(f17, Math.max(f18, Math.max(f19, f20))));
            }
        }
        return new Rect();
    }

    public static final Painter b(LayoutNode layoutNode) {
        boolean N;
        kotlin.jvm.internal.m.e(layoutNode, "<this>");
        List modifierInfo = layoutNode.getModifierInfo();
        int size = modifierInfo.size();
        for (int i10 = 0; i10 < size; i10++) {
            Modifier modifier = ((ModifierInfo) modifierInfo.get(i10)).getModifier();
            String name = modifier.getClass().getName();
            kotlin.jvm.internal.m.d(name, "modifier::class.java.name");
            N = b0.N(name, "Painter", false, 2, null);
            if (N) {
                try {
                    Field declaredField = modifier.getClass().getDeclaredField("painter");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(modifier);
                    if (!(obj instanceof Painter)) {
                        return null;
                    }
                    return (Painter) obj;
                } catch (Throwable unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public static final l c(LayoutNode layoutNode) {
        boolean N;
        ColorProducer colorProducer;
        boolean N2;
        kotlin.jvm.internal.m.e(layoutNode, "<this>");
        List modifierInfo = layoutNode.getModifierInfo();
        int size = modifierInfo.size();
        Color color = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            Modifier modifier = ((ModifierInfo) modifierInfo.get(i10)).getModifier();
            String modifierClassName = modifier.getClass().getName();
            kotlin.jvm.internal.m.d(modifierClassName, "modifierClassName");
            N = b0.N(modifierClassName, "Text", false, 2, null);
            if (!N) {
                N2 = b0.N(modifierClassName, "Fill", false, 2, null);
                if (N2) {
                    z10 = true;
                }
            } else {
                try {
                    Field declaredField = modifier.getClass().getDeclaredField("color");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(modifier);
                    if (obj instanceof ColorProducer) {
                        colorProducer = (ColorProducer) obj;
                    } else {
                        colorProducer = null;
                    }
                    if (colorProducer != null) {
                        color = Color.box-impl(colorProducer.invoke-0d7_KjU());
                    }
                } catch (Throwable unused) {
                }
                color = null;
            }
        }
        return new l(color, z10, null);
    }

    public static final boolean d(Painter painter) {
        boolean N;
        boolean N2;
        boolean N3;
        kotlin.jvm.internal.m.e(painter, "<this>");
        String className = painter.getClass().getName();
        kotlin.jvm.internal.m.d(className, "className");
        N = b0.N(className, "Vector", false, 2, null);
        if (!N) {
            N2 = b0.N(className, "Color", false, 2, null);
            if (!N2) {
                N3 = b0.N(className, "Brush", false, 2, null);
                if (N3) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return false;
    }
}
