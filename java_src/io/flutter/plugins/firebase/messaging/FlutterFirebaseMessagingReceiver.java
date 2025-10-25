package io.flutter.plugins.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.util.Log;
import com.google.firebase.messaging.u0;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class FlutterFirebaseMessagingReceiver extends BroadcastReceiver {
    private static final String TAG = "FLTFireMsgReceiver";
    static HashMap<String, u0> notifications = new HashMap<>();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Context context2;
        Log.d(TAG, "broadcast received for message");
        if (ContextHolder.getApplicationContext() == null) {
            if (context.getApplicationContext() != null) {
                context2 = context.getApplicationContext();
            } else {
                context2 = context;
            }
            ContextHolder.setApplicationContext(context2);
        }
        if (intent.getExtras() == null) {
            Log.d(TAG, "broadcast received but intent contained no extras to process RemoteMessage. Operation cancelled.");
            return;
        }
        u0 u0Var = new u0(intent.getExtras());
        if (u0Var.p() != null) {
            notifications.put(u0Var.m(), u0Var);
            FlutterFirebaseMessagingStore.getInstance().storeFirebaseMessage(u0Var);
        }
        if (FlutterFirebaseMessagingUtils.isApplicationForeground(context)) {
            FlutterFirebaseRemoteMessageLiveData.getInstance().postRemoteMessage(u0Var);
            return;
        }
        Intent intent2 = new Intent(context, FlutterFirebaseMessagingBackgroundService.class);
        Parcel obtain = Parcel.obtain();
        boolean z10 = false;
        u0Var.writeToParcel(obtain, 0);
        intent2.putExtra("notification", obtain.marshall());
        if (u0Var.r() == 1) {
            z10 = true;
        }
        FlutterFirebaseMessagingBackgroundService.enqueueMessageProcessing(context, intent2, z10);
    }
}
