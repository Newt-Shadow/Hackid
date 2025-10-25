package com.pichillilorenzo.flutter_inappwebview_android.tracing;

import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.Map;
import java.util.concurrent.Executors;
import o1.l;
import o1.t;
/* loaded from: classes.dex */
public class TracingControllerChannelDelegate extends ChannelDelegateImpl {
    private TracingControllerManager tracingControllerManager;

    public TracingControllerChannelDelegate(TracingControllerManager tracingControllerManager, MethodChannel methodChannel) {
        super(methodChannel);
        this.tracingControllerManager = tracingControllerManager;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.tracingControllerManager = null;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        FileOutputStream fileOutputStream;
        TracingControllerManager.init();
        l lVar = TracingControllerManager.tracingController;
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1647175624:
                if (str.equals("isTracing")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3540994:
                if (str.equals("stop")) {
                    c10 = 1;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(Chapter.KEY_START)) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                if (lVar != null) {
                    result.success(Boolean.valueOf(lVar.b()));
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            case 1:
                if (lVar != null && t.a("TRACING_CONTROLLER_BASIC_USAGE")) {
                    String str2 = (String) methodCall.argument("filePath");
                    if (str2 != null) {
                        try {
                            fileOutputStream = new FileOutputStream(str2);
                        } catch (FileNotFoundException e10) {
                            e10.printStackTrace();
                            result.success(Boolean.FALSE);
                            return;
                        }
                    } else {
                        fileOutputStream = null;
                    }
                    result.success(Boolean.valueOf(lVar.d(fileOutputStream, Executors.newSingleThreadExecutor())));
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 2:
                if (lVar != null && t.a("TRACING_CONTROLLER_BASIC_USAGE")) {
                    TracingSettings tracingSettings = new TracingSettings();
                    tracingSettings.parse2((Map) methodCall.argument("settings"));
                    lVar.c(TracingControllerManager.buildTracingConfig(tracingSettings));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
