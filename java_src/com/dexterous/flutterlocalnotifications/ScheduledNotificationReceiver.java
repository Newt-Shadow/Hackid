package com.dexterous.flutterlocalnotifications;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import com.dexterous.flutterlocalnotifications.models.NotificationDetails;
import com.dexterous.flutterlocalnotifications.utils.StringUtils;
@Keep
/* loaded from: classes.dex */
public class ScheduledNotificationReceiver extends BroadcastReceiver {
    private static final String TAG = "ScheduledNotifReceiver";

    /* loaded from: classes.dex */
    class a extends com.google.gson.reflect.a<NotificationDetails> {
        a() {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Notification notification;
        Object parcelableExtra;
        String stringExtra = intent.getStringExtra(FlutterLocalNotificationsPlugin.NOTIFICATION_DETAILS);
        if (StringUtils.isNullOrEmpty(stringExtra).booleanValue()) {
            int intExtra = intent.getIntExtra("notification_id", 0);
            if (Build.VERSION.SDK_INT >= 33) {
                parcelableExtra = intent.getParcelableExtra("notification", Notification.class);
                notification = (Notification) parcelableExtra;
            } else {
                notification = (Notification) intent.getParcelableExtra("notification");
            }
            if (notification == null) {
                FlutterLocalNotificationsPlugin.removeNotificationFromCache(context, Integer.valueOf(intExtra));
                Log.e(TAG, "Failed to parse a notification from  Intent. ID: " + intExtra);
                return;
            }
            notification.when = System.currentTimeMillis();
            androidx.core.app.p.e(context).h(intExtra, notification);
            if (!intent.getBooleanExtra("repeat", false)) {
                FlutterLocalNotificationsPlugin.removeNotificationFromCache(context, Integer.valueOf(intExtra));
                return;
            }
            return;
        }
        NotificationDetails notificationDetails = (NotificationDetails) FlutterLocalNotificationsPlugin.buildGson().n(stringExtra, new a().d());
        FlutterLocalNotificationsPlugin.showNotification(context, notificationDetails);
        FlutterLocalNotificationsPlugin.scheduleNextNotification(context, notificationDetails);
    }
}
