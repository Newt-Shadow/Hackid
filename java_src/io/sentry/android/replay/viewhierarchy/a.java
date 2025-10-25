package io.sentry.android.replay.viewhierarchy;

import android.graphics.Rect;
import android.view.View;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import id.l;
import io.sentry.android.replay.util.j;
import io.sentry.android.replay.util.n;
import io.sentry.android.replay.v;
import io.sentry.android.replay.viewhierarchy.b;
import io.sentry.j5;
import io.sentry.s5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.m;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import rd.b0;
import yc.w;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f22842a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference f22843b;

    private a() {
    }

    private final b a(LayoutNode layoutNode, b bVar, int i10, boolean z10, s5 s5Var) {
        boolean z11;
        LayoutCoordinates layoutCoordinates;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        Object Q;
        Color color;
        io.sentry.android.replay.util.b bVar2;
        Integer num;
        float f10;
        Object O;
        boolean z16;
        TextLayoutInput layoutInput;
        TextStyle style;
        AccessibilityAction accessibilityAction;
        l lVar;
        boolean z17;
        float f11;
        boolean z18;
        boolean z19;
        boolean z20 = false;
        if (layoutNode.isPlaced() && layoutNode.isAttached()) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            return null;
        }
        if (z10) {
            f22843b = new WeakReference(LayoutCoordinatesKt.findRootCoordinates(layoutNode.getCoordinates()));
        }
        SemanticsConfiguration collapsedSemantics$ui_release = layoutNode.getCollapsedSemantics$ui_release();
        LayoutCoordinates coordinates = layoutNode.getCoordinates();
        WeakReference weakReference = f22843b;
        if (weakReference != null) {
            layoutCoordinates = (LayoutCoordinates) weakReference.get();
        } else {
            layoutCoordinates = null;
        }
        Rect a10 = j.a(coordinates, layoutCoordinates);
        if (!layoutNode.getOuterCoordinator$ui_release().isTransparent() && ((collapsedSemantics$ui_release == null || !collapsedSemantics$ui_release.contains(SemanticsProperties.INSTANCE.getInvisibleToUser())) && a10.height() > 0 && a10.width() > 0)) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (collapsedSemantics$ui_release != null && collapsedSemantics$ui_release.contains(SemanticsActions.INSTANCE.getSetText())) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (collapsedSemantics$ui_release != null && collapsedSemantics$ui_release.contains(SemanticsProperties.INSTANCE.getText())) {
            z14 = true;
        } else {
            z14 = false;
        }
        float f12 = 0.0f;
        if (!z14 && !z13) {
            Painter b10 = j.b(layoutNode);
            if (b10 != null) {
                if (z12 && d(layoutNode, true, s5Var)) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                if (bVar != null) {
                    bVar.g(true);
                }
                float f13 = a10.left;
                float f14 = a10.top;
                int width = layoutNode.getWidth();
                int height = layoutNode.getHeight();
                if (bVar != null) {
                    f12 = bVar.a();
                }
                if (z18 && j.d(b10)) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                return new b.c(f13, f14, width, height, f12, i10, bVar, z19, true, z12, a10);
            }
            if (z12 && d(layoutNode, false, s5Var)) {
                z17 = true;
            } else {
                z17 = false;
            }
            float f15 = a10.left;
            float f16 = a10.top;
            int width2 = layoutNode.getWidth();
            int height2 = layoutNode.getHeight();
            if (bVar != null) {
                f11 = bVar.a();
            } else {
                f11 = 0.0f;
            }
            return new b.C0205b(f15, f16, width2, height2, f11, i10, bVar, z17, false, z12, a10);
        }
        if (z12 && d(layoutNode, false, s5Var)) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (bVar != null) {
            bVar.g(true);
        }
        ArrayList arrayList = new ArrayList();
        if (collapsedSemantics$ui_release != null && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(collapsedSemantics$ui_release, SemanticsActions.INSTANCE.getGetTextLayoutResult())) != null && (lVar = (l) accessibilityAction.getAction()) != null) {
            Boolean bool = (Boolean) lVar.invoke(arrayList);
        }
        io.sentry.android.replay.util.l c10 = j.c(layoutNode);
        Color a11 = c10.a();
        boolean b11 = c10.b();
        Q = w.Q(arrayList);
        TextLayoutResult textLayoutResult = (TextLayoutResult) Q;
        if (textLayoutResult != null && (layoutInput = textLayoutResult.getLayoutInput()) != null && (style = layoutInput.getStyle()) != null) {
            color = Color.box-impl(style.getColor-0d7_KjU());
        } else {
            color = null;
        }
        if (color != null) {
            if (color.unbox-impl() == Color.Companion.getUnspecified-0d7_KjU()) {
                z16 = true;
            } else {
                z16 = false;
            }
            if (z16) {
                z20 = true;
            }
        }
        if (!z20) {
            a11 = color;
        }
        if ((!arrayList.isEmpty()) && !z13) {
            O = w.O(arrayList);
            bVar2 = new io.sentry.android.replay.util.b((TextLayoutResult) O, b11);
        } else {
            bVar2 = null;
        }
        if (a11 != null) {
            num = Integer.valueOf(n.g(ColorKt.toArgb-8_81llA(a11.unbox-impl())));
        } else {
            num = null;
        }
        float f17 = a10.left;
        float f18 = a10.top;
        int width3 = layoutNode.getWidth();
        int height3 = layoutNode.getHeight();
        if (bVar != null) {
            f10 = bVar.a();
        } else {
            f10 = 0.0f;
        }
        return new b.d(bVar2, num, 0, 0, f17, f18, width3, height3, f10, i10, bVar, z15, true, z12, a10, 12, null);
    }

    private final String c(LayoutNode layoutNode, boolean z10) {
        boolean z11;
        if (z10) {
            return "android.widget.ImageView";
        }
        SemanticsConfiguration collapsedSemantics$ui_release = layoutNode.getCollapsedSemantics$ui_release();
        boolean z12 = true;
        if (collapsedSemantics$ui_release != null && collapsedSemantics$ui_release.contains(SemanticsProperties.INSTANCE.getText())) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            SemanticsConfiguration collapsedSemantics$ui_release2 = layoutNode.getCollapsedSemantics$ui_release();
            if (collapsedSemantics$ui_release2 == null || !collapsedSemantics$ui_release2.contains(SemanticsActions.INSTANCE.getSetText())) {
                z12 = false;
            }
            if (!z12) {
                return "android.view.View";
            }
        }
        return "android.widget.TextView";
    }

    private final boolean d(LayoutNode layoutNode, boolean z10, s5 s5Var) {
        String str;
        SemanticsConfiguration collapsedSemantics$ui_release = layoutNode.getCollapsedSemantics$ui_release();
        if (collapsedSemantics$ui_release != null) {
            str = (String) SemanticsConfigurationKt.getOrNull(collapsedSemantics$ui_release, v.f22815a.a());
        } else {
            str = null;
        }
        if (m.a(str, "unmask")) {
            return false;
        }
        if (m.a(str, MimeTypesReaderMetKeys.MATCH_MASK_ATTR)) {
            return true;
        }
        String c10 = c(layoutNode, z10);
        if (s5Var.getSessionReplay().m().contains(c10)) {
            return false;
        }
        return s5Var.getSessionReplay().e().contains(c10);
    }

    private final void e(LayoutNode layoutNode, b bVar, boolean z10, s5 s5Var) {
        List children$ui_release = layoutNode.getChildren$ui_release();
        if (children$ui_release.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(children$ui_release.size());
        int size = children$ui_release.size();
        for (int i10 = 0; i10 < size; i10++) {
            LayoutNode layoutNode2 = (LayoutNode) children$ui_release.get(i10);
            b a10 = a(layoutNode2, bVar, i10, z10, s5Var);
            if (a10 != null) {
                arrayList.add(a10);
                e(layoutNode2, a10, false, s5Var);
            }
        }
        bVar.f(arrayList);
    }

    public final boolean b(View view, b bVar, s5 options) {
        boolean N;
        LayoutNode root;
        m.e(view, "view");
        m.e(options, "options");
        String name = view.getClass().getName();
        m.d(name, "view::class.java.name");
        Owner owner = null;
        N = b0.N(name, "AndroidComposeView", false, 2, null);
        if (!N || bVar == null) {
            return false;
        }
        try {
            if (view instanceof Owner) {
                owner = (Owner) view;
            }
            if (owner != null && (root = owner.getRoot()) != null) {
                e(root, bVar, true, options);
                return true;
            }
            return false;
        } catch (Throwable th) {
            options.getLogger().a(j5.ERROR, th, "Error traversing Compose tree. Most likely you're using an unsupported version of\nandroidx.compose.ui:ui. The minimum supported version is 1.5.0. If it's a newer\nversion, please open a github issue with the version you're using, so we can add\nsupport for it.", new Object[0]);
            return false;
        }
    }
}
