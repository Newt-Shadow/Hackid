package com.pichillilorenzo.flutter_inappwebview_android.service_worker;

import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.types.Disposable;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebResourceRequestExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebResourceResponseExt;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayInputStream;
import java.util.Map;
import o1.h;
import o1.i;
import o1.t;
/* loaded from: classes.dex */
public class ServiceWorkerManager implements Disposable {
    protected static final String LOG_TAG = "ServiceWorkerManager";
    public static final String METHOD_CHANNEL_NAME = "com.pichillilorenzo/flutter_inappwebview_serviceworkercontroller";
    public static i serviceWorkerController;
    public ServiceWorkerChannelDelegate channelDelegate;
    public InAppWebViewFlutterPlugin plugin;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class DummyServiceWorkerClientCompat extends h {
        static final h INSTANCE = new DummyServiceWorkerClientCompat();

        private DummyServiceWorkerClientCompat() {
        }

        @Override // o1.h
        public WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest) {
            return null;
        }
    }

    public ServiceWorkerManager(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
        this.plugin = inAppWebViewFlutterPlugin;
        this.channelDelegate = new ServiceWorkerChannelDelegate(this, new MethodChannel(inAppWebViewFlutterPlugin.messenger, METHOD_CHANNEL_NAME));
    }

    private h dummyServiceWorkerClientCompat() {
        return DummyServiceWorkerClientCompat.INSTANCE;
    }

    public static void init() {
        if (serviceWorkerController == null && t.a("SERVICE_WORKER_BASIC_USAGE")) {
            serviceWorkerController = i.a();
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        ServiceWorkerChannelDelegate serviceWorkerChannelDelegate = this.channelDelegate;
        if (serviceWorkerChannelDelegate != null) {
            serviceWorkerChannelDelegate.dispose();
            this.channelDelegate = null;
        }
        this.plugin = null;
    }

    public void setServiceWorkerClient(Boolean bool) {
        h hVar;
        i iVar = serviceWorkerController;
        if (iVar != null) {
            if (bool.booleanValue()) {
                hVar = dummyServiceWorkerClientCompat();
            } else {
                hVar = new h() { // from class: com.pichillilorenzo.flutter_inappwebview_android.service_worker.ServiceWorkerManager.1
                    @Override // o1.h
                    public WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest) {
                        WebResourceResponseExt shouldInterceptRequest;
                        WebResourceRequestExt fromWebResourceRequest = WebResourceRequestExt.fromWebResourceRequest(webResourceRequest);
                        ServiceWorkerChannelDelegate serviceWorkerChannelDelegate = ServiceWorkerManager.this.channelDelegate;
                        ByteArrayInputStream byteArrayInputStream = null;
                        if (serviceWorkerChannelDelegate != null) {
                            try {
                                shouldInterceptRequest = serviceWorkerChannelDelegate.shouldInterceptRequest(fromWebResourceRequest);
                            } catch (InterruptedException e10) {
                                Log.e(ServiceWorkerManager.LOG_TAG, "", e10);
                                return null;
                            }
                        } else {
                            shouldInterceptRequest = null;
                        }
                        if (shouldInterceptRequest == null) {
                            return null;
                        }
                        String contentType = shouldInterceptRequest.getContentType();
                        String contentEncoding = shouldInterceptRequest.getContentEncoding();
                        byte[] data = shouldInterceptRequest.getData();
                        Map<String, String> headers = shouldInterceptRequest.getHeaders();
                        Integer statusCode = shouldInterceptRequest.getStatusCode();
                        String reasonPhrase = shouldInterceptRequest.getReasonPhrase();
                        if (data != null) {
                            byteArrayInputStream = new ByteArrayInputStream(data);
                        }
                        ByteArrayInputStream byteArrayInputStream2 = byteArrayInputStream;
                        if (statusCode != null && reasonPhrase != null) {
                            return new WebResourceResponse(contentType, contentEncoding, statusCode.intValue(), reasonPhrase, headers, byteArrayInputStream2);
                        }
                        return new WebResourceResponse(contentType, contentEncoding, byteArrayInputStream2);
                    }
                };
            }
            iVar.c(hVar);
        }
    }
}
