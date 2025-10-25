package com.dexterous.flutterlocalnotifications;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioAttributes;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.Html;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.core.app.k;
import androidx.core.app.t;
import androidx.core.app.v;
import androidx.core.graphics.drawable.IconCompat;
import com.dexterous.flutterlocalnotifications.models.BitmapSource;
import com.dexterous.flutterlocalnotifications.models.IconSource;
import com.dexterous.flutterlocalnotifications.models.MessageDetails;
import com.dexterous.flutterlocalnotifications.models.NotificationAction;
import com.dexterous.flutterlocalnotifications.models.NotificationChannelAction;
import com.dexterous.flutterlocalnotifications.models.NotificationChannelDetails;
import com.dexterous.flutterlocalnotifications.models.NotificationChannelGroupDetails;
import com.dexterous.flutterlocalnotifications.models.NotificationDetails;
import com.dexterous.flutterlocalnotifications.models.NotificationStyle;
import com.dexterous.flutterlocalnotifications.models.PersonDetails;
import com.dexterous.flutterlocalnotifications.models.RepeatInterval;
import com.dexterous.flutterlocalnotifications.models.ScheduleMode;
import com.dexterous.flutterlocalnotifications.models.ScheduledNotificationRepeatFrequency;
import com.dexterous.flutterlocalnotifications.models.SoundSource;
import com.dexterous.flutterlocalnotifications.models.styles.BigPictureStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.BigTextStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.DefaultStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.InboxStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.MessagingStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.StyleInformation;
import com.dexterous.flutterlocalnotifications.utils.BooleanUtils;
import com.dexterous.flutterlocalnotifications.utils.StringUtils;
import com.google.gson.Gson;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.firebase.analytics.Constants;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.tika.metadata.ClimateForcast;
@Keep
/* loaded from: classes.dex */
public class FlutterLocalNotificationsPlugin implements MethodChannel.MethodCallHandler, PluginRegistry.NewIntentListener, PluginRegistry.RequestPermissionsResultListener, PluginRegistry.ActivityResultListener, FlutterPlugin, ActivityAware {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String ACTION_ID = "actionId";
    private static final String ARE_NOTIFICATIONS_ENABLED_METHOD = "areNotificationsEnabled";
    private static final String CALLBACK_HANDLE = "callback_handle";
    private static final String CANCEL_ALL_METHOD = "cancelAll";
    private static final String CANCEL_ALL_PENDING_NOTIFICATIONS_METHOD = "cancelAllPendingNotifications";
    private static final String CANCEL_ID = "id";
    private static final String CANCEL_METHOD = "cancel";
    static final String CANCEL_NOTIFICATION = "cancelNotification";
    private static final String CANCEL_TAG = "tag";
    private static final String CAN_SCHEDULE_EXACT_NOTIFICATIONS_METHOD = "canScheduleExactNotifications";
    private static final String CREATE_NOTIFICATION_CHANNEL_GROUP_METHOD = "createNotificationChannelGroup";
    private static final String CREATE_NOTIFICATION_CHANNEL_METHOD = "createNotificationChannel";
    private static final String DEFAULT_ICON = "defaultIcon";
    private static final String DELETE_NOTIFICATION_CHANNEL_GROUP_METHOD = "deleteNotificationChannelGroup";
    private static final String DELETE_NOTIFICATION_CHANNEL_METHOD = "deleteNotificationChannel";
    private static final String DISPATCHER_HANDLE = "dispatcher_handle";
    private static final String DRAWABLE = "drawable";
    private static final String EXACT_ALARMS_PERMISSION_ERROR_CODE = "exact_alarms_not_permitted";
    static final int EXACT_ALARM_PERMISSION_REQUEST_CODE = 2;
    static final int FULL_SCREEN_INTENT_PERMISSION_REQUEST_CODE = 3;
    private static final String GET_ACTIVE_NOTIFICATIONS_ERROR_MESSAGE = "Android version must be 6.0 or newer to use getActiveNotifications";
    private static final String GET_ACTIVE_NOTIFICATIONS_METHOD = "getActiveNotifications";
    private static final String GET_ACTIVE_NOTIFICATION_MESSAGING_STYLE_ERROR_CODE = "getActiveNotificationMessagingStyleError";
    private static final String GET_ACTIVE_NOTIFICATION_MESSAGING_STYLE_METHOD = "getActiveNotificationMessagingStyle";
    private static final String GET_CALLBACK_HANDLE_METHOD = "getCallbackHandle";
    private static final String GET_NOTIFICATION_APP_LAUNCH_DETAILS_METHOD = "getNotificationAppLaunchDetails";
    private static final String GET_NOTIFICATION_CHANNELS_ERROR_CODE = "getNotificationChannelsError";
    private static final String GET_NOTIFICATION_CHANNELS_METHOD = "getNotificationChannels";
    private static final String HAS_NOTIFICATION_POLICY_ACCESS_METHOD = "hasNotificationPolicyAccess";
    private static final String INITIALIZE_METHOD = "initialize";
    private static final String INPUT = "input";
    private static final String INPUT_RESULT = "FlutterLocalNotificationsPluginInputResult";
    private static final String INVALID_BIG_PICTURE_ERROR_CODE = "invalid_big_picture";
    private static final String INVALID_DRAWABLE_RESOURCE_ERROR_MESSAGE = "The resource %s could not be found. Please make sure it has been added as a drawable resource to your Android head project.";
    private static final String INVALID_ICON_ERROR_CODE = "invalid_icon";
    private static final String INVALID_LARGE_ICON_ERROR_CODE = "invalid_large_icon";
    private static final String INVALID_LED_DETAILS_ERROR_CODE = "invalid_led_details";
    private static final String INVALID_LED_DETAILS_ERROR_MESSAGE = "Must specify both ledOnMs and ledOffMs to configure the blink cycle on older versions of Android before Oreo";
    private static final String INVALID_RAW_RESOURCE_ERROR_MESSAGE = "The resource %s could not be found. Please make sure it has been added as a raw resource to your Android head project.";
    private static final String INVALID_SOUND_ERROR_CODE = "invalid_sound";
    private static final String METHOD_CHANNEL = "dexterous.com/flutter/local_notifications";
    static String NOTIFICATION_DETAILS = "notificationDetails";
    static final String NOTIFICATION_ID = "notificationId";
    private static final String NOTIFICATION_LAUNCHED_APP = "notificationLaunchedApp";
    static final int NOTIFICATION_PERMISSION_REQUEST_CODE = 1;
    static final int NOTIFICATION_POLICY_ACCESS_REQUEST_CODE = 4;
    private static final String NOTIFICATION_RESPONSE_TYPE = "notificationResponseType";
    static final String NOTIFICATION_TAG = "notificationTag";
    static final String PAYLOAD = "payload";
    private static final String PENDING_NOTIFICATION_REQUESTS_METHOD = "pendingNotificationRequests";
    private static final String PERIODICALLY_SHOW_METHOD = "periodicallyShow";
    private static final String PERIODICALLY_SHOW_WITH_DURATION_METHOD = "periodicallyShowWithDuration";
    private static final String PERMISSION_REQUEST_IN_PROGRESS_ERROR_CODE = "permissionRequestInProgress";
    private static final String PERMISSION_REQUEST_IN_PROGRESS_ERROR_MESSAGE = "Another permission request is already in progress";
    private static final String REQUEST_EXACT_ALARMS_PERMISSION_METHOD = "requestExactAlarmsPermission";
    private static final String REQUEST_FULL_SCREEN_INTENT_PERMISSION_METHOD = "requestFullScreenIntentPermission";
    private static final String REQUEST_NOTIFICATIONS_PERMISSION_METHOD = "requestNotificationsPermission";
    private static final String REQUEST_NOTIFICATION_POLICY_ACCESS_METHOD = "requestNotificationPolicyAccess";
    private static final String SCHEDULED_NOTIFICATIONS = "scheduled_notifications";
    private static final String SELECT_FOREGROUND_NOTIFICATION_ACTION = "SELECT_FOREGROUND_NOTIFICATION";
    private static final String SELECT_NOTIFICATION = "SELECT_NOTIFICATION";
    private static final String SHARED_PREFERENCES_KEY = "notification_plugin_cache";
    private static final String SHOW_METHOD = "show";
    private static final String START_FOREGROUND_SERVICE = "startForegroundService";
    private static final String STOP_FOREGROUND_SERVICE = "stopForegroundService";
    private static final String TAG = "FLTLocalNotifPlugin";
    private static final String UNSUPPORTED_OS_VERSION_ERROR_CODE = "unsupported_os_version";
    private static final String ZONED_SCHEDULE_METHOD = "zonedSchedule";
    static Gson gson;
    private Context applicationContext;
    private e1 callback;
    private MethodChannel channel;
    private Activity mainActivity;
    private h permissionRequestProgress = h.None;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends com.google.gson.reflect.a<ArrayList<NotificationDetails>> {
        a() {
        }
    }

    /* loaded from: classes.dex */
    class b implements e1 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f5520a;

        b(MethodChannel.Result result) {
            this.f5520a = result;
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void a(String str) {
            this.f5520a.error(FlutterLocalNotificationsPlugin.PERMISSION_REQUEST_IN_PROGRESS_ERROR_CODE, str, null);
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void b(boolean z10) {
            this.f5520a.success(Boolean.valueOf(z10));
        }
    }

    /* loaded from: classes.dex */
    class c implements e1 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f5522a;

        c(MethodChannel.Result result) {
            this.f5522a = result;
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void a(String str) {
            this.f5522a.error(FlutterLocalNotificationsPlugin.PERMISSION_REQUEST_IN_PROGRESS_ERROR_CODE, str, null);
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void b(boolean z10) {
            this.f5522a.success(Boolean.valueOf(z10));
        }
    }

    /* loaded from: classes.dex */
    class d implements e1 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f5524a;

        d(MethodChannel.Result result) {
            this.f5524a = result;
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void a(String str) {
            this.f5524a.error(FlutterLocalNotificationsPlugin.PERMISSION_REQUEST_IN_PROGRESS_ERROR_CODE, str, null);
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void b(boolean z10) {
            this.f5524a.success(Boolean.valueOf(z10));
        }
    }

    /* loaded from: classes.dex */
    class e implements e1 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f5526a;

        e(MethodChannel.Result result) {
            this.f5526a = result;
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void a(String str) {
            this.f5526a.error(FlutterLocalNotificationsPlugin.PERMISSION_REQUEST_IN_PROGRESS_ERROR_CODE, str, null);
        }

        @Override // com.dexterous.flutterlocalnotifications.e1
        public void b(boolean z10) {
            this.f5526a.success(Boolean.valueOf(z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5528a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f5529b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f5530c;

        static {
            int[] iArr = new int[NotificationStyle.values().length];
            f5530c = iArr;
            try {
                iArr[NotificationStyle.BigPicture.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5530c[NotificationStyle.BigText.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5530c[NotificationStyle.Inbox.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5530c[NotificationStyle.Messaging.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5530c[NotificationStyle.Media.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[IconSource.values().length];
            f5529b = iArr2;
            try {
                iArr2[IconSource.DrawableResource.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5529b[IconSource.BitmapFilePath.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5529b[IconSource.ContentUri.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5529b[IconSource.FlutterBitmapAsset.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f5529b[IconSource.ByteArray.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr3 = new int[RepeatInterval.values().length];
            f5528a = iArr3;
            try {
                iArr3[RepeatInterval.EveryMinute.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f5528a[RepeatInterval.Hourly.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f5528a[RepeatInterval.Daily.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f5528a[RepeatInterval.Weekly.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class g extends i {
        public g() {
            super(FlutterLocalNotificationsPlugin.EXACT_ALARMS_PERMISSION_ERROR_CODE, "Exact alarms are not permitted");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum h {
        None,
        RequestingNotificationPermission,
        RequestingNotificationPolicyAccess,
        RequestingExactAlarmsPermission,
        RequestingFullScreenIntentPermission
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class i extends RuntimeException {

        /* renamed from: a  reason: collision with root package name */
        public final String f5537a;

        i(String str, String str2) {
            super(str2);
            this.f5537a = str;
        }
    }

    private static void applyGrouping(NotificationDetails notificationDetails, k.e eVar) {
        boolean z10;
        if (!StringUtils.isNullOrEmpty(notificationDetails.groupKey).booleanValue()) {
            eVar.t(notificationDetails.groupKey);
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (BooleanUtils.getValue(notificationDetails.setAsGroupSummary)) {
                eVar.v(true);
            }
            eVar.u(notificationDetails.groupAlertBehavior.intValue());
        }
    }

    private void areNotificationsEnabled(MethodChannel.Result result) {
        result.success(Boolean.valueOf(getNotificationManager(this.applicationContext).a()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Gson buildGson() {
        if (gson == null) {
            gson = new com.google.gson.e().d(ScheduleMode.class, new ScheduleMode.Deserializer()).e(RuntimeTypeAdapterFactory.of(StyleInformation.class).registerSubtype(DefaultStyleInformation.class).registerSubtype(BigTextStyleInformation.class).registerSubtype(BigPictureStyleInformation.class).registerSubtype(InboxStyleInformation.class).registerSubtype(MessagingStyleInformation.class)).b();
        }
        return gson;
    }

    private static androidx.core.app.t buildPerson(Context context, PersonDetails personDetails) {
        IconSource iconSource;
        if (personDetails == null) {
            return null;
        }
        t.b bVar = new t.b();
        bVar.b(BooleanUtils.getValue(personDetails.bot));
        Object obj = personDetails.icon;
        if (obj != null && (iconSource = personDetails.iconBitmapSource) != null) {
            bVar.c(getIconFromSource(context, obj, iconSource));
        }
        bVar.d(BooleanUtils.getValue(personDetails.important));
        String str = personDetails.key;
        if (str != null) {
            bVar.e(str);
        }
        String str2 = personDetails.name;
        if (str2 != null) {
            bVar.f(str2);
        }
        String str3 = personDetails.uri;
        if (str3 != null) {
            bVar.g(str3);
        }
        return bVar.a();
    }

    private static long calculateNextNotificationTrigger(long j10, long j11) {
        while (j10 < System.currentTimeMillis()) {
            j10 += j11;
        }
        return j10;
    }

    private static long calculateRepeatIntervalMilliseconds(NotificationDetails notificationDetails) {
        Integer num = notificationDetails.repeatIntervalMilliseconds;
        if (num != null) {
            return num.intValue();
        }
        int i10 = f.f5528a[notificationDetails.repeatInterval.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return 0L;
                    }
                    return 604800000L;
                }
                return 86400000L;
            }
            return 3600000L;
        }
        return 60000L;
    }

    private static Boolean canCreateNotificationChannel(Context context, NotificationChannelDetails notificationChannelDetails) {
        NotificationChannel notificationChannel;
        boolean z10;
        NotificationChannelAction notificationChannelAction;
        if (Build.VERSION.SDK_INT >= 26) {
            notificationChannel = ((NotificationManager) context.getSystemService("notification")).getNotificationChannel(notificationChannelDetails.f5550id);
            if ((notificationChannel == null && ((notificationChannelAction = notificationChannelDetails.channelAction) == null || notificationChannelAction == NotificationChannelAction.CreateIfNotExists)) || (notificationChannel != null && notificationChannelDetails.channelAction == NotificationChannelAction.Update)) {
                z10 = true;
            } else {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }
        return Boolean.FALSE;
    }

    private void cancel(MethodCall methodCall, MethodChannel.Result result) {
        Map map = (Map) methodCall.arguments();
        cancelNotification((Integer) map.get("id"), (String) map.get(CANCEL_TAG));
        result.success(null);
    }

    private void cancelAllNotifications(MethodChannel.Result result) {
        getNotificationManager(this.applicationContext).d();
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(this.applicationContext);
        if (loadScheduledNotifications != null && !loadScheduledNotifications.isEmpty()) {
            Intent intent = new Intent(this.applicationContext, ScheduledNotificationReceiver.class);
            Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
            while (it.hasNext()) {
                getAlarmManager(this.applicationContext).cancel(getBroadcastPendingIntent(this.applicationContext, it.next().f5552id.intValue(), intent));
            }
            saveScheduledNotifications(this.applicationContext, new ArrayList());
            result.success(null);
            return;
        }
        result.success(null);
    }

    private void cancelAllPendingNotifications(MethodChannel.Result result) {
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(this.applicationContext);
        if (loadScheduledNotifications != null && !loadScheduledNotifications.isEmpty()) {
            AlarmManager alarmManager = getAlarmManager(this.applicationContext);
            Intent intent = new Intent(this.applicationContext, ScheduledNotificationReceiver.class);
            Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
            while (it.hasNext()) {
                alarmManager.cancel(getBroadcastPendingIntent(this.applicationContext, it.next().f5552id.intValue(), intent));
            }
            saveScheduledNotifications(this.applicationContext, new ArrayList());
            result.success(null);
            return;
        }
        result.success(null);
    }

    private void cancelNotification(Integer num, String str) {
        getAlarmManager(this.applicationContext).cancel(getBroadcastPendingIntent(this.applicationContext, num.intValue(), new Intent(this.applicationContext, ScheduledNotificationReceiver.class)));
        androidx.core.app.p notificationManager = getNotificationManager(this.applicationContext);
        if (str == null) {
            notificationManager.b(num.intValue());
        } else {
            notificationManager.c(str, num.intValue());
        }
        removeNotificationFromCache(this.applicationContext, num);
    }

    private static byte[] castObjectToByteArray(Object obj) {
        if (obj instanceof ArrayList) {
            ArrayList arrayList = (ArrayList) obj;
            byte[] bArr = new byte[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                bArr[i10] = (byte) ((Double) arrayList.get(i10)).intValue();
            }
            return bArr;
        }
        return (byte[]) obj;
    }

    private static void checkCanScheduleExactAlarms(AlarmManager alarmManager) {
        boolean canScheduleExactAlarms;
        if (Build.VERSION.SDK_INT >= 31) {
            canScheduleExactAlarms = alarmManager.canScheduleExactAlarms();
            if (!canScheduleExactAlarms) {
                throw new g();
            }
        }
    }

    private static k.i.d createMessage(Context context, MessageDetails messageDetails) {
        String str;
        k.i.d dVar = new k.i.d(messageDetails.text, messageDetails.timestamp.longValue(), buildPerson(context, messageDetails.person));
        String str2 = messageDetails.dataUri;
        if (str2 != null && (str = messageDetails.dataMimeType) != null) {
            dVar.j(str, Uri.parse(str2));
        }
        return dVar;
    }

    protected static Notification createNotification(Context context, NotificationDetails notificationDetails) {
        CharSequence charSequence;
        CharSequence charSequence2;
        IconCompat iconCompat;
        Intent intent;
        int i10;
        int i11;
        PendingIntent broadcast;
        IconSource iconSource;
        NotificationChannelDetails fromNotificationDetails = NotificationChannelDetails.fromNotificationDetails(notificationDetails);
        if (canCreateNotificationChannel(context, fromNotificationDetails).booleanValue()) {
            setupNotificationChannel(context, fromNotificationDetails);
        }
        Intent launchIntent = getLaunchIntent(context);
        launchIntent.setAction(SELECT_NOTIFICATION);
        launchIntent.putExtra(NOTIFICATION_ID, notificationDetails.f5552id);
        launchIntent.putExtra(PAYLOAD, notificationDetails.payload);
        PendingIntent activity = PendingIntent.getActivity(context, notificationDetails.f5552id.intValue(), launchIntent, 201326592);
        DefaultStyleInformation defaultStyleInformation = (DefaultStyleInformation) notificationDetails.styleInformation;
        k.e eVar = new k.e(context, notificationDetails.channelId);
        if (defaultStyleInformation.htmlFormatTitle.booleanValue()) {
            charSequence = fromHtml(notificationDetails.title);
        } else {
            charSequence = notificationDetails.title;
        }
        k.e o10 = eVar.o(charSequence);
        if (defaultStyleInformation.htmlFormatBody.booleanValue()) {
            charSequence2 = fromHtml(notificationDetails.body);
        } else {
            charSequence2 = notificationDetails.body;
        }
        k.e B = o10.n(charSequence2).L(notificationDetails.ticker).g(BooleanUtils.getValue(notificationDetails.autoCancel)).m(activity).C(notificationDetails.priority.intValue()).A(BooleanUtils.getValue(notificationDetails.ongoing)).G(BooleanUtils.getValue(notificationDetails.silent)).B(BooleanUtils.getValue(notificationDetails.onlyAlertOnce));
        int i12 = 0;
        if (notificationDetails.actions != null) {
            int intValue = notificationDetails.f5552id.intValue() * 16;
            for (NotificationAction notificationAction : notificationDetails.actions) {
                if (!TextUtils.isEmpty(notificationAction.icon) && (iconSource = notificationAction.iconSource) != null) {
                    iconCompat = getIconFromSource(context, notificationAction.icon, iconSource);
                } else {
                    iconCompat = null;
                }
                Boolean bool = notificationAction.showsUserInterface;
                if (bool != null && bool.booleanValue()) {
                    intent = getLaunchIntent(context);
                    intent.setAction(SELECT_FOREGROUND_NOTIFICATION_ACTION);
                } else {
                    intent = new Intent(context, ActionBroadcastReceiver.class);
                    intent.setAction("com.dexterous.flutterlocalnotifications.ActionBroadcastReceiver.ACTION_TAPPED");
                }
                intent.putExtra(NOTIFICATION_ID, notificationDetails.f5552id).putExtra(NOTIFICATION_TAG, notificationDetails.tag).putExtra(ACTION_ID, notificationAction.f5545id).putExtra(CANCEL_NOTIFICATION, notificationAction.cancelNotification).putExtra(PAYLOAD, notificationDetails.payload);
                List<NotificationAction.a> list = notificationAction.actionInputs;
                if (list != null && !list.isEmpty()) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        i10 = 167772160;
                    } else {
                        i10 = 134217728;
                    }
                } else {
                    i10 = 201326592;
                }
                Boolean bool2 = notificationAction.showsUserInterface;
                if (bool2 != null && bool2.booleanValue()) {
                    i11 = intValue + 1;
                    broadcast = PendingIntent.getActivity(context, intValue, intent, i10);
                } else {
                    i11 = intValue + 1;
                    broadcast = PendingIntent.getBroadcast(context, intValue, intent, i10);
                }
                intValue = i11;
                SpannableString spannableString = new SpannableString(notificationAction.title);
                if (notificationAction.titleColor != null) {
                    spannableString.setSpan(new ForegroundColorSpan(notificationAction.titleColor.intValue()), i12, spannableString.length(), i12);
                }
                k.a.C0028a c0028a = new k.a.C0028a(iconCompat, spannableString, broadcast);
                Boolean bool3 = notificationAction.contextual;
                if (bool3 != null) {
                    c0028a.e(bool3.booleanValue());
                }
                Boolean bool4 = notificationAction.showsUserInterface;
                if (bool4 != null) {
                    c0028a.g(bool4.booleanValue());
                }
                Boolean bool5 = notificationAction.allowGeneratedReplies;
                if (bool5 != null) {
                    c0028a.d(bool5.booleanValue());
                }
                Integer num = notificationAction.semanticAction;
                if (num != null) {
                    c0028a.f(num.intValue());
                }
                List<NotificationAction.a> list2 = notificationAction.actionInputs;
                if (list2 != null) {
                    for (NotificationAction.a aVar : list2) {
                        v.d e10 = new v.d(INPUT_RESULT).e(aVar.f5548c);
                        Boolean bool6 = aVar.f5547b;
                        if (bool6 != null) {
                            e10.c(bool6.booleanValue());
                        }
                        List<String> list3 = aVar.f5549d;
                        if (list3 != null) {
                            for (String str : list3) {
                                e10.b(str, true);
                            }
                        }
                        List list4 = aVar.f5546a;
                        if (list4 != null) {
                            e10.d((CharSequence[]) list4.toArray(new CharSequence[0]));
                        }
                        c0028a.a(e10.a());
                        i12 = 0;
                    }
                }
                int i13 = i12;
                if (BooleanUtils.getValue(notificationAction.invisible)) {
                    B.c(c0028a.b());
                } else {
                    B.b(c0028a.b());
                }
                i12 = i13;
            }
        }
        int i14 = i12;
        setSmallIcon(context, notificationDetails, B);
        B.w(getBitmapFromSource(context, notificationDetails.largeIcon, notificationDetails.largeIconBitmapSource));
        Integer num2 = notificationDetails.color;
        if (num2 != null) {
            B.k(num2.intValue());
        }
        Boolean bool7 = notificationDetails.colorized;
        if (bool7 != null) {
            B.l(bool7.booleanValue());
        }
        Boolean bool8 = notificationDetails.showWhen;
        if (bool8 != null) {
            B.F(BooleanUtils.getValue(bool8));
        }
        Long l10 = notificationDetails.when;
        if (l10 != null) {
            B.Q(l10.longValue());
        }
        Boolean bool9 = notificationDetails.usesChronometer;
        if (bool9 != null) {
            B.N(bool9.booleanValue());
        }
        Boolean bool10 = notificationDetails.chronometerCountDown;
        if (bool10 != null) {
            B.j(bool10.booleanValue());
        }
        if (BooleanUtils.getValue(notificationDetails.fullScreenIntent)) {
            B.s(activity, true);
        }
        if (!StringUtils.isNullOrEmpty(notificationDetails.shortcutId).booleanValue()) {
            B.E(notificationDetails.shortcutId);
        }
        if (!StringUtils.isNullOrEmpty(notificationDetails.subText).booleanValue()) {
            B.K(notificationDetails.subText);
        }
        Integer num3 = notificationDetails.number;
        if (num3 != null) {
            B.z(num3.intValue());
        }
        setVisibility(notificationDetails, B);
        applyGrouping(notificationDetails, B);
        setSound(context, notificationDetails, B);
        setVibrationPattern(notificationDetails, B);
        setLights(notificationDetails, B);
        setStyle(context, notificationDetails, B);
        setProgress(notificationDetails, B);
        setCategory(notificationDetails, B);
        setTimeoutAfter(notificationDetails, B);
        Notification d10 = B.d();
        int[] iArr = notificationDetails.additionalFlags;
        if (iArr != null && iArr.length > 0) {
            int length = iArr.length;
            for (int i15 = i14; i15 < length; i15++) {
                d10.flags = iArr[i15] | d10.flags;
            }
        }
        return d10;
    }

    private void createNotificationChannel(MethodCall methodCall, MethodChannel.Result result) {
        setupNotificationChannel(this.applicationContext, NotificationChannelDetails.from((Map) methodCall.arguments()));
        result.success(null);
    }

    private void createNotificationChannelGroup(MethodCall methodCall, MethodChannel.Result result) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            NotificationChannelGroupDetails from = NotificationChannelGroupDetails.from((Map) methodCall.arguments());
            NotificationManager notificationManager = (NotificationManager) this.applicationContext.getSystemService("notification");
            u0.a();
            NotificationChannelGroup a10 = s0.a(from.f5551id, from.name);
            if (i10 >= 28) {
                a10.setDescription(from.description);
            }
            notificationManager.createNotificationChannelGroup(a10);
        }
        result.success(null);
    }

    private void deleteNotificationChannel(MethodCall methodCall, MethodChannel.Result result) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) this.applicationContext.getSystemService("notification")).deleteNotificationChannel((String) methodCall.arguments());
        }
        result.success(null);
    }

    private void deleteNotificationChannelGroup(MethodCall methodCall, MethodChannel.Result result) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) this.applicationContext.getSystemService("notification")).deleteNotificationChannelGroup((String) methodCall.arguments());
        }
        result.success(null);
    }

    private Map<String, Object> describeIcon(IconCompat iconCompat) {
        IconSource iconSource;
        String resourceEntryName;
        if (iconCompat == null) {
            return null;
        }
        int o10 = iconCompat.o();
        if (o10 != 2) {
            if (o10 != 4) {
                return null;
            }
            iconSource = IconSource.ContentUri;
            resourceEntryName = iconCompat.p().toString();
        } else {
            iconSource = IconSource.DrawableResource;
            resourceEntryName = this.applicationContext.getResources().getResourceEntryName(iconCompat.m());
        }
        HashMap hashMap = new HashMap();
        hashMap.put(ClimateForcast.SOURCE, Integer.valueOf(iconSource.ordinal()));
        hashMap.put("data", resourceEntryName);
        return hashMap;
    }

    private Map<String, Object> describePerson(androidx.core.app.t tVar) {
        if (tVar == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("key", tVar.d());
        hashMap.put(Constants.NAME, tVar.e());
        hashMap.put("uri", tVar.f());
        hashMap.put("bot", Boolean.valueOf(tVar.g()));
        hashMap.put("important", Boolean.valueOf(tVar.h()));
        hashMap.put("icon", describeIcon(tVar.c()));
        return hashMap;
    }

    private NotificationDetails extractNotificationDetails(MethodChannel.Result result, Map<String, Object> map) {
        NotificationDetails from = NotificationDetails.from(map);
        if (!hasInvalidIcon(result, from.icon) && !hasInvalidLargeIcon(result, from.largeIcon, from.largeIconBitmapSource) && !hasInvalidBigPictureResources(result, from) && !hasInvalidRawSoundResource(result, from) && !hasInvalidLedDetails(result, from)) {
            return from;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> extractNotificationResponseMap(Intent intent) {
        int intExtra = intent.getIntExtra(NOTIFICATION_ID, 0);
        HashMap hashMap = new HashMap();
        hashMap.put(NOTIFICATION_ID, Integer.valueOf(intExtra));
        hashMap.put(NOTIFICATION_TAG, intent.getStringExtra(NOTIFICATION_TAG));
        hashMap.put(ACTION_ID, intent.getStringExtra(ACTION_ID));
        hashMap.put(PAYLOAD, intent.getStringExtra(PAYLOAD));
        Bundle j10 = androidx.core.app.v.j(intent);
        if (j10 != null) {
            hashMap.put(INPUT, j10.getString(INPUT_RESULT));
        }
        if (SELECT_NOTIFICATION.equals(intent.getAction())) {
            hashMap.put(NOTIFICATION_RESPONSE_TYPE, 0);
        }
        if (SELECT_FOREGROUND_NOTIFICATION_ACTION.equals(intent.getAction())) {
            hashMap.put(NOTIFICATION_RESPONSE_TYPE, 1);
        }
        return hashMap;
    }

    private static Spanned fromHtml(String str) {
        if (str == null) {
            return null;
        }
        return Html.fromHtml(str, 0);
    }

    private void getActiveNotificationMessagingStyle(MethodCall methodCall, MethodChannel.Result result) {
        StatusBarNotification[] activeNotifications;
        Notification notification;
        NotificationManager notificationManager = (NotificationManager) this.applicationContext.getSystemService("notification");
        try {
            Map map = (Map) methodCall.arguments();
            int intValue = ((Integer) map.get("id")).intValue();
            String str = (String) map.get(CANCEL_TAG);
            for (StatusBarNotification statusBarNotification : notificationManager.getActiveNotifications()) {
                if (statusBarNotification.getId() == intValue && (str == null || str.equals(statusBarNotification.getTag()))) {
                    notification = statusBarNotification.getNotification();
                    break;
                }
            }
            notification = null;
            if (notification == null) {
                result.success(null);
                return;
            }
            k.i o10 = k.i.o(notification);
            if (o10 == null) {
                result.success(null);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("groupConversation", Boolean.valueOf(o10.s()));
            hashMap.put("person", describePerson(o10.r()));
            hashMap.put("conversationTitle", o10.p());
            ArrayList arrayList = new ArrayList();
            for (k.i.d dVar : o10.q()) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("text", dVar.h());
                hashMap2.put(io.flutter.plugins.firebase.crashlytics.Constants.TIMESTAMP, Long.valueOf(dVar.i()));
                hashMap2.put("person", describePerson(dVar.g()));
                if (dVar.c() != null) {
                    hashMap2.put("dataUri", dVar.c().toString());
                }
                if (dVar.b() != null) {
                    hashMap2.put("dataMimeType", dVar.b());
                }
                arrayList.add(hashMap2);
            }
            hashMap.put("messages", arrayList);
            result.success(hashMap);
        } catch (Throwable th) {
            result.error(GET_ACTIVE_NOTIFICATION_MESSAGING_STYLE_ERROR_CODE, th.getMessage(), Log.getStackTraceString(th));
        }
    }

    private void getActiveNotifications(MethodChannel.Result result) {
        String channelId;
        try {
            StatusBarNotification[] activeNotifications = ((NotificationManager) this.applicationContext.getSystemService("notification")).getActiveNotifications();
            ArrayList arrayList = new ArrayList();
            for (StatusBarNotification statusBarNotification : activeNotifications) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", Integer.valueOf(statusBarNotification.getId()));
                Notification notification = statusBarNotification.getNotification();
                if (Build.VERSION.SDK_INT >= 26) {
                    channelId = notification.getChannelId();
                    hashMap.put("channelId", channelId);
                }
                hashMap.put(CANCEL_TAG, statusBarNotification.getTag());
                hashMap.put("groupKey", notification.getGroup());
                hashMap.put("title", notification.extras.getCharSequence("android.title"));
                hashMap.put("body", notification.extras.getCharSequence("android.text"));
                hashMap.put("bigText", notification.extras.getCharSequence("android.bigText"));
                arrayList.add(hashMap);
            }
            result.success(arrayList);
        } catch (Throwable th) {
            result.error(UNSUPPORTED_OS_VERSION_ERROR_CODE, th.getMessage(), Log.getStackTraceString(th));
        }
    }

    private static AlarmManager getAlarmManager(Context context) {
        return (AlarmManager) context.getSystemService("alarm");
    }

    private static Bitmap getBitmapFromSource(Context context, Object obj, BitmapSource bitmapSource) {
        if (bitmapSource == BitmapSource.DrawableResource) {
            return BitmapFactory.decodeResource(context.getResources(), getDrawableResourceId(context, (String) obj));
        }
        if (bitmapSource == BitmapSource.FilePath) {
            return BitmapFactory.decodeFile((String) obj);
        }
        if (bitmapSource == BitmapSource.ByteArray) {
            byte[] castObjectToByteArray = castObjectToByteArray(obj);
            return BitmapFactory.decodeByteArray(castObjectToByteArray, 0, castObjectToByteArray.length);
        }
        return null;
    }

    private static PendingIntent getBroadcastPendingIntent(Context context, int i10, Intent intent) {
        return PendingIntent.getBroadcast(context, i10, intent, 201326592);
    }

    private void getCallbackHandle(MethodChannel.Result result) {
        result.success(new f2.a(this.applicationContext).c());
    }

    private static int getDrawableResourceId(Context context, String str) {
        return context.getResources().getIdentifier(str, DRAWABLE, context.getPackageName());
    }

    private static IconCompat getIconFromSource(Context context, Object obj, IconSource iconSource) {
        int i10 = f.f5529b[iconSource.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return null;
                        }
                        byte[] castObjectToByteArray = castObjectToByteArray(obj);
                        return IconCompat.i(castObjectToByteArray, 0, castObjectToByteArray.length);
                    }
                    try {
                        AssetFileDescriptor openFd = context.getAssets().openFd(FlutterInjector.instance().flutterLoader().getLookupKeyForAsset((String) obj));
                        FileInputStream createInputStream = openFd.createInputStream();
                        IconCompat f10 = IconCompat.f(BitmapFactory.decodeStream(createInputStream));
                        createInputStream.close();
                        openFd.close();
                        return f10;
                    } catch (IOException e10) {
                        throw new RuntimeException(e10);
                    }
                }
                return IconCompat.h((String) obj);
            }
            return IconCompat.f(BitmapFactory.decodeFile((String) obj));
        }
        return IconCompat.j(context, getDrawableResourceId(context, (String) obj));
    }

    private static Intent getLaunchIntent(Context context) {
        return context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
    }

    private HashMap<String, Object> getMappedNotificationChannel(NotificationChannel notificationChannel) {
        String id2;
        CharSequence name;
        String description;
        String group;
        boolean canShowBadge;
        int importance;
        Uri sound;
        boolean canBypassDnd;
        boolean shouldVibrate;
        long[] vibrationPattern;
        boolean shouldShowLights;
        int lightColor;
        AudioAttributes audioAttributes;
        int usage;
        HashMap<String, Object> hashMap = new HashMap<>();
        if (Build.VERSION.SDK_INT >= 26) {
            id2 = notificationChannel.getId();
            hashMap.put("id", id2);
            name = notificationChannel.getName();
            hashMap.put(Constants.NAME, name);
            description = notificationChannel.getDescription();
            hashMap.put("description", description);
            group = notificationChannel.getGroup();
            hashMap.put("groupId", group);
            canShowBadge = notificationChannel.canShowBadge();
            hashMap.put("showBadge", Boolean.valueOf(canShowBadge));
            importance = notificationChannel.getImportance();
            hashMap.put("importance", Integer.valueOf(importance));
            sound = notificationChannel.getSound();
            if (sound == null) {
                hashMap.put("sound", null);
                hashMap.put("playSound", Boolean.FALSE);
            } else {
                hashMap.put("playSound", Boolean.TRUE);
                List asList = Arrays.asList(SoundSource.values());
                if (sound.getScheme().equals("android.resource")) {
                    String[] split = sound.toString().split("/");
                    String str = split[split.length - 1];
                    Integer tryParseInt = tryParseInt(str);
                    if (tryParseInt == null) {
                        hashMap.put("soundSource", Integer.valueOf(asList.indexOf(SoundSource.RawResource)));
                        hashMap.put("sound", str);
                    } else {
                        try {
                            String resourceEntryName = this.applicationContext.getResources().getResourceEntryName(tryParseInt.intValue());
                            if (resourceEntryName != null) {
                                hashMap.put("soundSource", Integer.valueOf(asList.indexOf(SoundSource.RawResource)));
                                hashMap.put("sound", resourceEntryName);
                            }
                        } catch (Exception unused) {
                            hashMap.put("sound", null);
                            hashMap.put("playSound", Boolean.FALSE);
                        }
                    }
                } else {
                    hashMap.put("soundSource", Integer.valueOf(asList.indexOf(SoundSource.Uri)));
                    hashMap.put("sound", sound.toString());
                }
            }
            canBypassDnd = notificationChannel.canBypassDnd();
            hashMap.put("bypassDnd", Boolean.valueOf(canBypassDnd));
            shouldVibrate = notificationChannel.shouldVibrate();
            hashMap.put("enableVibration", Boolean.valueOf(shouldVibrate));
            vibrationPattern = notificationChannel.getVibrationPattern();
            hashMap.put("vibrationPattern", vibrationPattern);
            shouldShowLights = notificationChannel.shouldShowLights();
            hashMap.put("enableLights", Boolean.valueOf(shouldShowLights));
            lightColor = notificationChannel.getLightColor();
            hashMap.put("ledColor", Integer.valueOf(lightColor));
            audioAttributes = notificationChannel.getAudioAttributes();
            if (audioAttributes == null) {
                usage = 5;
            } else {
                usage = audioAttributes.getUsage();
            }
            hashMap.put("audioAttributesUsage", Integer.valueOf(usage));
        }
        return hashMap;
    }

    private static String getNextFireDate(NotificationDetails notificationDetails) {
        LocalDateTime parse;
        LocalDateTime plusWeeks;
        DateTimeFormatter dateTimeFormatter;
        String format;
        LocalDateTime parse2;
        LocalDateTime plusDays;
        DateTimeFormatter dateTimeFormatter2;
        String format2;
        ScheduledNotificationRepeatFrequency scheduledNotificationRepeatFrequency = notificationDetails.scheduledNotificationRepeatFrequency;
        if (scheduledNotificationRepeatFrequency == ScheduledNotificationRepeatFrequency.Daily) {
            parse2 = LocalDateTime.parse(notificationDetails.scheduledDateTime);
            plusDays = parse2.plusDays(1L);
            dateTimeFormatter2 = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
            format2 = dateTimeFormatter2.format(plusDays);
            return format2;
        } else if (scheduledNotificationRepeatFrequency == ScheduledNotificationRepeatFrequency.Weekly) {
            parse = LocalDateTime.parse(notificationDetails.scheduledDateTime);
            plusWeeks = parse.plusWeeks(1L);
            dateTimeFormatter = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
            format = dateTimeFormatter.format(plusWeeks);
            return format;
        } else {
            return null;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:13:0x005c */
    /* JADX WARN: Incorrect condition in loop: B:20:0x0078 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getNextFireDateMatchingDateTimeComponents(com.dexterous.flutterlocalnotifications.models.NotificationDetails r10) {
        /*
            java.lang.String r0 = r10.timeZoneName
            java.time.ZoneId r8 = com.dexterous.flutterlocalnotifications.b.a(r0)
            java.lang.String r0 = r10.scheduledDateTime
            java.time.LocalDateTime r0 = com.dexterous.flutterlocalnotifications.z0.a(r0)
            java.time.ZonedDateTime r0 = com.dexterous.flutterlocalnotifications.c.a(r0, r8)
            java.time.ZonedDateTime r9 = com.dexterous.flutterlocalnotifications.d.a(r8)
            int r1 = com.dexterous.flutterlocalnotifications.e.a(r9)
            int r2 = com.dexterous.flutterlocalnotifications.b1.a(r9)
            int r3 = com.dexterous.flutterlocalnotifications.a1.a(r9)
            int r4 = com.dexterous.flutterlocalnotifications.f.a(r0)
            int r5 = com.dexterous.flutterlocalnotifications.g.a(r0)
            int r6 = com.dexterous.flutterlocalnotifications.h.a(r0)
            int r7 = com.dexterous.flutterlocalnotifications.m.a(r0)
            java.time.ZonedDateTime r1 = com.dexterous.flutterlocalnotifications.x.a(r1, r2, r3, r4, r5, r6, r7, r8)
        L34:
            boolean r2 = r1.isBefore(r9)
            r3 = 1
            if (r2 == 0) goto L41
            java.time.ZonedDateTime r1 = com.dexterous.flutterlocalnotifications.i0.a(r1, r3)
            goto L34
        L41:
            com.dexterous.flutterlocalnotifications.models.DateTimeComponents r10 = r10.matchDateTimeComponents
            com.dexterous.flutterlocalnotifications.models.DateTimeComponents r2 = com.dexterous.flutterlocalnotifications.models.DateTimeComponents.Time
            if (r10 != r2) goto L50
            java.time.format.DateTimeFormatter r10 = com.dexterous.flutterlocalnotifications.t0.a()
            java.lang.String r10 = com.dexterous.flutterlocalnotifications.x0.a(r10, r1)
            return r10
        L50:
            com.dexterous.flutterlocalnotifications.models.DateTimeComponents r2 = com.dexterous.flutterlocalnotifications.models.DateTimeComponents.DayOfWeekAndTime
            if (r10 != r2) goto L6c
        L54:
            java.time.DayOfWeek r10 = com.dexterous.flutterlocalnotifications.y0.a(r1)
            java.time.DayOfWeek r2 = com.dexterous.flutterlocalnotifications.y0.a(r0)
            if (r10 == r2) goto L63
            java.time.ZonedDateTime r1 = com.dexterous.flutterlocalnotifications.i0.a(r1, r3)
            goto L54
        L63:
            java.time.format.DateTimeFormatter r10 = com.dexterous.flutterlocalnotifications.t0.a()
            java.lang.String r10 = com.dexterous.flutterlocalnotifications.x0.a(r10, r1)
            return r10
        L6c:
            com.dexterous.flutterlocalnotifications.models.DateTimeComponents r2 = com.dexterous.flutterlocalnotifications.models.DateTimeComponents.DayOfMonthAndTime
            if (r10 != r2) goto L88
        L70:
            int r10 = com.dexterous.flutterlocalnotifications.a1.a(r1)
            int r2 = com.dexterous.flutterlocalnotifications.a1.a(r0)
            if (r10 == r2) goto L7f
            java.time.ZonedDateTime r1 = com.dexterous.flutterlocalnotifications.i0.a(r1, r3)
            goto L70
        L7f:
            java.time.format.DateTimeFormatter r10 = com.dexterous.flutterlocalnotifications.t0.a()
            java.lang.String r10 = com.dexterous.flutterlocalnotifications.x0.a(r10, r1)
            return r10
        L88:
            com.dexterous.flutterlocalnotifications.models.DateTimeComponents r2 = com.dexterous.flutterlocalnotifications.models.DateTimeComponents.DateAndTime
            if (r10 != r2) goto Laf
        L8c:
            int r10 = com.dexterous.flutterlocalnotifications.b1.a(r1)
            int r2 = com.dexterous.flutterlocalnotifications.b1.a(r0)
            if (r10 != r2) goto Laa
            int r10 = com.dexterous.flutterlocalnotifications.a1.a(r1)
            int r2 = com.dexterous.flutterlocalnotifications.a1.a(r0)
            if (r10 == r2) goto La1
            goto Laa
        La1:
            java.time.format.DateTimeFormatter r10 = com.dexterous.flutterlocalnotifications.t0.a()
            java.lang.String r10 = com.dexterous.flutterlocalnotifications.x0.a(r10, r1)
            return r10
        Laa:
            java.time.ZonedDateTime r1 = com.dexterous.flutterlocalnotifications.i0.a(r1, r3)
            goto L8c
        Laf:
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin.getNextFireDateMatchingDateTimeComponents(com.dexterous.flutterlocalnotifications.models.NotificationDetails):java.lang.String");
    }

    private void getNotificationAppLaunchDetails(MethodChannel.Result result) {
        boolean z10;
        HashMap hashMap = new HashMap();
        Boolean bool = Boolean.FALSE;
        Activity activity = this.mainActivity;
        if (activity != null) {
            Intent intent = activity.getIntent();
            if (intent != null && ((SELECT_NOTIFICATION.equals(intent.getAction()) || SELECT_FOREGROUND_NOTIFICATION_ACTION.equals(intent.getAction())) && !launchedActivityFromHistory(intent))) {
                z10 = true;
            } else {
                z10 = false;
            }
            Boolean valueOf = Boolean.valueOf(z10);
            if (valueOf.booleanValue()) {
                hashMap.put("notificationResponse", extractNotificationResponseMap(intent));
            }
            bool = valueOf;
        }
        hashMap.put(NOTIFICATION_LAUNCHED_APP, bool);
        result.success(hashMap);
    }

    private void getNotificationChannels(MethodChannel.Result result) {
        try {
            List<Object> g10 = getNotificationManager(this.applicationContext).g();
            ArrayList arrayList = new ArrayList();
            for (Object obj : g10) {
                arrayList.add(getMappedNotificationChannel(o.a(obj)));
            }
            result.success(arrayList);
        } catch (Throwable th) {
            result.error(GET_NOTIFICATION_CHANNELS_ERROR_CODE, th.getMessage(), Log.getStackTraceString(th));
        }
    }

    private static androidx.core.app.p getNotificationManager(Context context) {
        return androidx.core.app.p.e(context);
    }

    private boolean hasInvalidBigPictureResources(MethodChannel.Result result, NotificationDetails notificationDetails) {
        if (notificationDetails.style != NotificationStyle.BigPicture) {
            return false;
        }
        BigPictureStyleInformation bigPictureStyleInformation = (BigPictureStyleInformation) notificationDetails.styleInformation;
        if (hasInvalidLargeIcon(result, bigPictureStyleInformation.largeIcon, bigPictureStyleInformation.largeIconBitmapSource)) {
            return true;
        }
        BitmapSource bitmapSource = bigPictureStyleInformation.bigPictureBitmapSource;
        if (bitmapSource == BitmapSource.DrawableResource) {
            String str = (String) bigPictureStyleInformation.bigPicture;
            if (!StringUtils.isNullOrEmpty(str).booleanValue() || isValidDrawableResource(this.applicationContext, str, result, INVALID_BIG_PICTURE_ERROR_CODE)) {
                return false;
            }
            return true;
        } else if (bitmapSource == BitmapSource.FilePath) {
            return StringUtils.isNullOrEmpty((String) bigPictureStyleInformation.bigPicture).booleanValue();
        } else {
            if (bitmapSource != BitmapSource.ByteArray) {
                return false;
            }
            byte[] bArr = (byte[]) bigPictureStyleInformation.bigPicture;
            if (bArr != null && bArr.length != 0) {
                return false;
            }
            return true;
        }
    }

    private boolean hasInvalidIcon(MethodChannel.Result result, String str) {
        if (!StringUtils.isNullOrEmpty(str).booleanValue() && !isValidDrawableResource(this.applicationContext, str, result, INVALID_ICON_ERROR_CODE)) {
            return true;
        }
        return false;
    }

    private boolean hasInvalidLargeIcon(MethodChannel.Result result, Object obj, BitmapSource bitmapSource) {
        BitmapSource bitmapSource2 = BitmapSource.DrawableResource;
        if (bitmapSource != bitmapSource2 && bitmapSource != BitmapSource.FilePath) {
            if (bitmapSource == BitmapSource.ByteArray && ((byte[]) obj).length == 0) {
                return true;
            }
            return false;
        }
        String str = (String) obj;
        if (!StringUtils.isNullOrEmpty(str).booleanValue() && bitmapSource == bitmapSource2 && !isValidDrawableResource(this.applicationContext, str, result, INVALID_LARGE_ICON_ERROR_CODE)) {
            return true;
        }
        return false;
    }

    private boolean hasInvalidLedDetails(MethodChannel.Result result, NotificationDetails notificationDetails) {
        if (notificationDetails.ledColor != null) {
            if (notificationDetails.ledOnMs == null || notificationDetails.ledOffMs == null) {
                result.error(INVALID_LED_DETAILS_ERROR_CODE, INVALID_LED_DETAILS_ERROR_MESSAGE, null);
                return true;
            }
            return false;
        }
        return false;
    }

    private boolean hasInvalidRawSoundResource(MethodChannel.Result result, NotificationDetails notificationDetails) {
        if (!StringUtils.isNullOrEmpty(notificationDetails.sound).booleanValue()) {
            SoundSource soundSource = notificationDetails.soundSource;
            if ((soundSource == null || soundSource == SoundSource.RawResource) && this.applicationContext.getResources().getIdentifier(notificationDetails.sound, "raw", this.applicationContext.getPackageName()) == 0) {
                result.error(INVALID_SOUND_ERROR_CODE, String.format(INVALID_RAW_RESOURCE_ERROR_MESSAGE, notificationDetails.sound), null);
                return true;
            }
            return false;
        }
        return false;
    }

    private void initialize(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) ((Map) methodCall.arguments()).get(DEFAULT_ICON);
        if (!isValidDrawableResource(this.applicationContext, str, result, INVALID_ICON_ERROR_CODE)) {
            return;
        }
        Long a10 = g2.a.a(methodCall.argument(DISPATCHER_HANDLE));
        Long a11 = g2.a.a(methodCall.argument(CALLBACK_HANDLE));
        if (a10 != null && a11 != null) {
            new f2.a(this.applicationContext).e(a10, a11);
        }
        this.applicationContext.getSharedPreferences(SHARED_PREFERENCES_KEY, 0).edit().putString(DEFAULT_ICON, str).apply();
        result.success(Boolean.TRUE);
    }

    private static boolean isValidDrawableResource(Context context, String str, MethodChannel.Result result, String str2) {
        if (context.getResources().getIdentifier(str, DRAWABLE, context.getPackageName()) == 0) {
            result.error(str2, String.format(INVALID_DRAWABLE_RESOURCE_ERROR_MESSAGE, str), null);
            return false;
        }
        return true;
    }

    private static boolean launchedActivityFromHistory(Intent intent) {
        if (intent != null && (intent.getFlags() & 1048576) == 1048576) {
            return true;
        }
        return false;
    }

    private static ArrayList<NotificationDetails> loadScheduledNotifications(Context context) {
        ArrayList<NotificationDetails> arrayList = new ArrayList<>();
        String string = context.getSharedPreferences(SCHEDULED_NOTIFICATIONS, 0).getString(SCHEDULED_NOTIFICATIONS, null);
        if (string != null) {
            return (ArrayList) buildGson().n(string, new a().d());
        }
        return arrayList;
    }

    private void pendingNotificationRequests(MethodChannel.Result result) {
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(this.applicationContext);
        ArrayList arrayList = new ArrayList();
        Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
        while (it.hasNext()) {
            NotificationDetails next = it.next();
            HashMap hashMap = new HashMap();
            hashMap.put("id", next.f5552id);
            hashMap.put("title", next.title);
            hashMap.put("body", next.body);
            hashMap.put(PAYLOAD, next.payload);
            arrayList.add(hashMap);
        }
        result.success(arrayList);
    }

    private void processForegroundNotificationAction(Intent intent, Map<String, Object> map) {
        if (intent.getBooleanExtra(CANCEL_NOTIFICATION, false)) {
            androidx.core.app.p.e(this.applicationContext).b(((Integer) map.get(NOTIFICATION_ID)).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeNotificationFromCache(Context context, Integer num) {
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(context);
        Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().f5552id.equals(num)) {
                it.remove();
                break;
            }
        }
        saveScheduledNotifications(context, loadScheduledNotifications);
    }

    private void repeat(MethodCall methodCall, MethodChannel.Result result) {
        NotificationDetails extractNotificationDetails = extractNotificationDetails(result, (Map) methodCall.arguments());
        if (extractNotificationDetails != null) {
            try {
                repeatNotification(this.applicationContext, extractNotificationDetails, Boolean.TRUE);
                result.success(null);
            } catch (i e10) {
                result.error(e10.f5537a, e10.getMessage(), null);
            }
        }
    }

    private static void repeatNotification(Context context, NotificationDetails notificationDetails, Boolean bool) {
        long calculateRepeatIntervalMilliseconds = calculateRepeatIntervalMilliseconds(notificationDetails);
        long longValue = notificationDetails.calledAt.longValue();
        if (notificationDetails.repeatTime != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(11, notificationDetails.repeatTime.hour.intValue());
            calendar.set(12, notificationDetails.repeatTime.minute.intValue());
            calendar.set(13, notificationDetails.repeatTime.second.intValue());
            Integer num = notificationDetails.day;
            if (num != null) {
                calendar.set(7, num.intValue());
            }
            longValue = calendar.getTimeInMillis();
        }
        long calculateNextNotificationTrigger = calculateNextNotificationTrigger(longValue, calculateRepeatIntervalMilliseconds);
        String v10 = buildGson().v(notificationDetails);
        Intent intent = new Intent(context, ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, v10);
        PendingIntent broadcastPendingIntent = getBroadcastPendingIntent(context, notificationDetails.f5552id.intValue(), intent);
        AlarmManager alarmManager = getAlarmManager(context);
        if (notificationDetails.scheduleMode == null) {
            notificationDetails.scheduleMode = ScheduleMode.inexact;
        }
        if (notificationDetails.scheduleMode.useAllowWhileIdle()) {
            setupAllowWhileIdleAlarm(notificationDetails, alarmManager, calculateNextNotificationTrigger, broadcastPendingIntent);
        } else {
            alarmManager.setInexactRepeating(0, calculateNextNotificationTrigger, calculateRepeatIntervalMilliseconds, broadcastPendingIntent);
        }
        if (bool.booleanValue()) {
            saveScheduledNotification(context, notificationDetails);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void rescheduleNotifications(Context context) {
        Iterator<NotificationDetails> it = loadScheduledNotifications(context).iterator();
        while (it.hasNext()) {
            NotificationDetails next = it.next();
            try {
            } catch (g e10) {
                Log.e(TAG, e10.getMessage());
                removeNotificationFromCache(context, next.f5552id);
            }
            if (next.repeatInterval == null && next.repeatIntervalMilliseconds == null) {
                if (next.timeZoneName != null) {
                    zonedScheduleNotification(context, next, Boolean.FALSE);
                } else {
                    scheduleNotification(context, next, Boolean.FALSE);
                }
            }
            repeatNotification(context, next, Boolean.FALSE);
        }
    }

    private static Uri retrieveSoundResourceUri(Context context, String str, SoundSource soundSource) {
        if (StringUtils.isNullOrEmpty(str).booleanValue()) {
            return RingtoneManager.getDefaultUri(2);
        }
        if (soundSource != null && soundSource != SoundSource.RawResource) {
            if (soundSource == SoundSource.Uri) {
                return Uri.parse(str);
            }
            return null;
        }
        return Uri.parse("android.resource://" + context.getPackageName() + "/raw/" + str);
    }

    private static void saveScheduledNotification(Context context, NotificationDetails notificationDetails) {
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(context);
        ArrayList arrayList = new ArrayList();
        Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
        while (it.hasNext()) {
            NotificationDetails next = it.next();
            if (!next.f5552id.equals(notificationDetails.f5552id)) {
                arrayList.add(next);
            }
        }
        arrayList.add(notificationDetails);
        saveScheduledNotifications(context, arrayList);
    }

    private static void saveScheduledNotifications(Context context, ArrayList<NotificationDetails> arrayList) {
        context.getSharedPreferences(SCHEDULED_NOTIFICATIONS, 0).edit().putString(SCHEDULED_NOTIFICATIONS, buildGson().v(arrayList)).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void scheduleNextNotification(Context context, NotificationDetails notificationDetails) {
        try {
            if (notificationDetails.scheduledNotificationRepeatFrequency != null) {
                zonedScheduleNextNotification(context, notificationDetails);
            } else if (notificationDetails.matchDateTimeComponents != null) {
                zonedScheduleNextNotificationMatchingDateComponents(context, notificationDetails);
            } else {
                if (notificationDetails.repeatInterval == null && notificationDetails.repeatIntervalMilliseconds == null) {
                    removeNotificationFromCache(context, notificationDetails.f5552id);
                }
                scheduleNextRepeatingNotification(context, notificationDetails);
            }
        } catch (g e10) {
            Log.e(TAG, e10.getMessage());
            removeNotificationFromCache(context, notificationDetails.f5552id);
        }
    }

    private static void scheduleNextRepeatingNotification(Context context, NotificationDetails notificationDetails) {
        long calculateNextNotificationTrigger = calculateNextNotificationTrigger(notificationDetails.calledAt.longValue(), calculateRepeatIntervalMilliseconds(notificationDetails));
        String v10 = buildGson().v(notificationDetails);
        Intent intent = new Intent(context, ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, v10);
        PendingIntent broadcastPendingIntent = getBroadcastPendingIntent(context, notificationDetails.f5552id.intValue(), intent);
        AlarmManager alarmManager = getAlarmManager(context);
        if (notificationDetails.scheduleMode == null) {
            notificationDetails.scheduleMode = ScheduleMode.exactAllowWhileIdle;
        }
        setupAllowWhileIdleAlarm(notificationDetails, alarmManager, calculateNextNotificationTrigger, broadcastPendingIntent);
        saveScheduledNotification(context, notificationDetails);
    }

    private static void scheduleNotification(Context context, NotificationDetails notificationDetails, Boolean bool) {
        String v10 = buildGson().v(notificationDetails);
        Intent intent = new Intent(context, ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, v10);
        setupAlarm(notificationDetails, getAlarmManager(context), notificationDetails.millisecondsSinceEpoch.longValue(), getBroadcastPendingIntent(context, notificationDetails.f5552id.intValue(), intent));
        if (bool.booleanValue()) {
            saveScheduledNotification(context, notificationDetails);
        }
    }

    private Boolean sendNotificationPayloadMessage(Intent intent) {
        if (!SELECT_NOTIFICATION.equals(intent.getAction()) && !SELECT_FOREGROUND_NOTIFICATION_ACTION.equals(intent.getAction())) {
            return Boolean.FALSE;
        }
        Map<String, Object> extractNotificationResponseMap = extractNotificationResponseMap(intent);
        if (SELECT_FOREGROUND_NOTIFICATION_ACTION.equals(intent.getAction())) {
            processForegroundNotificationAction(intent, extractNotificationResponseMap);
        }
        this.channel.invokeMethod("didReceiveNotificationResponse", extractNotificationResponseMap);
        return Boolean.TRUE;
    }

    private void setActivity(Activity activity) {
        this.mainActivity = activity;
    }

    private static void setBigPictureStyle(Context context, NotificationDetails notificationDetails, k.e eVar) {
        CharSequence charSequence;
        CharSequence charSequence2;
        BigPictureStyleInformation bigPictureStyleInformation = (BigPictureStyleInformation) notificationDetails.styleInformation;
        k.b bVar = new k.b();
        if (bigPictureStyleInformation.contentTitle != null) {
            if (bigPictureStyleInformation.htmlFormatContentTitle.booleanValue()) {
                charSequence2 = fromHtml(bigPictureStyleInformation.contentTitle);
            } else {
                charSequence2 = bigPictureStyleInformation.contentTitle;
            }
            bVar.r(charSequence2);
        }
        if (bigPictureStyleInformation.summaryText != null) {
            if (bigPictureStyleInformation.htmlFormatSummaryText.booleanValue()) {
                charSequence = fromHtml(bigPictureStyleInformation.summaryText);
            } else {
                charSequence = bigPictureStyleInformation.summaryText;
            }
            bVar.s(charSequence);
        }
        if (bigPictureStyleInformation.hideExpandedLargeIcon.booleanValue()) {
            bVar.o(null);
        } else {
            Object obj = bigPictureStyleInformation.largeIcon;
            if (obj != null) {
                bVar.o(getBitmapFromSource(context, obj, bigPictureStyleInformation.largeIconBitmapSource));
            }
        }
        bVar.p(getBitmapFromSource(context, bigPictureStyleInformation.bigPicture, bigPictureStyleInformation.bigPictureBitmapSource));
        eVar.J(bVar);
    }

    private static void setBigTextStyle(NotificationDetails notificationDetails, k.e eVar) {
        CharSequence charSequence;
        CharSequence charSequence2;
        CharSequence charSequence3;
        BigTextStyleInformation bigTextStyleInformation = (BigTextStyleInformation) notificationDetails.styleInformation;
        k.c cVar = new k.c();
        if (bigTextStyleInformation.bigText != null) {
            if (bigTextStyleInformation.htmlFormatBigText.booleanValue()) {
                charSequence3 = fromHtml(bigTextStyleInformation.bigText);
            } else {
                charSequence3 = bigTextStyleInformation.bigText;
            }
            cVar.n(charSequence3);
        }
        if (bigTextStyleInformation.contentTitle != null) {
            if (bigTextStyleInformation.htmlFormatContentTitle.booleanValue()) {
                charSequence2 = fromHtml(bigTextStyleInformation.contentTitle);
            } else {
                charSequence2 = bigTextStyleInformation.contentTitle;
            }
            cVar.o(charSequence2);
        }
        if (bigTextStyleInformation.summaryText != null) {
            if (bigTextStyleInformation.htmlFormatSummaryText.booleanValue()) {
                charSequence = fromHtml(bigTextStyleInformation.summaryText);
            } else {
                charSequence = bigTextStyleInformation.summaryText;
            }
            cVar.p(charSequence);
        }
        eVar.J(cVar);
    }

    private void setCanScheduleExactNotifications(MethodChannel.Result result) {
        boolean canScheduleExactAlarms;
        if (Build.VERSION.SDK_INT >= 31) {
            canScheduleExactAlarms = getAlarmManager(this.applicationContext).canScheduleExactAlarms();
            result.success(Boolean.valueOf(canScheduleExactAlarms));
            return;
        }
        result.success(Boolean.TRUE);
    }

    private static void setCategory(NotificationDetails notificationDetails, k.e eVar) {
        String str = notificationDetails.category;
        if (str == null) {
            return;
        }
        eVar.h(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.app.k$h, androidx.core.app.k$j] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.text.Spanned] */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.core.app.k$e] */
    private static void setInboxStyle(NotificationDetails notificationDetails, k.e eVar) {
        CharSequence charSequence;
        CharSequence charSequence2;
        InboxStyleInformation inboxStyleInformation = (InboxStyleInformation) notificationDetails.styleInformation;
        ?? hVar = new k.h();
        if (inboxStyleInformation.contentTitle != null) {
            if (inboxStyleInformation.htmlFormatContentTitle.booleanValue()) {
                charSequence2 = fromHtml(inboxStyleInformation.contentTitle);
            } else {
                charSequence2 = inboxStyleInformation.contentTitle;
            }
            hVar.o(charSequence2);
        }
        if (inboxStyleInformation.summaryText != null) {
            if (inboxStyleInformation.htmlFormatSummaryText.booleanValue()) {
                charSequence = fromHtml(inboxStyleInformation.summaryText);
            } else {
                charSequence = inboxStyleInformation.summaryText;
            }
            hVar.p(charSequence);
        }
        ArrayList<String> arrayList = inboxStyleInformation.lines;
        if (arrayList != null) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (inboxStyleInformation.htmlFormatLines.booleanValue()) {
                    next = fromHtml(next);
                }
                hVar.n(next);
            }
        }
        eVar.J(hVar);
    }

    private static void setLights(NotificationDetails notificationDetails, k.e eVar) {
        if (BooleanUtils.getValue(notificationDetails.enableLights) && notificationDetails.ledOnMs != null && notificationDetails.ledOffMs != null) {
            eVar.x(notificationDetails.ledColor.intValue(), notificationDetails.ledOnMs.intValue(), notificationDetails.ledOffMs.intValue());
        }
    }

    private static void setMediaStyle(k.e eVar) {
        eVar.J(new a1.a());
    }

    private static void setMessagingStyle(Context context, NotificationDetails notificationDetails, k.e eVar) {
        MessagingStyleInformation messagingStyleInformation = (MessagingStyleInformation) notificationDetails.styleInformation;
        k.i iVar = new k.i(buildPerson(context, messagingStyleInformation.person));
        iVar.u(BooleanUtils.getValue(messagingStyleInformation.groupConversation));
        String str = messagingStyleInformation.conversationTitle;
        if (str != null) {
            iVar.t(str);
        }
        ArrayList<MessageDetails> arrayList = messagingStyleInformation.messages;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<MessageDetails> it = messagingStyleInformation.messages.iterator();
            while (it.hasNext()) {
                iVar.n(createMessage(context, it.next()));
            }
        }
        eVar.J(iVar);
    }

    private static void setProgress(NotificationDetails notificationDetails, k.e eVar) {
        if (BooleanUtils.getValue(notificationDetails.showProgress)) {
            eVar.D(notificationDetails.maxProgress.intValue(), notificationDetails.progress.intValue(), notificationDetails.indeterminate.booleanValue());
        }
    }

    private static void setSmallIcon(Context context, NotificationDetails notificationDetails, k.e eVar) {
        if (!StringUtils.isNullOrEmpty(notificationDetails.icon).booleanValue()) {
            eVar.H(getDrawableResourceId(context, notificationDetails.icon));
            return;
        }
        String string = context.getSharedPreferences(SHARED_PREFERENCES_KEY, 0).getString(DEFAULT_ICON, null);
        if (StringUtils.isNullOrEmpty(string).booleanValue()) {
            eVar.H(notificationDetails.iconResourceId.intValue());
        } else {
            eVar.H(getDrawableResourceId(context, string));
        }
    }

    private static void setSound(Context context, NotificationDetails notificationDetails, k.e eVar) {
        if (BooleanUtils.getValue(notificationDetails.playSound)) {
            eVar.I(retrieveSoundResourceUri(context, notificationDetails.sound, notificationDetails.soundSource));
        } else {
            eVar.I(null);
        }
    }

    private static void setStyle(Context context, NotificationDetails notificationDetails, k.e eVar) {
        int i10 = f.f5530c[notificationDetails.style.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            setMediaStyle(eVar);
                            return;
                        }
                        return;
                    }
                    setMessagingStyle(context, notificationDetails, eVar);
                    return;
                }
                setInboxStyle(notificationDetails, eVar);
                return;
            }
            setBigTextStyle(notificationDetails, eVar);
            return;
        }
        setBigPictureStyle(context, notificationDetails, eVar);
    }

    private static void setTimeoutAfter(NotificationDetails notificationDetails, k.e eVar) {
        Long l10 = notificationDetails.timeoutAfter;
        if (l10 == null) {
            return;
        }
        eVar.M(l10.longValue());
    }

    private static void setVibrationPattern(NotificationDetails notificationDetails, k.e eVar) {
        if (BooleanUtils.getValue(notificationDetails.enableVibration)) {
            long[] jArr = notificationDetails.vibrationPattern;
            if (jArr != null && jArr.length > 0) {
                eVar.O(jArr);
                return;
            }
            return;
        }
        eVar.O(new long[]{0});
    }

    private static void setVisibility(NotificationDetails notificationDetails, k.e eVar) {
        int i10;
        Integer num = notificationDetails.visibility;
        if (num == null) {
            return;
        }
        int intValue = num.intValue();
        if (intValue != 0) {
            i10 = 1;
            if (intValue != 1) {
                if (intValue == 2) {
                    i10 = -1;
                } else {
                    throw new IllegalArgumentException("Unknown index: " + notificationDetails.visibility);
                }
            }
        } else {
            i10 = 0;
        }
        eVar.P(i10);
    }

    private static void setupAlarm(NotificationDetails notificationDetails, AlarmManager alarmManager, long j10, PendingIntent pendingIntent) {
        if (notificationDetails.scheduleMode == null) {
            notificationDetails.scheduleMode = ScheduleMode.exact;
        }
        if (notificationDetails.scheduleMode.useAllowWhileIdle()) {
            setupAllowWhileIdleAlarm(notificationDetails, alarmManager, j10, pendingIntent);
        } else if (notificationDetails.scheduleMode.useExactAlarm()) {
            checkCanScheduleExactAlarms(alarmManager);
            androidx.core.app.e.c(alarmManager, 0, j10, pendingIntent);
        } else if (notificationDetails.scheduleMode.useAlarmClock()) {
            checkCanScheduleExactAlarms(alarmManager);
            androidx.core.app.e.a(alarmManager, j10, pendingIntent, pendingIntent);
        } else {
            alarmManager.set(0, j10, pendingIntent);
        }
    }

    private static void setupAllowWhileIdleAlarm(NotificationDetails notificationDetails, AlarmManager alarmManager, long j10, PendingIntent pendingIntent) {
        if (notificationDetails.scheduleMode.useExactAlarm()) {
            checkCanScheduleExactAlarms(alarmManager);
            androidx.core.app.e.d(alarmManager, 0, j10, pendingIntent);
        } else if (notificationDetails.scheduleMode.useAlarmClock()) {
            checkCanScheduleExactAlarms(alarmManager);
            androidx.core.app.e.a(alarmManager, j10, pendingIntent, pendingIntent);
        } else {
            androidx.core.app.e.b(alarmManager, 0, j10, pendingIntent);
        }
    }

    private static void setupNotificationChannel(Context context, NotificationChannelDetails notificationChannelDetails) {
        Integer num;
        int i10;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            w0.a();
            NotificationChannel a10 = v0.a(notificationChannelDetails.f5550id, notificationChannelDetails.name, notificationChannelDetails.importance.intValue());
            a10.setDescription(notificationChannelDetails.description);
            a10.setGroup(notificationChannelDetails.groupId);
            if (!notificationChannelDetails.playSound.booleanValue()) {
                a10.setSound(null, null);
            } else {
                Integer num2 = notificationChannelDetails.audioAttributesUsage;
                if (num2 != null) {
                    i10 = num2.intValue();
                } else {
                    i10 = 5;
                }
                a10.setSound(retrieveSoundResourceUri(context, notificationChannelDetails.sound, notificationChannelDetails.soundSource), new AudioAttributes.Builder().setUsage(Integer.valueOf(i10).intValue()).build());
            }
            if (BooleanUtils.getValue(notificationChannelDetails.bypassDnd)) {
                if (notificationManager.isNotificationPolicyAccessGranted()) {
                    a10.setBypassDnd(true);
                } else {
                    Log.w(TAG, "Channel '" + notificationChannelDetails.name + "' was set to bypass Do Not Disturb but the OS prevents it.");
                }
            }
            a10.enableVibration(BooleanUtils.getValue(notificationChannelDetails.enableVibration));
            long[] jArr = notificationChannelDetails.vibrationPattern;
            if (jArr != null && jArr.length > 0) {
                a10.setVibrationPattern(jArr);
            }
            boolean value = BooleanUtils.getValue(notificationChannelDetails.enableLights);
            a10.enableLights(value);
            if (value && (num = notificationChannelDetails.ledColor) != null) {
                a10.setLightColor(num.intValue());
            }
            a10.setShowBadge(BooleanUtils.getValue(notificationChannelDetails.showBadge));
            notificationManager.createNotificationChannel(a10);
        }
    }

    private void show(MethodCall methodCall, MethodChannel.Result result) {
        NotificationDetails extractNotificationDetails = extractNotificationDetails(result, (Map) methodCall.arguments());
        if (extractNotificationDetails != null) {
            showNotification(this.applicationContext, extractNotificationDetails);
            result.success(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void showNotification(Context context, NotificationDetails notificationDetails) {
        Notification createNotification = createNotification(context, notificationDetails);
        androidx.core.app.p notificationManager = getNotificationManager(context);
        String str = notificationDetails.tag;
        if (str != null) {
            notificationManager.i(str, notificationDetails.f5552id.intValue(), createNotification);
        } else {
            notificationManager.h(notificationDetails.f5552id.intValue(), createNotification);
        }
    }

    private void startForegroundService(MethodCall methodCall, MethodChannel.Result result) {
        Map<String, Object> map = (Map) methodCall.argument("notificationData");
        Integer num = (Integer) methodCall.argument("startType");
        ArrayList arrayList = (ArrayList) methodCall.argument("foregroundServiceTypes");
        if (arrayList != null && arrayList.size() == 0) {
            result.error("ARGUMENT_ERROR", "If foregroundServiceTypes is non-null it must not be empty!", null);
        } else if (map != null && num != null) {
            NotificationDetails extractNotificationDetails = extractNotificationDetails(result, map);
            if (extractNotificationDetails != null) {
                if (extractNotificationDetails.f5552id.intValue() != 0) {
                    d1 d1Var = new d1(extractNotificationDetails, num.intValue(), arrayList);
                    Intent intent = new Intent(this.applicationContext, c1.class);
                    intent.putExtra("com.dexterous.flutterlocalnotifications.ForegroundServiceStartParameter", d1Var);
                    androidx.core.content.a.o(this.applicationContext, intent);
                    result.success(null);
                    return;
                }
                result.error("ARGUMENT_ERROR", "The id of the notification for a foreground service must not be 0!", null);
            }
        } else {
            result.error("ARGUMENT_ERROR", "An argument passed to startForegroundService was null!", null);
        }
    }

    private void stopForegroundService(MethodChannel.Result result) {
        this.applicationContext.stopService(new Intent(this.applicationContext, c1.class));
        result.success(null);
    }

    private Integer tryParseInt(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private void zonedSchedule(MethodCall methodCall, MethodChannel.Result result) {
        NotificationDetails extractNotificationDetails = extractNotificationDetails(result, (Map) methodCall.arguments());
        if (extractNotificationDetails != null) {
            if (extractNotificationDetails.matchDateTimeComponents != null) {
                extractNotificationDetails.scheduledDateTime = getNextFireDateMatchingDateTimeComponents(extractNotificationDetails);
            }
            try {
                zonedScheduleNotification(this.applicationContext, extractNotificationDetails, Boolean.TRUE);
                result.success(null);
            } catch (i e10) {
                result.error(e10.f5537a, e10.getMessage(), null);
            }
        }
    }

    private static void zonedScheduleNextNotification(Context context, NotificationDetails notificationDetails) {
        String nextFireDate = getNextFireDate(notificationDetails);
        if (nextFireDate == null) {
            return;
        }
        notificationDetails.scheduledDateTime = nextFireDate;
        zonedScheduleNotification(context, notificationDetails, Boolean.TRUE);
    }

    private static void zonedScheduleNextNotificationMatchingDateComponents(Context context, NotificationDetails notificationDetails) {
        String nextFireDateMatchingDateTimeComponents = getNextFireDateMatchingDateTimeComponents(notificationDetails);
        if (nextFireDateMatchingDateTimeComponents == null) {
            return;
        }
        notificationDetails.scheduledDateTime = nextFireDateMatchingDateTimeComponents;
        zonedScheduleNotification(context, notificationDetails, Boolean.TRUE);
    }

    private static void zonedScheduleNotification(Context context, NotificationDetails notificationDetails, Boolean bool) {
        LocalDateTime parse;
        ZoneId of2;
        ZonedDateTime of3;
        long epochMilli;
        String v10 = buildGson().v(notificationDetails);
        Intent intent = new Intent(context, ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, v10);
        PendingIntent broadcastPendingIntent = getBroadcastPendingIntent(context, notificationDetails.f5552id.intValue(), intent);
        AlarmManager alarmManager = getAlarmManager(context);
        parse = LocalDateTime.parse(notificationDetails.scheduledDateTime);
        of2 = ZoneId.of(notificationDetails.timeZoneName);
        of3 = ZonedDateTime.of(parse, of2);
        epochMilli = of3.toInstant().toEpochMilli();
        setupAlarm(notificationDetails, alarmManager, epochMilli, broadcastPendingIntent);
        if (bool.booleanValue()) {
            saveScheduledNotification(context, notificationDetails);
        }
    }

    public void hasNotificationPolicyAccess(MethodChannel.Result result) {
        result.success(Boolean.valueOf(((NotificationManager) this.applicationContext.getSystemService("notification")).isNotificationPolicyAccessGranted()));
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        boolean canScheduleExactAlarms;
        if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
            return false;
        }
        if (this.permissionRequestProgress == h.RequestingExactAlarmsPermission && i10 == 2 && Build.VERSION.SDK_INT >= 31) {
            AlarmManager alarmManager = getAlarmManager(this.applicationContext);
            e1 e1Var = this.callback;
            canScheduleExactAlarms = alarmManager.canScheduleExactAlarms();
            e1Var.b(canScheduleExactAlarms);
            this.permissionRequestProgress = h.None;
        }
        if (this.permissionRequestProgress == h.RequestingFullScreenIntentPermission && i10 == 3 && Build.VERSION.SDK_INT >= 34) {
            this.callback.b(((NotificationManager) this.applicationContext.getSystemService("notification")).canUseFullScreenIntent());
            this.permissionRequestProgress = h.None;
        }
        if (this.permissionRequestProgress == h.RequestingNotificationPolicyAccess && i10 == 4) {
            this.callback.b(((NotificationManager) this.applicationContext.getSystemService("notification")).isNotificationPolicyAccessGranted());
            this.permissionRequestProgress = h.None;
        }
        return true;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        activityPluginBinding.addOnNewIntentListener(this);
        activityPluginBinding.addRequestPermissionsResultListener(this);
        activityPluginBinding.addActivityResultListener(this);
        Activity activity = activityPluginBinding.getActivity();
        this.mainActivity = activity;
        Intent intent = activity.getIntent();
        if (!launchedActivityFromHistory(intent) && SELECT_FOREGROUND_NOTIFICATION_ACTION.equals(intent.getAction())) {
            processForegroundNotificationAction(intent, extractNotificationResponseMap(intent));
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.applicationContext = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), METHOD_CHANNEL);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.mainActivity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.mainActivity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.channel.setMethodCallHandler(null);
        this.channel = null;
        this.applicationContext = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2096263152:
                if (str.equals(STOP_FOREGROUND_SERVICE)) {
                    c10 = 0;
                    break;
                }
                break;
            case -2041662895:
                if (str.equals(GET_NOTIFICATION_CHANNELS_METHOD)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1873731438:
                if (str.equals(DELETE_NOTIFICATION_CHANNEL_GROUP_METHOD)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1785484984:
                if (str.equals(REQUEST_NOTIFICATIONS_PERMISSION_METHOD)) {
                    c10 = 3;
                    break;
                }
                break;
            case -1624574341:
                if (str.equals(HAS_NOTIFICATION_POLICY_ACCESS_METHOD)) {
                    c10 = 4;
                    break;
                }
                break;
            case -1367724422:
                if (str.equals(CANCEL_METHOD)) {
                    c10 = 5;
                    break;
                }
                break;
            case -1108601471:
                if (str.equals(REQUEST_EXACT_ALARMS_PERMISSION_METHOD)) {
                    c10 = 6;
                    break;
                }
                break;
            case -950516363:
                if (str.equals(REQUEST_FULL_SCREEN_INTENT_PERMISSION_METHOD)) {
                    c10 = 7;
                    break;
                }
                break;
            case -799130106:
                if (str.equals(PENDING_NOTIFICATION_REQUESTS_METHOD)) {
                    c10 = '\b';
                    break;
                }
                break;
            case -321037320:
                if (str.equals(CANCEL_ALL_PENDING_NOTIFICATIONS_METHOD)) {
                    c10 = '\t';
                    break;
                }
                break;
            case -208611345:
                if (str.equals(GET_NOTIFICATION_APP_LAUNCH_DETAILS_METHOD)) {
                    c10 = '\n';
                    break;
                }
                break;
            case 3529469:
                if (str.equals(SHOW_METHOD)) {
                    c10 = 11;
                    break;
                }
                break;
            case 6625712:
                if (str.equals(PERIODICALLY_SHOW_METHOD)) {
                    c10 = '\f';
                    break;
                }
                break;
            case 116003316:
                if (str.equals(GET_ACTIVE_NOTIFICATION_MESSAGING_STYLE_METHOD)) {
                    c10 = '\r';
                    break;
                }
                break;
            case 476547271:
                if (str.equals(CANCEL_ALL_METHOD)) {
                    c10 = 14;
                    break;
                }
                break;
            case 548573423:
                if (str.equals(ZONED_SCHEDULE_METHOD)) {
                    c10 = 15;
                    break;
                }
                break;
            case 767006947:
                if (str.equals(CREATE_NOTIFICATION_CHANNEL_GROUP_METHOD)) {
                    c10 = 16;
                    break;
                }
                break;
            case 825311171:
                if (str.equals(GET_CALLBACK_HANDLE_METHOD)) {
                    c10 = 17;
                    break;
                }
                break;
            case 871091088:
                if (str.equals(INITIALIZE_METHOD)) {
                    c10 = 18;
                    break;
                }
                break;
            case 891942317:
                if (str.equals(ARE_NOTIFICATIONS_ENABLED_METHOD)) {
                    c10 = 19;
                    break;
                }
                break;
            case 972029712:
                if (str.equals(CAN_SCHEDULE_EXACT_NOTIFICATIONS_METHOD)) {
                    c10 = 20;
                    break;
                }
                break;
            case 1008472557:
                if (str.equals(DELETE_NOTIFICATION_CHANNEL_METHOD)) {
                    c10 = 21;
                    break;
                }
                break;
            case 1207771056:
                if (str.equals(START_FOREGROUND_SERVICE)) {
                    c10 = 22;
                    break;
                }
                break;
            case 1594833996:
                if (str.equals(GET_ACTIVE_NOTIFICATIONS_METHOD)) {
                    c10 = 23;
                    break;
                }
                break;
            case 1653467900:
                if (str.equals(CREATE_NOTIFICATION_CHANNEL_METHOD)) {
                    c10 = 24;
                    break;
                }
                break;
            case 2017789808:
                if (str.equals(REQUEST_NOTIFICATION_POLICY_ACCESS_METHOD)) {
                    c10 = 25;
                    break;
                }
                break;
            case 2147197514:
                if (str.equals(PERIODICALLY_SHOW_WITH_DURATION_METHOD)) {
                    c10 = 26;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                stopForegroundService(result);
                return;
            case 1:
                getNotificationChannels(result);
                return;
            case 2:
                deleteNotificationChannelGroup(methodCall, result);
                return;
            case 3:
                requestNotificationsPermission(new b(result));
                return;
            case 4:
                hasNotificationPolicyAccess(result);
                return;
            case 5:
                cancel(methodCall, result);
                return;
            case 6:
                requestExactAlarmsPermission(new c(result));
                return;
            case 7:
                requestFullScreenIntentPermission(new d(result));
                return;
            case '\b':
                pendingNotificationRequests(result);
                return;
            case '\t':
                cancelAllPendingNotifications(result);
                return;
            case '\n':
                getNotificationAppLaunchDetails(result);
                return;
            case 11:
                show(methodCall, result);
                return;
            case '\f':
                repeat(methodCall, result);
                return;
            case '\r':
                getActiveNotificationMessagingStyle(methodCall, result);
                return;
            case 14:
                cancelAllNotifications(result);
                return;
            case 15:
                zonedSchedule(methodCall, result);
                return;
            case 16:
                createNotificationChannelGroup(methodCall, result);
                return;
            case 17:
                getCallbackHandle(result);
                return;
            case 18:
                initialize(methodCall, result);
                return;
            case C1415p9.C /* 19 */:
                areNotificationsEnabled(result);
                return;
            case 20:
                setCanScheduleExactNotifications(result);
                return;
            case 21:
                deleteNotificationChannel(methodCall, result);
                return;
            case Build.API_LEVELS.API_22 /* 22 */:
                startForegroundService(methodCall, result);
                return;
            case Build.API_LEVELS.API_23 /* 23 */:
                getActiveNotifications(result);
                return;
            case Build.API_LEVELS.API_24 /* 24 */:
                createNotificationChannel(methodCall, result);
                return;
            case 25:
                requestNotificationPolicyAccess(new e(result));
                return;
            case 26:
                repeat(methodCall, result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(Intent intent) {
        Activity activity;
        boolean booleanValue = sendNotificationPayloadMessage(intent).booleanValue();
        if (booleanValue && (activity = this.mainActivity) != null) {
            activity.setIntent(intent);
        }
        return booleanValue;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        activityPluginBinding.addOnNewIntentListener(this);
        activityPluginBinding.addRequestPermissionsResultListener(this);
        activityPluginBinding.addActivityResultListener(this);
        this.mainActivity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        boolean z10 = false;
        if (this.permissionRequestProgress == h.RequestingNotificationPermission && i10 == 1) {
            if (iArr.length > 0 && iArr[0] == 0) {
                z10 = true;
            }
            this.callback.b(z10);
            this.permissionRequestProgress = h.None;
        }
        return z10;
    }

    public void requestExactAlarmsPermission(e1 e1Var) {
        boolean canScheduleExactAlarms;
        h hVar = this.permissionRequestProgress;
        h hVar2 = h.None;
        if (hVar != hVar2) {
            e1Var.a(PERMISSION_REQUEST_IN_PROGRESS_ERROR_MESSAGE);
            return;
        }
        this.callback = e1Var;
        if (Build.VERSION.SDK_INT >= 31) {
            canScheduleExactAlarms = getAlarmManager(this.applicationContext).canScheduleExactAlarms();
            if (!canScheduleExactAlarms) {
                this.permissionRequestProgress = h.RequestingExactAlarmsPermission;
                Activity activity = this.mainActivity;
                activity.startActivityForResult(new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM", Uri.parse("package:" + this.applicationContext.getPackageName())), 2);
                return;
            }
            this.callback.b(true);
            this.permissionRequestProgress = hVar2;
            return;
        }
        e1Var.b(true);
    }

    public void requestFullScreenIntentPermission(e1 e1Var) {
        h hVar = this.permissionRequestProgress;
        h hVar2 = h.None;
        if (hVar != hVar2) {
            e1Var.a(PERMISSION_REQUEST_IN_PROGRESS_ERROR_MESSAGE);
            return;
        }
        this.callback = e1Var;
        if (Build.VERSION.SDK_INT >= 34) {
            getAlarmManager(this.applicationContext);
            if (!((NotificationManager) this.applicationContext.getSystemService("notification")).canUseFullScreenIntent()) {
                this.permissionRequestProgress = h.RequestingFullScreenIntentPermission;
                Activity activity = this.mainActivity;
                activity.startActivityForResult(new Intent("android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT", Uri.parse("package:" + this.applicationContext.getPackageName())), 3);
                return;
            }
            this.callback.b(true);
            this.permissionRequestProgress = hVar2;
            return;
        }
        e1Var.b(true);
    }

    public void requestNotificationPolicyAccess(e1 e1Var) {
        h hVar = this.permissionRequestProgress;
        h hVar2 = h.None;
        if (hVar != hVar2) {
            e1Var.a(PERMISSION_REQUEST_IN_PROGRESS_ERROR_MESSAGE);
            return;
        }
        this.callback = e1Var;
        if (((NotificationManager) this.applicationContext.getSystemService("notification")).isNotificationPolicyAccessGranted()) {
            this.callback.b(true);
            this.permissionRequestProgress = hVar2;
            return;
        }
        this.permissionRequestProgress = h.RequestingNotificationPolicyAccess;
        this.mainActivity.startActivityForResult(new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"), 4);
    }

    public void requestNotificationsPermission(e1 e1Var) {
        boolean z10;
        h hVar = this.permissionRequestProgress;
        h hVar2 = h.None;
        if (hVar != hVar2) {
            e1Var.a(PERMISSION_REQUEST_IN_PROGRESS_ERROR_MESSAGE);
            return;
        }
        this.callback = e1Var;
        if (Build.VERSION.SDK_INT >= 33) {
            if (androidx.core.content.a.a(this.mainActivity, "android.permission.POST_NOTIFICATIONS") == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                this.permissionRequestProgress = h.RequestingNotificationPermission;
                androidx.core.app.b.v(this.mainActivity, new String[]{"android.permission.POST_NOTIFICATIONS"}, 1);
                return;
            }
            this.callback.b(true);
            this.permissionRequestProgress = hVar2;
            return;
        }
        this.callback.b(androidx.core.app.p.e(this.mainActivity).a());
    }
}
