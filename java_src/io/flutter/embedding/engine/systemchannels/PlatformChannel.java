package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.tika.mime.MimeTypes;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class PlatformChannel {
    private static final String TAG = "PlatformChannel";
    public final MethodChannel channel;
    final MethodChannel.MethodCallHandler parsingMethodCallHandler;
    private PlatformMessageHandler platformMessageHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.flutter.embedding.engine.systemchannels.PlatformChannel$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation;
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode;
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay;

        static {
            int[] iArr = new int[SystemUiMode.values().length];
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode = iArr;
            try {
                iArr[SystemUiMode.LEAN_BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.IMMERSIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.IMMERSIVE_STICKY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.EDGE_TO_EDGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SystemUiOverlay.values().length];
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay = iArr2;
            try {
                iArr2[SystemUiOverlay.TOP_OVERLAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.BOTTOM_OVERLAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[DeviceOrientation.values().length];
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation = iArr3;
            try {
                iArr3[DeviceOrientation.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class AppSwitcherDescription {
        public final int color;
        public final String label;

        public AppSwitcherDescription(int i10, String str) {
            this.color = i10;
            this.label = str;
        }
    }

    /* loaded from: classes2.dex */
    public enum Brightness {
        LIGHT("Brightness.light"),
        DARK("Brightness.dark");
        
        private String encodedName;

        Brightness(String str) {
            this.encodedName = str;
        }

        static Brightness fromValue(String str) {
            Brightness[] values;
            for (Brightness brightness : values()) {
                if (brightness.encodedName.equals(str)) {
                    return brightness;
                }
            }
            throw new NoSuchFieldException("No such Brightness: " + str);
        }
    }

    /* loaded from: classes2.dex */
    public enum ClipboardContentFormat {
        PLAIN_TEXT(MimeTypes.PLAIN_TEXT);
        
        private String encodedName;

        ClipboardContentFormat(String str) {
            this.encodedName = str;
        }

        static ClipboardContentFormat fromValue(String str) {
            ClipboardContentFormat[] values;
            for (ClipboardContentFormat clipboardContentFormat : values()) {
                if (clipboardContentFormat.encodedName.equals(str)) {
                    return clipboardContentFormat;
                }
            }
            throw new NoSuchFieldException("No such ClipboardContentFormat: " + str);
        }
    }

    /* loaded from: classes2.dex */
    public enum DeviceOrientation {
        PORTRAIT_UP("DeviceOrientation.portraitUp"),
        PORTRAIT_DOWN("DeviceOrientation.portraitDown"),
        LANDSCAPE_LEFT("DeviceOrientation.landscapeLeft"),
        LANDSCAPE_RIGHT("DeviceOrientation.landscapeRight");
        
        private String encodedName;

        DeviceOrientation(String str) {
            this.encodedName = str;
        }

        static DeviceOrientation fromValue(String str) {
            DeviceOrientation[] values;
            for (DeviceOrientation deviceOrientation : values()) {
                if (deviceOrientation.encodedName.equals(str)) {
                    return deviceOrientation;
                }
            }
            throw new NoSuchFieldException("No such DeviceOrientation: " + str);
        }
    }

    /* loaded from: classes2.dex */
    public enum HapticFeedbackType {
        STANDARD(null),
        LIGHT_IMPACT("HapticFeedbackType.lightImpact"),
        MEDIUM_IMPACT("HapticFeedbackType.mediumImpact"),
        HEAVY_IMPACT("HapticFeedbackType.heavyImpact"),
        SELECTION_CLICK("HapticFeedbackType.selectionClick");
        
        private final String encodedName;

        HapticFeedbackType(String str) {
            this.encodedName = str;
        }

        static HapticFeedbackType fromValue(String str) {
            HapticFeedbackType[] values;
            for (HapticFeedbackType hapticFeedbackType : values()) {
                String str2 = hapticFeedbackType.encodedName;
                if ((str2 == null && str == null) || (str2 != null && str2.equals(str))) {
                    return hapticFeedbackType;
                }
            }
            throw new NoSuchFieldException("No such HapticFeedbackType: " + str);
        }
    }

    /* loaded from: classes2.dex */
    public interface PlatformMessageHandler {
        boolean clipboardHasStrings();

        CharSequence getClipboardData(ClipboardContentFormat clipboardContentFormat);

        void playSystemSound(SoundType soundType);

        void popSystemNavigator();

        void restoreSystemUiOverlays();

        void setApplicationSwitcherDescription(AppSwitcherDescription appSwitcherDescription);

        void setClipboardData(String str);

        default void setFrameworkHandlesBack(boolean z10) {
        }

        void setPreferredOrientations(int i10);

        void setSystemUiChangeListener();

        void setSystemUiOverlayStyle(SystemChromeStyle systemChromeStyle);

        void share(String str);

        void showSystemOverlays(List<SystemUiOverlay> list);

        void showSystemUiMode(SystemUiMode systemUiMode);

        void vibrateHapticFeedback(HapticFeedbackType hapticFeedbackType);
    }

    /* loaded from: classes2.dex */
    public enum SoundType {
        CLICK("SystemSoundType.click"),
        ALERT("SystemSoundType.alert");
        
        private final String encodedName;

        SoundType(String str) {
            this.encodedName = str;
        }

        static SoundType fromValue(String str) {
            SoundType[] values;
            for (SoundType soundType : values()) {
                if (soundType.encodedName.equals(str)) {
                    return soundType;
                }
            }
            throw new NoSuchFieldException("No such SoundType: " + str);
        }
    }

    /* loaded from: classes2.dex */
    public static class SystemChromeStyle {
        public final Integer statusBarColor;
        public final Brightness statusBarIconBrightness;
        public final Integer systemNavigationBarColor;
        public final Boolean systemNavigationBarContrastEnforced;
        public final Integer systemNavigationBarDividerColor;
        public final Brightness systemNavigationBarIconBrightness;
        public final Boolean systemStatusBarContrastEnforced;

        public SystemChromeStyle(Integer num, Brightness brightness, Boolean bool, Integer num2, Brightness brightness2, Integer num3, Boolean bool2) {
            this.statusBarColor = num;
            this.statusBarIconBrightness = brightness;
            this.systemStatusBarContrastEnforced = bool;
            this.systemNavigationBarColor = num2;
            this.systemNavigationBarIconBrightness = brightness2;
            this.systemNavigationBarDividerColor = num3;
            this.systemNavigationBarContrastEnforced = bool2;
        }
    }

    /* loaded from: classes2.dex */
    public enum SystemUiMode {
        LEAN_BACK("SystemUiMode.leanBack"),
        IMMERSIVE("SystemUiMode.immersive"),
        IMMERSIVE_STICKY("SystemUiMode.immersiveSticky"),
        EDGE_TO_EDGE("SystemUiMode.edgeToEdge");
        
        private String encodedName;

        SystemUiMode(String str) {
            this.encodedName = str;
        }

        static SystemUiMode fromValue(String str) {
            SystemUiMode[] values;
            for (SystemUiMode systemUiMode : values()) {
                if (systemUiMode.encodedName.equals(str)) {
                    return systemUiMode;
                }
            }
            throw new NoSuchFieldException("No such SystemUiMode: " + str);
        }
    }

    /* loaded from: classes2.dex */
    public enum SystemUiOverlay {
        TOP_OVERLAYS("SystemUiOverlay.top"),
        BOTTOM_OVERLAYS("SystemUiOverlay.bottom");
        
        private String encodedName;

        SystemUiOverlay(String str) {
            this.encodedName = str;
        }

        static SystemUiOverlay fromValue(String str) {
            SystemUiOverlay[] values;
            for (SystemUiOverlay systemUiOverlay : values()) {
                if (systemUiOverlay.encodedName.equals(str)) {
                    return systemUiOverlay;
                }
            }
            throw new NoSuchFieldException("No such SystemUiOverlay: " + str);
        }
    }

    public PlatformChannel(DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.PlatformChannel.1
            /* JADX WARN: Removed duplicated region for block: B:69:0x0148 A[Catch: JSONException -> 0x0276, TryCatch #7 {JSONException -> 0x0276, blocks: (B:6:0x002b, B:7:0x002f, B:57:0x00dc, B:58:0x00e1, B:59:0x00f1, B:60:0x010a, B:61:0x011e, B:63:0x0122, B:67:0x013c, B:69:0x0148, B:70:0x0155, B:65:0x0127, B:71:0x015a, B:72:0x0168, B:80:0x019e, B:81:0x01ac, B:109:0x023e, B:114:0x025a, B:79:0x0195, B:88:0x01d3, B:95:0x01f5, B:100:0x0215, B:107:0x0236, B:112:0x0252, B:117:0x026e, B:9:0x0034, B:12:0x003f, B:15:0x004a, B:18:0x0056, B:21:0x0062, B:24:0x006d, B:27:0x0078, B:30:0x0082, B:33:0x008c, B:36:0x0096, B:39:0x00a0, B:42:0x00aa, B:45:0x00b5, B:48:0x00c0, B:51:0x00cb, B:97:0x01fe), top: B:128:0x002b, inners: #0, #1, #3, #10 }] */
            /* JADX WARN: Removed duplicated region for block: B:70:0x0155 A[Catch: JSONException -> 0x0276, TryCatch #7 {JSONException -> 0x0276, blocks: (B:6:0x002b, B:7:0x002f, B:57:0x00dc, B:58:0x00e1, B:59:0x00f1, B:60:0x010a, B:61:0x011e, B:63:0x0122, B:67:0x013c, B:69:0x0148, B:70:0x0155, B:65:0x0127, B:71:0x015a, B:72:0x0168, B:80:0x019e, B:81:0x01ac, B:109:0x023e, B:114:0x025a, B:79:0x0195, B:88:0x01d3, B:95:0x01f5, B:100:0x0215, B:107:0x0236, B:112:0x0252, B:117:0x026e, B:9:0x0034, B:12:0x003f, B:15:0x004a, B:18:0x0056, B:21:0x0062, B:24:0x006d, B:27:0x0078, B:30:0x0082, B:33:0x008c, B:36:0x0096, B:39:0x00a0, B:42:0x00aa, B:45:0x00b5, B:48:0x00c0, B:51:0x00cb, B:97:0x01fe), top: B:128:0x002b, inners: #0, #1, #3, #10 }] */
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onMethodCall(io.flutter.plugin.common.MethodCall r6, io.flutter.plugin.common.MethodChannel.Result r7) {
                /*
                    Method dump skipped, instructions count: 752
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass1.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
            }
        };
        this.parsingMethodCallHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/platform", JSONMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AppSwitcherDescription decodeAppSwitcherDescription(JSONObject jSONObject) {
        int i10 = jSONObject.getInt("primaryColor");
        if (i10 != 0) {
            i10 |= -16777216;
        }
        return new AppSwitcherDescription(i10, jSONObject.getString("label"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0053 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int decodeOrientations(org.json.JSONArray r10) {
        /*
            r9 = this;
            r0 = 0
            r1 = r0
            r2 = r1
            r3 = r2
        L4:
            int r4 = r10.length()
            r5 = 4
            r6 = 2
            r7 = 1
            if (r1 >= r4) goto L38
            java.lang.String r4 = r10.getString(r1)
            io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r4 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.fromValue(r4)
            int[] r8 = io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation
            int r4 = r4.ordinal()
            r4 = r8[r4]
            if (r4 == r7) goto L30
            if (r4 == r6) goto L2d
            r6 = 3
            if (r4 == r6) goto L2a
            if (r4 == r5) goto L27
            goto L32
        L27:
            r2 = r2 | 8
            goto L32
        L2a:
            r2 = r2 | 2
            goto L32
        L2d:
            r2 = r2 | 4
            goto L32
        L30:
            r2 = r2 | 1
        L32:
            if (r3 != 0) goto L35
            r3 = r2
        L35:
            int r1 = r1 + 1
            goto L4
        L38:
            if (r2 == 0) goto L57
            r10 = 9
            r1 = 8
            switch(r2) {
                case 2: goto L56;
                case 3: goto L4d;
                case 4: goto L4c;
                case 5: goto L4a;
                case 6: goto L4d;
                case 7: goto L4d;
                case 8: goto L49;
                case 9: goto L4d;
                case 10: goto L46;
                case 11: goto L45;
                case 12: goto L4d;
                case 13: goto L4d;
                case 14: goto L4d;
                case 15: goto L42;
                default: goto L41;
            }
        L41:
            goto L53
        L42:
            r10 = 13
            return r10
        L45:
            return r6
        L46:
            r10 = 11
            return r10
        L49:
            return r1
        L4a:
            r10 = 12
        L4c:
            return r10
        L4d:
            if (r3 == r6) goto L56
            if (r3 == r5) goto L55
            if (r3 == r1) goto L54
        L53:
            return r7
        L54:
            return r1
        L55:
            return r10
        L56:
            return r0
        L57:
            r10 = -1
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.decodeOrientations(org.json.JSONArray):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SystemChromeStyle decodeSystemChromeStyle(JSONObject jSONObject) {
        Integer num;
        Brightness brightness;
        Boolean bool;
        Integer num2;
        Brightness brightness2;
        Integer num3;
        Boolean bool2 = null;
        if (!jSONObject.isNull("statusBarColor")) {
            num = Integer.valueOf(jSONObject.getInt("statusBarColor"));
        } else {
            num = null;
        }
        if (!jSONObject.isNull("statusBarIconBrightness")) {
            brightness = Brightness.fromValue(jSONObject.getString("statusBarIconBrightness"));
        } else {
            brightness = null;
        }
        if (!jSONObject.isNull("systemStatusBarContrastEnforced")) {
            bool = Boolean.valueOf(jSONObject.getBoolean("systemStatusBarContrastEnforced"));
        } else {
            bool = null;
        }
        if (!jSONObject.isNull("systemNavigationBarColor")) {
            num2 = Integer.valueOf(jSONObject.getInt("systemNavigationBarColor"));
        } else {
            num2 = null;
        }
        if (!jSONObject.isNull("systemNavigationBarIconBrightness")) {
            brightness2 = Brightness.fromValue(jSONObject.getString("systemNavigationBarIconBrightness"));
        } else {
            brightness2 = null;
        }
        if (!jSONObject.isNull("systemNavigationBarDividerColor")) {
            num3 = Integer.valueOf(jSONObject.getInt("systemNavigationBarDividerColor"));
        } else {
            num3 = null;
        }
        if (!jSONObject.isNull("systemNavigationBarContrastEnforced")) {
            bool2 = Boolean.valueOf(jSONObject.getBoolean("systemNavigationBarContrastEnforced"));
        }
        return new SystemChromeStyle(num, brightness, bool, num2, brightness2, num3, bool2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SystemUiMode decodeSystemUiMode(String str) {
        int i10 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.fromValue(str).ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return SystemUiMode.EDGE_TO_EDGE;
                    }
                    return SystemUiMode.EDGE_TO_EDGE;
                }
                return SystemUiMode.IMMERSIVE_STICKY;
            }
            return SystemUiMode.IMMERSIVE;
        }
        return SystemUiMode.LEAN_BACK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<SystemUiOverlay> decodeSystemUiOverlays(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            int i11 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.fromValue(jSONArray.getString(i10)).ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    arrayList.add(SystemUiOverlay.BOTTOM_OVERLAYS);
                }
            } else {
                arrayList.add(SystemUiOverlay.TOP_OVERLAYS);
            }
        }
        return arrayList;
    }

    public void setPlatformMessageHandler(PlatformMessageHandler platformMessageHandler) {
        this.platformMessageHandler = platformMessageHandler;
    }

    public void systemChromeChanged(boolean z10) {
        Log.v(TAG, "Sending 'systemUIChange' message.");
        this.channel.invokeMethod("SystemChrome.systemUIChange", Arrays.asList(Boolean.valueOf(z10)));
    }
}
