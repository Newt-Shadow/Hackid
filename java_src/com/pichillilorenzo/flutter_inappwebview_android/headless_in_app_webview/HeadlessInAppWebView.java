package com.pichillilorenzo.flutter_inappwebview_android.headless_in_app_webview;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.Util;
import com.pichillilorenzo.flutter_inappwebview_android.types.Disposable;
import com.pichillilorenzo.flutter_inappwebview_android.types.Size2D;
import com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.FlutterWebView;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.util.Map;
/* loaded from: classes.dex */
public class HeadlessInAppWebView implements Disposable {
    protected static final String LOG_TAG = "HeadlessInAppWebView";
    public static final String METHOD_CHANNEL_NAME_PREFIX = "com.pichillilorenzo/flutter_headless_inappwebview_";
    public HeadlessWebViewChannelDelegate channelDelegate;
    public FlutterWebView flutterWebView;

    /* renamed from: id  reason: collision with root package name */
    public final String f9456id;
    public InAppWebViewFlutterPlugin plugin;

    public HeadlessInAppWebView(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin, String str, FlutterWebView flutterWebView) {
        this.f9456id = str;
        this.plugin = inAppWebViewFlutterPlugin;
        this.flutterWebView = flutterWebView;
        BinaryMessenger binaryMessenger = inAppWebViewFlutterPlugin.messenger;
        this.channelDelegate = new HeadlessWebViewChannelDelegate(this, new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME_PREFIX + str));
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        FlutterWebView flutterWebView;
        HeadlessWebViewChannelDelegate headlessWebViewChannelDelegate = this.channelDelegate;
        if (headlessWebViewChannelDelegate != null) {
            headlessWebViewChannelDelegate.dispose();
            this.channelDelegate = null;
        }
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null) {
            HeadlessInAppWebViewManager headlessInAppWebViewManager = inAppWebViewFlutterPlugin.headlessInAppWebViewManager;
            if (headlessInAppWebViewManager != null && headlessInAppWebViewManager.webViews.containsKey(this.f9456id)) {
                headlessInAppWebViewManager.webViews.put(this.f9456id, null);
            }
            Activity activity = this.plugin.activity;
            if (activity != null && (viewGroup = (ViewGroup) activity.findViewById(16908290)) != null && (viewGroup2 = (ViewGroup) viewGroup.getChildAt(0)) != null && (flutterWebView = this.flutterWebView) != null && flutterWebView.getView() != null) {
                viewGroup2.removeView(this.flutterWebView.getView());
            }
        }
        FlutterWebView flutterWebView2 = this.flutterWebView;
        if (flutterWebView2 != null) {
            flutterWebView2.dispose();
        }
        this.flutterWebView = null;
        this.plugin = null;
    }

    public FlutterWebView disposeAndGetFlutterWebView() {
        FlutterWebView flutterWebView = this.flutterWebView;
        if (flutterWebView != null) {
            View view = flutterWebView.getView();
            if (view != null) {
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                view.setVisibility(0);
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            }
            this.flutterWebView = null;
            dispose();
        }
        return flutterWebView;
    }

    public Size2D getSize() {
        View view;
        double d10;
        double d11;
        FlutterWebView flutterWebView = this.flutterWebView;
        if (flutterWebView != null && flutterWebView.webView != null && (view = flutterWebView.getView()) != null) {
            float pixelDensity = Util.getPixelDensity(view.getContext());
            Size2D fullscreenSize = Util.getFullscreenSize(view.getContext());
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            double width = fullscreenSize.getWidth();
            int i10 = layoutParams.width;
            if (width == i10) {
                d10 = i10;
            } else {
                d10 = i10 / pixelDensity;
            }
            double height = fullscreenSize.getHeight();
            int i11 = layoutParams.height;
            if (height == i11) {
                d11 = i11;
            } else {
                d11 = i11 / pixelDensity;
            }
            return new Size2D(d10, d11);
        }
        return null;
    }

    public void onWebViewCreated() {
        HeadlessWebViewChannelDelegate headlessWebViewChannelDelegate = this.channelDelegate;
        if (headlessWebViewChannelDelegate != null) {
            headlessWebViewChannelDelegate.onWebViewCreated();
        }
    }

    public void prepare(Map<String, Object> map) {
        Activity activity;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        FlutterWebView flutterWebView;
        View view;
        View view2;
        FlutterWebView flutterWebView2 = this.flutterWebView;
        if (flutterWebView2 != null && (view2 = flutterWebView2.getView()) != null) {
            Size2D fromMap = Size2D.fromMap((Map) map.get("initialSize"));
            if (fromMap == null) {
                fromMap = new Size2D(-1.0d, -1.0d);
            }
            setSize(fromMap);
            view2.setVisibility(4);
        }
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null && (activity = inAppWebViewFlutterPlugin.activity) != null && (viewGroup = (ViewGroup) activity.findViewById(16908290)) != null && (viewGroup2 = (ViewGroup) viewGroup.getChildAt(0)) != null && (flutterWebView = this.flutterWebView) != null && (view = flutterWebView.getView()) != null) {
            viewGroup2.addView(view, 0);
        }
    }

    public void setSize(Size2D size2D) {
        View view;
        double width;
        double height;
        FlutterWebView flutterWebView = this.flutterWebView;
        if (flutterWebView != null && flutterWebView.webView != null && (view = flutterWebView.getView()) != null) {
            float pixelDensity = Util.getPixelDensity(view.getContext());
            Size2D fullscreenSize = Util.getFullscreenSize(view.getContext());
            if (size2D.getWidth() == -1.0d) {
                width = fullscreenSize.getWidth();
            } else {
                width = size2D.getWidth() * pixelDensity;
            }
            int i10 = (int) width;
            if (size2D.getWidth() == -1.0d) {
                height = fullscreenSize.getHeight();
            } else {
                height = pixelDensity * size2D.getHeight();
            }
            view.setLayoutParams(new FrameLayout.LayoutParams(i10, (int) height));
        }
    }
}
