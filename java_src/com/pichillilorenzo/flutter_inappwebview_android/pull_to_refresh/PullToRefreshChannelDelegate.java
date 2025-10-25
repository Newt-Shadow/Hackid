package com.pichillilorenzo.flutter_inappwebview_android.pull_to_refresh;

import android.graphics.Color;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
/* loaded from: classes.dex */
public class PullToRefreshChannelDelegate extends ChannelDelegateImpl {
    private PullToRefreshLayout pullToRefreshView;

    public PullToRefreshChannelDelegate(PullToRefreshLayout pullToRefreshLayout, MethodChannel methodChannel) {
        super(methodChannel);
        this.pullToRefreshView = pullToRefreshLayout;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.pullToRefreshView = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c10;
        String str = methodCall.method;
        str.hashCode();
        boolean z10 = true;
        switch (str.hashCode()) {
            case -1790841290:
                if (str.equals("setSlingshotDistance")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 154556713:
                if (str.equals("setRefreshing")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 1235582893:
                if (str.equals("getDefaultSlingshotDistance")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 1364071551:
                if (str.equals("setEnabled")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1389555745:
                if (str.equals("setColor")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 1743806995:
                if (str.equals("setBackgroundColor")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 1807783361:
                if (str.equals("setDistanceToTriggerSync")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 1849446385:
                if (str.equals("isRefreshing")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 1984958339:
                if (str.equals("setSize")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 2105594551:
                if (str.equals("isEnabled")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                if (this.pullToRefreshView != null) {
                    this.pullToRefreshView.setSlingshotDistance(((Integer) methodCall.argument("slingshotDistance")).intValue());
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 1:
                if (this.pullToRefreshView != null) {
                    this.pullToRefreshView.setRefreshing(((Boolean) methodCall.argument("refreshing")).booleanValue());
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 2:
                result.success(-1);
                return;
            case 3:
                if (this.pullToRefreshView != null) {
                    Boolean bool = (Boolean) methodCall.argument("enabled");
                    PullToRefreshLayout pullToRefreshLayout = this.pullToRefreshView;
                    pullToRefreshLayout.settings.enabled = bool;
                    pullToRefreshLayout.setEnabled(bool.booleanValue());
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 4:
                if (this.pullToRefreshView != null) {
                    this.pullToRefreshView.setColorSchemeColors(Color.parseColor((String) methodCall.argument("color")));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 5:
                if (this.pullToRefreshView != null) {
                    this.pullToRefreshView.setProgressBackgroundColorSchemeColor(Color.parseColor((String) methodCall.argument("color")));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 6:
                if (this.pullToRefreshView != null) {
                    this.pullToRefreshView.setDistanceToTriggerSync(((Integer) methodCall.argument("distanceToTriggerSync")).intValue());
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 7:
                PullToRefreshLayout pullToRefreshLayout2 = this.pullToRefreshView;
                if (pullToRefreshLayout2 == null || !pullToRefreshLayout2.isRefreshing()) {
                    z10 = false;
                }
                result.success(Boolean.valueOf(z10));
                return;
            case '\b':
                if (this.pullToRefreshView != null) {
                    this.pullToRefreshView.setSize(((Integer) methodCall.argument("size")).intValue());
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case '\t':
                PullToRefreshLayout pullToRefreshLayout3 = this.pullToRefreshView;
                if (pullToRefreshLayout3 != null) {
                    result.success(Boolean.valueOf(pullToRefreshLayout3.isEnabled()));
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            default:
                result.notImplemented();
                return;
        }
    }

    public void onRefresh() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onRefresh", new HashMap());
    }
}
