package com.pichillilorenzo.flutter_inappwebview_android.service_worker;

import com.pichillilorenzo.flutter_inappwebview_android.Util;
import com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.SyncBaseCallbackResultImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebResourceRequestExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebResourceResponseExt;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.Map;
import o1.i;
import o1.j;
import o1.t;
/* loaded from: classes.dex */
public class ServiceWorkerChannelDelegate extends ChannelDelegateImpl {
    private ServiceWorkerManager serviceWorkerManager;

    /* loaded from: classes.dex */
    public static class ShouldInterceptRequestCallback extends BaseCallbackResultImpl<WebResourceResponseExt> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public WebResourceResponseExt decodeResult(Object obj) {
            return WebResourceResponseExt.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class SyncShouldInterceptRequestCallback extends SyncBaseCallbackResultImpl<WebResourceResponseExt> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public WebResourceResponseExt decodeResult(Object obj) {
            return new ShouldInterceptRequestCallback().decodeResult(obj);
        }
    }

    public ServiceWorkerChannelDelegate(ServiceWorkerManager serviceWorkerManager, MethodChannel methodChannel) {
        super(methodChannel);
        this.serviceWorkerManager = serviceWorkerManager;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.serviceWorkerManager = null;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        j jVar;
        ServiceWorkerManager.init();
        i iVar = ServiceWorkerManager.serviceWorkerController;
        if (iVar != null) {
            jVar = iVar.b();
        } else {
            jVar = null;
        }
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1332730774:
                if (str.equals("getAllowContentAccess")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1165005700:
                if (str.equals("setServiceWorkerClient")) {
                    c10 = 1;
                    break;
                }
                break;
            case -563397233:
                if (str.equals("getCacheMode")) {
                    c10 = 2;
                    break;
                }
                break;
            case 674894835:
                if (str.equals("getAllowFileAccess")) {
                    c10 = 3;
                    break;
                }
                break;
            case 985595395:
                if (str.equals("setCacheMode")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1083898794:
                if (str.equals("setBlockNetworkLoads")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1203480182:
                if (str.equals("setAllowContentAccess")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1594928487:
                if (str.equals("setAllowFileAccess")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1694822198:
                if (str.equals("getBlockNetworkLoads")) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                if (jVar != null && t.a("SERVICE_WORKER_CONTENT_ACCESS")) {
                    result.success(Boolean.valueOf(jVar.a()));
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            case 1:
                if (this.serviceWorkerManager != null) {
                    this.serviceWorkerManager.setServiceWorkerClient((Boolean) methodCall.argument("isNull"));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 2:
                if (jVar != null && t.a("SERVICE_WORKER_CACHE_MODE")) {
                    result.success(Integer.valueOf(jVar.d()));
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case 3:
                if (jVar != null && t.a("SERVICE_WORKER_FILE_ACCESS")) {
                    result.success(Boolean.valueOf(jVar.b()));
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            case 4:
                if (jVar != null && t.a("SERVICE_WORKER_CACHE_MODE")) {
                    jVar.h(((Integer) methodCall.argument("mode")).intValue());
                }
                result.success(Boolean.TRUE);
                return;
            case 5:
                if (jVar != null && t.a("SERVICE_WORKER_BLOCK_NETWORK_LOADS")) {
                    jVar.g(((Boolean) methodCall.argument("flag")).booleanValue());
                }
                result.success(Boolean.TRUE);
                return;
            case 6:
                if (jVar != null && t.a("SERVICE_WORKER_CONTENT_ACCESS")) {
                    jVar.e(((Boolean) methodCall.argument("allow")).booleanValue());
                }
                result.success(Boolean.TRUE);
                return;
            case 7:
                if (jVar != null && t.a("SERVICE_WORKER_FILE_ACCESS")) {
                    jVar.f(((Boolean) methodCall.argument("allow")).booleanValue());
                }
                result.success(Boolean.TRUE);
                return;
            case '\b':
                if (jVar != null && t.a("SERVICE_WORKER_BLOCK_NETWORK_LOADS")) {
                    result.success(Boolean.valueOf(jVar.c()));
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

    public void shouldInterceptRequest(WebResourceRequestExt webResourceRequestExt, ShouldInterceptRequestCallback shouldInterceptRequestCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("shouldInterceptRequest", webResourceRequestExt.toMap(), shouldInterceptRequestCallback);
    }

    public WebResourceResponseExt shouldInterceptRequest(WebResourceRequestExt webResourceRequestExt) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return null;
        }
        return (WebResourceResponseExt) Util.invokeMethodAndWaitResult(channel, "shouldInterceptRequest", webResourceRequestExt.toMap(), new SyncShouldInterceptRequestCallback());
    }
}
