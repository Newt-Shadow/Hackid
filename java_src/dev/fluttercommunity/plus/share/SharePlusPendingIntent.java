package dev.fluttercommunity.plus.share;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class SharePlusPendingIntent extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final a f15167a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static String f15168b = "";

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return SharePlusPendingIntent.f15168b;
        }

        public final void b(String str) {
            m.e(str, "<set-?>");
            SharePlusPendingIntent.f15168b = str;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ComponentName componentName;
        Object parcelableExtra;
        m.e(context, "context");
        m.e(intent, "intent");
        if (Build.VERSION.SDK_INT >= 33) {
            parcelableExtra = intent.getParcelableExtra("android.intent.extra.CHOSEN_COMPONENT", ComponentName.class);
            componentName = (ComponentName) parcelableExtra;
        } else {
            componentName = (ComponentName) intent.getParcelableExtra("android.intent.extra.CHOSEN_COMPONENT");
        }
        if (componentName != null) {
            f15168b = componentName.flattenToString();
        }
    }
}
