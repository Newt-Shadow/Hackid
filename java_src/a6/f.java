package a6;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes.dex */
public abstract class f extends androidx.core.content.a {
    public static Intent p(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        int i10;
        Intent registerReceiver;
        if (e.a()) {
            if (true != e.a()) {
                i10 = 0;
            } else {
                i10 = 2;
            }
            registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, i10);
            return registerReceiver;
        }
        return context.registerReceiver(broadcastReceiver, intentFilter);
    }
}
