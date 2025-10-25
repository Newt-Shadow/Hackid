package com.pichillilorenzo.flutter_inappwebview_android.types;

import android.content.Context;
import android.util.Log;
import android.webkit.WebResourceResponse;
import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.Util;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import o1.r;
/* loaded from: classes.dex */
public class WebViewAssetLoaderExt implements Disposable {
    public List<PathHandlerExt> customPathHandlers;
    public r loader;

    /* loaded from: classes.dex */
    public static class PathHandlerExt implements r.d, Disposable {
        protected static final String LOG_TAG = "PathHandlerExt";
        public static final String METHOD_CHANNEL_NAME_PREFIX = "com.pichillilorenzo/flutter_inappwebview_custompathhandler_";
        public PathHandlerExtChannelDelegate channelDelegate;

        /* renamed from: id  reason: collision with root package name */
        public String f9467id;

        public PathHandlerExt(String str, InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
            this.f9467id = str;
            BinaryMessenger binaryMessenger = inAppWebViewFlutterPlugin.messenger;
            this.channelDelegate = new PathHandlerExtChannelDelegate(this, new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME_PREFIX + str));
        }

        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
        public void dispose() {
            PathHandlerExtChannelDelegate pathHandlerExtChannelDelegate = this.channelDelegate;
            if (pathHandlerExtChannelDelegate != null) {
                pathHandlerExtChannelDelegate.dispose();
                this.channelDelegate = null;
            }
        }

        @Override // o1.r.d
        public WebResourceResponse handle(String str) {
            PathHandlerExtChannelDelegate pathHandlerExtChannelDelegate = this.channelDelegate;
            ByteArrayInputStream byteArrayInputStream = null;
            if (pathHandlerExtChannelDelegate != null) {
                try {
                    WebResourceResponseExt handle = pathHandlerExtChannelDelegate.handle(str);
                    if (handle != null) {
                        String contentType = handle.getContentType();
                        String contentEncoding = handle.getContentEncoding();
                        byte[] data = handle.getData();
                        Map<String, String> headers = handle.getHeaders();
                        Integer statusCode = handle.getStatusCode();
                        String reasonPhrase = handle.getReasonPhrase();
                        if (data != null) {
                            byteArrayInputStream = new ByteArrayInputStream(data);
                        }
                        ByteArrayInputStream byteArrayInputStream2 = byteArrayInputStream;
                        if (statusCode != null && reasonPhrase != null) {
                            return new WebResourceResponse(contentType, contentEncoding, statusCode.intValue(), reasonPhrase, headers, byteArrayInputStream2);
                        }
                        return new WebResourceResponse(contentType, contentEncoding, byteArrayInputStream2);
                    }
                } catch (InterruptedException e10) {
                    Log.e(LOG_TAG, "", e10);
                }
            }
            return null;
        }
    }

    public WebViewAssetLoaderExt(r rVar, List<PathHandlerExt> list) {
        this.loader = rVar;
        this.customPathHandlers = list;
    }

    public static WebViewAssetLoaderExt fromMap(Map<String, Object> map, InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin, Context context) {
        if (map == null) {
            return null;
        }
        r.b bVar = new r.b();
        String str = (String) map.get("domain");
        Boolean bool = (Boolean) map.get("httpAllowed");
        List<Map> list = (List) map.get("pathHandlers");
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.isEmpty()) {
            bVar.c(str);
        }
        if (bool != null) {
            bVar.d(bool.booleanValue());
        }
        if (list != null) {
            for (Map map2 : list) {
                String str2 = (String) map2.get("type");
                String str3 = (String) map2.get("path");
                if (str2 != null && str3 != null) {
                    char c10 = 65535;
                    switch (str2.hashCode()) {
                        case -1506882528:
                            if (str2.equals("ResourcesPathHandler")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -667829310:
                            if (str2.equals("AssetsPathHandler")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case 1490480039:
                            if (str2.equals("InternalStoragePathHandler")) {
                                c10 = 2;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            bVar.a(str3, new r.f(context));
                            continue;
                        case 1:
                            bVar.a(str3, new r.a(context));
                            continue;
                        case 2:
                            String str4 = (String) map2.get("directory");
                            if (str4 != null) {
                                bVar.a(str3, new r.c(context, new File(str4)));
                                break;
                            } else {
                                continue;
                            }
                        default:
                            String str5 = (String) map2.get(Chapter.KEY_ID);
                            if (str5 != null) {
                                PathHandlerExt pathHandlerExt = new PathHandlerExt(str5, inAppWebViewFlutterPlugin);
                                bVar.a(str3, pathHandlerExt);
                                arrayList.add(pathHandlerExt);
                                break;
                            } else {
                                continue;
                            }
                    }
                }
            }
        }
        return new WebViewAssetLoaderExt(bVar.b(), arrayList);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        for (PathHandlerExt pathHandlerExt : this.customPathHandlers) {
            pathHandlerExt.dispose();
        }
        this.customPathHandlers.clear();
    }

    /* loaded from: classes.dex */
    public static class PathHandlerExtChannelDelegate extends ChannelDelegateImpl {
        private PathHandlerExt pathHandler;

        /* loaded from: classes.dex */
        public static class HandleCallback extends BaseCallbackResultImpl<WebResourceResponseExt> {
            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public WebResourceResponseExt decodeResult(Object obj) {
                return WebResourceResponseExt.fromMap((Map) obj);
            }
        }

        /* loaded from: classes.dex */
        public static class SyncHandleCallback extends SyncBaseCallbackResultImpl<WebResourceResponseExt> {
            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public WebResourceResponseExt decodeResult(Object obj) {
                return new HandleCallback().decodeResult(obj);
            }
        }

        public PathHandlerExtChannelDelegate(PathHandlerExt pathHandlerExt, MethodChannel methodChannel) {
            super(methodChannel);
            this.pathHandler = pathHandlerExt;
        }

        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
        public void dispose() {
            super.dispose();
            this.pathHandler = null;
        }

        public void handle(String str, HandleCallback handleCallback) {
            MethodChannel channel = getChannel();
            if (channel == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("path", str);
            channel.invokeMethod("handle", hashMap, handleCallback);
        }

        public WebResourceResponseExt handle(String str) {
            MethodChannel channel = getChannel();
            if (channel == null) {
                return null;
            }
            SyncHandleCallback syncHandleCallback = new SyncHandleCallback();
            HashMap hashMap = new HashMap();
            hashMap.put("path", str);
            return (WebResourceResponseExt) Util.invokeMethodAndWaitResult(channel, "handle", hashMap, syncHandleCallback);
        }
    }
}
