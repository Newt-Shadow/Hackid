package io.sentry.android.core.internal.gestures;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.internal.gestures.b;
import java.util.LinkedList;
/* loaded from: classes2.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f22309a = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static io.sentry.internal.gestures.b a(SentryAndroidOptions sentryAndroidOptions, View view, float f10, float f11, b.a aVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(view);
        io.sentry.internal.gestures.b bVar = null;
        while (linkedList.size() > 0) {
            View view2 = (View) linkedList.poll();
            if (d(view2, f10, f11)) {
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                        linkedList.add(viewGroup.getChildAt(i10));
                    }
                }
                for (io.sentry.internal.gestures.a aVar2 : sentryAndroidOptions.getGestureTargetLocators()) {
                    io.sentry.internal.gestures.b a10 = aVar2.a(view2, f10, f11, aVar);
                    if (a10 != null) {
                        if (aVar == b.a.CLICKABLE) {
                            bVar = a10;
                        } else if (aVar == b.a.SCROLLABLE) {
                            return a10;
                        }
                    }
                }
                continue;
            }
        }
        return bVar;
    }

    public static String b(View view) {
        int id2 = view.getId();
        if (id2 != -1 && !c(id2)) {
            Resources resources = view.getContext().getResources();
            if (resources != null) {
                return resources.getResourceEntryName(id2);
            }
            return "";
        }
        throw new Resources.NotFoundException();
    }

    private static boolean c(int i10) {
        return ((-16777216) & i10) == 0 && (i10 & 16777215) != 0;
    }

    private static boolean d(View view, float f10, float f11) {
        if (view == null) {
            return false;
        }
        int[] iArr = f22309a;
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        int width = view.getWidth();
        int height = view.getHeight();
        if (f10 < i10 || f10 > i10 + width || f11 < i11 || f11 > i11 + height) {
            return false;
        }
        return true;
    }
}
