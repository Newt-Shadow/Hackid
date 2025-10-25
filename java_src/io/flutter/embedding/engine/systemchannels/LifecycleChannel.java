package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StringCodec;
import java.util.Locale;
/* loaded from: classes2.dex */
public class LifecycleChannel {
    private static final String CHANNEL_NAME = "flutter/lifecycle";
    private static final String TAG = "LifecycleChannel";
    private final BasicMessageChannel<String> channel;
    private AppLifecycleState lastAndroidState;
    private AppLifecycleState lastFlutterState;
    private boolean lastFocus;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.flutter.embedding.engine.systemchannels.LifecycleChannel$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState;

        static {
            int[] iArr = new int[AppLifecycleState.values().length];
            $SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState = iArr;
            try {
                iArr[AppLifecycleState.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState[AppLifecycleState.INACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState[AppLifecycleState.HIDDEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState[AppLifecycleState.PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState[AppLifecycleState.DETACHED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum AppLifecycleState {
        DETACHED,
        RESUMED,
        INACTIVE,
        HIDDEN,
        PAUSED
    }

    public LifecycleChannel(DartExecutor dartExecutor) {
        this(new BasicMessageChannel(dartExecutor, CHANNEL_NAME, StringCodec.INSTANCE));
    }

    private void sendState(AppLifecycleState appLifecycleState, boolean z10) {
        AppLifecycleState appLifecycleState2;
        AppLifecycleState appLifecycleState3 = this.lastAndroidState;
        if (appLifecycleState3 == appLifecycleState && z10 == this.lastFocus) {
            return;
        }
        if (appLifecycleState == null && appLifecycleState3 == null) {
            this.lastFocus = z10;
            return;
        }
        int i10 = AnonymousClass1.$SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState[appLifecycleState.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5) {
                appLifecycleState2 = null;
            } else {
                appLifecycleState2 = appLifecycleState;
            }
        } else if (z10) {
            appLifecycleState2 = AppLifecycleState.RESUMED;
        } else {
            appLifecycleState2 = AppLifecycleState.INACTIVE;
        }
        this.lastAndroidState = appLifecycleState;
        this.lastFocus = z10;
        if (appLifecycleState2 == this.lastFlutterState) {
            return;
        }
        String str = "AppLifecycleState." + appLifecycleState2.name().toLowerCase(Locale.ROOT);
        Log.v(TAG, "Sending " + str + " message.");
        this.channel.send(str);
        this.lastFlutterState = appLifecycleState2;
    }

    public void aWindowIsFocused() {
        sendState(this.lastAndroidState, true);
    }

    public void appIsDetached() {
        sendState(AppLifecycleState.DETACHED, this.lastFocus);
    }

    public void appIsInactive() {
        sendState(AppLifecycleState.INACTIVE, this.lastFocus);
    }

    public void appIsPaused() {
        sendState(AppLifecycleState.PAUSED, this.lastFocus);
    }

    public void appIsResumed() {
        sendState(AppLifecycleState.RESUMED, this.lastFocus);
    }

    public void noWindowsAreFocused() {
        sendState(this.lastAndroidState, false);
    }

    public LifecycleChannel(BasicMessageChannel<String> basicMessageChannel) {
        this.lastAndroidState = null;
        this.lastFlutterState = null;
        this.lastFocus = true;
        this.channel = basicMessageChannel;
    }
}
