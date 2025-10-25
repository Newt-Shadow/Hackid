package io.flutter.plugins;

import androidx.annotation.Keep;
import ca.c;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin;
import com.idsport.core.tracking.idchess_tracking_framework.IdchessTrackingFrameworkPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import e2.m;
import ea.b;
import io.appmetrica.analytics.flutter.AppMetricaPlugin;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.firebase.analytics.FlutterFirebaseAnalyticsPlugin;
import io.flutter.plugins.firebase.core.FlutterFirebaseCorePlugin;
import io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin;
import io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin;
import io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin;
import io.flutter.plugins.googlesignin.GoogleSignInPlugin;
import io.flutter.plugins.imagepicker.ImagePickerPlugin;
import io.flutter.plugins.inapppurchase.InAppPurchasePlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin;
import io.flutter.plugins.urllauncher.UrlLauncherPlugin;
import io.flutter.plugins.videoplayer.VideoPlayerPlugin;
import io.flutter.plugins.webviewflutter.WebViewFlutterPlugin;
import io.sentry.flutter.SentryFlutterPlugin;
import jc.a;
import lc.f;
import qf.d;
import tb.b0;
import va.e;
@Keep
/* loaded from: classes2.dex */
public final class GeneratedPluginRegistrant {
    private static final String TAG = "GeneratedPluginRegistrant";

    public static void registerWith(FlutterEngine flutterEngine) {
        try {
            flutterEngine.getPlugins().add(new a());
        } catch (Exception e10) {
            Log.e(TAG, "Error registering plugin android_id, dev.fluttercommunity.android_id.AndroidIdPlugin", e10);
        }
        try {
            flutterEngine.getPlugins().add(new AppMetricaPlugin());
        } catch (Exception e11) {
            Log.e(TAG, "Error registering plugin appmetrica_plugin, io.appmetrica.analytics.flutter.AppMetricaPlugin", e11);
        }
        try {
            flutterEngine.getPlugins().add(new d());
        } catch (Exception e12) {
            Log.e(TAG, "Error registering plugin audioplayers_android, xyz.luan.audioplayers.AudioplayersPlugin", e12);
        }
        try {
            flutterEngine.getPlugins().add(new kc.a());
        } catch (Exception e13) {
            Log.e(TAG, "Error registering plugin battery_plus, dev.fluttercommunity.plus.battery.BatteryPlusPlugin", e13);
        }
        try {
            flutterEngine.getPlugins().add(new f());
        } catch (Exception e14) {
            Log.e(TAG, "Error registering plugin connectivity_plus, dev.fluttercommunity.plus.connectivity.ConnectivityPlugin", e14);
        }
        try {
            flutterEngine.getPlugins().add(new jp.espresso3389.content_resolver.a());
        } catch (Exception e15) {
            Log.e(TAG, "Error registering plugin content_resolver, jp.espresso3389.content_resolver.ContentResolverPlugin", e15);
        }
        try {
            flutterEngine.getPlugins().add(new mc.a());
        } catch (Exception e16) {
            Log.e(TAG, "Error registering plugin device_info_plus, dev.fluttercommunity.plus.device_info.DeviceInfoPlusPlugin", e16);
        }
        try {
            flutterEngine.getPlugins().add(new db.a());
        } catch (Exception e17) {
            Log.e(TAG, "Error registering plugin disk_space_plus, com.piccmaq.disk_space_plus.DiskSpacePlusPlugin", e17);
        }
        try {
            flutterEngine.getPlugins().add(new FFmpegKitFlutterPlugin());
        } catch (Exception e18) {
            Log.e(TAG, "Error registering plugin ffmpeg_kit_flutter, com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin", e18);
        }
        try {
            flutterEngine.getPlugins().add(new cb.d());
        } catch (Exception e19) {
            Log.e(TAG, "Error registering plugin file_picker, com.mr.flutter.plugin.filepicker.FilePickerPlugin", e19);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterFirebaseAnalyticsPlugin());
        } catch (Exception e20) {
            Log.e(TAG, "Error registering plugin firebase_analytics, io.flutter.plugins.firebase.analytics.FlutterFirebaseAnalyticsPlugin", e20);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterFirebaseCorePlugin());
        } catch (Exception e21) {
            Log.e(TAG, "Error registering plugin firebase_core, io.flutter.plugins.firebase.core.FlutterFirebaseCorePlugin", e21);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterFirebaseCrashlyticsPlugin());
        } catch (Exception e22) {
            Log.e(TAG, "Error registering plugin firebase_crashlytics, io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin", e22);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterFirebaseMessagingPlugin());
        } catch (Exception e23) {
            Log.e(TAG, "Error registering plugin firebase_messaging, io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin", e23);
        }
        try {
            flutterEngine.getPlugins().add(new bb.a());
        } catch (Exception e24) {
            Log.e(TAG, "Error registering plugin flutter_archive, com.kineapps.flutterarchive.FlutterArchivePlugin", e24);
        }
        try {
            flutterEngine.getPlugins().add(new b());
        } catch (Exception e25) {
            Log.e(TAG, "Error registering plugin flutter_camera_plugin, com.idsports.flutter_camera_plugin.FlutterCameraPlugin", e25);
        }
        try {
            flutterEngine.getPlugins().add(new l2.a());
        } catch (Exception e26) {
            Log.e(TAG, "Error registering plugin flutter_dnd, com.github.sathish76.flutter_dnd.FlutterDndPlugin", e26);
        }
        try {
            flutterEngine.getPlugins().add(new ob.b());
        } catch (Exception e27) {
            Log.e(TAG, "Error registering plugin flutter_foreground_task, com.pravera.flutter_foreground_task.FlutterForegroundTaskPlugin", e27);
        }
        try {
            flutterEngine.getPlugins().add(new InAppWebViewFlutterPlugin());
        } catch (Exception e28) {
            Log.e(TAG, "Error registering plugin flutter_inappwebview_android, com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin", e28);
        }
        try {
            flutterEngine.getPlugins().add(new za.a());
        } catch (Exception e29) {
            Log.e(TAG, "Error registering plugin flutter_keyboard_visibility, com.jrai.flutter_keyboard_visibility.FlutterKeyboardVisibilityPlugin", e29);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterLocalNotificationsPlugin());
        } catch (Exception e30) {
            Log.e(TAG, "Error registering plugin flutter_local_notifications, com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin", e30);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterAndroidLifecyclePlugin());
        } catch (Exception e31) {
            Log.e(TAG, "Error registering plugin flutter_plugin_android_lifecycle, io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin", e31);
        }
        try {
            flutterEngine.getPlugins().add(new e());
        } catch (Exception e32) {
            Log.e(TAG, "Error registering plugin flutter_secure_storage, com.it_nomads.fluttersecurestorage.FlutterSecureStoragePlugin", e32);
        }
        try {
            flutterEngine.getPlugins().add(new h2.a());
        } catch (Exception e33) {
            Log.e(TAG, "Error registering plugin flutter_video_info, com.example.flutter_video_info.FlutterVideoInfoPlugin", e33);
        }
        try {
            flutterEngine.getPlugins().add(new vc.a());
        } catch (Exception e34) {
            Log.e(TAG, "Error registering plugin fluttertoast, io.github.ponnamkarthik.toast.fluttertoast.FlutterToastPlugin", e34);
        }
        try {
            flutterEngine.getPlugins().add(new GoogleSignInPlugin());
        } catch (Exception e35) {
            Log.e(TAG, "Error registering plugin google_sign_in_android, io.flutter.plugins.googlesignin.GoogleSignInPlugin", e35);
        }
        try {
            flutterEngine.getPlugins().add(new IdchessTrackingFrameworkPlugin());
        } catch (Exception e36) {
            Log.e(TAG, "Error registering plugin idchess_tracking_framework_impl, com.idsport.core.tracking.idchess_tracking_framework.IdchessTrackingFrameworkPlugin", e36);
        }
        try {
            flutterEngine.getPlugins().add(new ImagePickerPlugin());
        } catch (Exception e37) {
            Log.e(TAG, "Error registering plugin image_picker_android, io.flutter.plugins.imagepicker.ImagePickerPlugin", e37);
        }
        try {
            flutterEngine.getPlugins().add(new ua.a());
        } catch (Exception e38) {
            Log.e(TAG, "Error registering plugin image_stream_binder, com.idsports.image_stream_binder.ImageStreamBinderPlugin", e38);
        }
        try {
            flutterEngine.getPlugins().add(new InAppPurchasePlugin());
        } catch (Exception e39) {
            Log.e(TAG, "Error registering plugin in_app_purchase_android, io.flutter.plugins.inapppurchase.InAppPurchasePlugin", e39);
        }
        try {
            flutterEngine.getPlugins().add(new ic.d());
        } catch (Exception e40) {
            Log.e(TAG, "Error registering plugin in_app_review, dev.britannio.in_app_review.InAppReviewPlugin", e40);
        }
        try {
            flutterEngine.getPlugins().add(new c());
        } catch (Exception e41) {
            Log.e(TAG, "Error registering plugin mobile_core_plugin, com.idsport.core.mobile_core_plugin.IdSportCorePlugin", e41);
        }
        try {
            flutterEngine.getPlugins().add(new nc.b());
        } catch (Exception e42) {
            Log.e(TAG, "Error registering plugin package_info_plus, dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin", e42);
        }
        try {
            flutterEngine.getPlugins().add(new PathProviderPlugin());
        } catch (Exception e43) {
            Log.e(TAG, "Error registering plugin path_provider_android, io.flutter.plugins.pathprovider.PathProviderPlugin", e43);
        }
        try {
            flutterEngine.getPlugins().add(new m());
        } catch (Exception e44) {
            Log.e(TAG, "Error registering plugin permission_handler_android, com.baseflow.permissionhandler.PermissionHandlerPlugin", e44);
        }
        try {
            flutterEngine.getPlugins().add(new kb.b());
        } catch (Exception e45) {
            Log.e(TAG, "Error registering plugin posthog_flutter, com.posthog.flutter.PosthogFlutterPlugin", e45);
        }
        try {
            flutterEngine.getPlugins().add(new me.b());
        } catch (Exception e46) {
            Log.e(TAG, "Error registering plugin qr_code_scanner, net.touchcapture.qr.flutterqr.FlutterQrPlugin", e46);
        }
        try {
            flutterEngine.getPlugins().add(new ab.d());
        } catch (Exception e47) {
            Log.e(TAG, "Error registering plugin receive_sharing_intent, com.kasem.receive_sharing_intent.ReceiveSharingIntentPlugin", e47);
        }
        try {
            flutterEngine.getPlugins().add(new z1.b());
        } catch (Exception e48) {
            Log.e(TAG, "Error registering plugin screen_brightness_android, com.aaassseee.screen_brightness_android.ScreenBrightnessAndroidPlugin", e48);
        }
        try {
            flutterEngine.getPlugins().add(new SentryFlutterPlugin());
        } catch (Exception e49) {
            Log.e(TAG, "Error registering plugin sentry_flutter, io.sentry.flutter.SentryFlutterPlugin", e49);
        }
        try {
            flutterEngine.getPlugins().add(new oc.e());
        } catch (Exception e50) {
            Log.e(TAG, "Error registering plugin share_plus, dev.fluttercommunity.plus.share.SharePlusPlugin", e50);
        }
        try {
            flutterEngine.getPlugins().add(new SharedPreferencesPlugin());
        } catch (Exception e51) {
            Log.e(TAG, "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", e51);
        }
        try {
            flutterEngine.getPlugins().add(new b2.b());
        } catch (Exception e52) {
            Log.e(TAG, "Error registering plugin sign_in_with_apple, com.aboutyou.dart_packages.sign_in_with_apple.SignInWithApplePlugin", e52);
        }
        try {
            flutterEngine.getPlugins().add(new qc.m());
        } catch (Exception e53) {
            Log.e(TAG, "Error registering plugin smart_auth, fman.ge.smart_auth.SmartAuthPlugin", e53);
        }
        try {
            flutterEngine.getPlugins().add(new b0());
        } catch (Exception e54) {
            Log.e(TAG, "Error registering plugin sqflite_android, com.tekartik.sqflite.SqflitePlugin", e54);
        }
        try {
            flutterEngine.getPlugins().add(new UrlLauncherPlugin());
        } catch (Exception e55) {
            Log.e(TAG, "Error registering plugin url_launcher_android, io.flutter.plugins.urllauncher.UrlLauncherPlugin", e55);
        }
        try {
            flutterEngine.getPlugins().add(new VideoPlayerPlugin());
        } catch (Exception e56) {
            Log.e(TAG, "Error registering plugin video_player_android, io.flutter.plugins.videoplayer.VideoPlayerPlugin", e56);
        }
        try {
            flutterEngine.getPlugins().add(new pc.c());
        } catch (Exception e57) {
            Log.e(TAG, "Error registering plugin wakelock_plus, dev.fluttercommunity.plus.wakelock.WakelockPlusPlugin", e57);
        }
        try {
            flutterEngine.getPlugins().add(new WebViewFlutterPlugin());
        } catch (Exception e58) {
            Log.e(TAG, "Error registering plugin webview_flutter_android, io.flutter.plugins.webviewflutter.WebViewFlutterPlugin", e58);
        }
    }
}
