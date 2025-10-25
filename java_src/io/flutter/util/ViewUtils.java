package io.flutter.util;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import io.flutter.util.ViewUtils;
import t1.k;
import t1.l;
/* loaded from: classes2.dex */
public final class ViewUtils {

    /* loaded from: classes2.dex */
    public interface DisplayUpdater {
        void updateDisplayMetrics(float f10, float f11, float f12);
    }

    /* loaded from: classes2.dex */
    public interface ViewVisitor {
        boolean run(View view);
    }

    public static void calculateMaximumDisplayMetrics(Context context, DisplayUpdater displayUpdater) {
        Activity activity = getActivity(context);
        if (activity != null) {
            k a10 = l.b().a(activity);
            displayUpdater.updateDisplayMetrics(a10.a().width(), a10.a().height(), context.getResources().getDisplayMetrics().density);
        }
    }

    public static boolean childHasFocus(View view) {
        return traverseHierarchy(view, new ViewVisitor() { // from class: uc.a
            @Override // io.flutter.util.ViewUtils.ViewVisitor
            public final boolean run(View view2) {
                boolean hasFocus;
                hasFocus = view2.hasFocus();
                return hasFocus;
            }
        });
    }

    public static Activity getActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        return getActivity(((ContextWrapper) context).getBaseContext());
    }

    public static boolean hasChildViewOfType(View view, final Class<? extends View>[] clsArr) {
        return traverseHierarchy(view, new ViewVisitor() { // from class: uc.b
            @Override // io.flutter.util.ViewUtils.ViewVisitor
            public final boolean run(View view2) {
                boolean lambda$hasChildViewOfType$1;
                lambda$hasChildViewOfType$1 = ViewUtils.lambda$hasChildViewOfType$1(clsArr, view2);
                return lambda$hasChildViewOfType$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$hasChildViewOfType$1(Class[] clsArr, View view) {
        for (Class cls : clsArr) {
            if (cls.isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    public static boolean traverseHierarchy(View view, ViewVisitor viewVisitor) {
        if (view == null) {
            return false;
        }
        if (viewVisitor.run(view)) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                if (traverseHierarchy(viewGroup.getChildAt(i10), viewVisitor)) {
                    return true;
                }
            }
        }
        return false;
    }
}
