.class public final Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;
.super Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;
.source "SourceFile"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$DownloadStartListener;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "InAppWebView"

.field public static final METHOD_CHANNEL_NAME_PREFIX:Ljava/lang/String; = "com.pichillilorenzo/flutter_inappwebview_"

.field static mHandler:Landroid/os/Handler;


# instance fields
.field public callAsyncJavaScriptCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

.field public checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

.field public checkScrollStoppedTask:Ljava/lang/Runnable;

.field public contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

.field public contextMenu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private contextMenuPoint:Landroid/graphics/Point;

.field public customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

.field public evaluateJavaScriptContentWorldCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

.field public floatingContextMenu:Landroid/widget/LinearLayout;

.field public gestureDetector:Landroid/view/GestureDetector;

.field public id:Ljava/lang/Object;

.field public inAppBrowserDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

.field public inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewChromeClient;

.field public inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

.field public inAppWebViewClientCompat:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;

.field public inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewRenderProcessClient;

.field private inFullscreen:Z

.field public initialPositionScrollStoppedTask:I

.field private initialUserOnlyScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;",
            ">;"
        }
    .end annotation
.end field

.field private interceptOnlyAsyncAjaxRequestsPluginScript:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

.field public isLoading:Z

.field public javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

.field private lastTouch:Landroid/graphics/Point;

.field public mainLooperHandler:Landroid/os/Handler;

.field public newCheckContextMenuShouldBeClosedTaskTask:I

.field public newCheckScrollStoppedTask:I

.field public plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

.field public regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

.field public userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

.field public webMessageChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field public webMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field public webViewAssetLoaderExt:Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

.field public windowId:Ljava/lang/Integer;

.field public zoomScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    invoke-direct {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;-><init>()V

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isLoading:Z

    .line 4
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inFullscreen:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->zoomScale:F

    .line 6
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 8
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getWebViewLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 11
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckScrollStoppedTask:I

    .line 12
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 13
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->callAsyncJavaScriptCallbacks:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavaScriptContentWorldCallbacks:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageListeners:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->initialUserOnlyScripts:Ljava/util/List;

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->lastTouch:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    invoke-direct {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;-><init>()V

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isLoading:Z

    .line 24
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inFullscreen:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 25
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->zoomScale:F

    .line 26
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    invoke-direct {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 28
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 29
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 30
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getWebViewLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    .line 31
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckScrollStoppedTask:I

    .line 32
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 33
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    invoke-direct {p2, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;-><init>(Landroid/webkit/WebView;)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 34
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->callAsyncJavaScriptCallbacks:Ljava/util/Map;

    .line 35
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavaScriptContentWorldCallbacks:Ljava/util/Map;

    .line 36
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageListeners:Ljava/util/List;

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->initialUserOnlyScripts:Ljava/util/List;

    .line 39
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 40
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->lastTouch:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    invoke-direct {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;-><init>()V

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isLoading:Z

    .line 44
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inFullscreen:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 45
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->zoomScale:F

    .line 46
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    invoke-direct {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 48
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 50
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getWebViewLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    .line 51
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckScrollStoppedTask:I

    .line 52
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 53
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    invoke-direct {p2, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;-><init>(Landroid/webkit/WebView;)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 54
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->callAsyncJavaScriptCallbacks:Ljava/util/Map;

    .line 55
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavaScriptContentWorldCallbacks:Ljava/util/Map;

    .line 56
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageListeners:Ljava/util/List;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->initialUserOnlyScripts:Ljava/util/List;

    .line 59
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 60
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->lastTouch:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;Ljava/lang/Object;Ljava/lang/Integer;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;Ljava/util/Map;Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p7, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Boolean;)V

    .line 62
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    invoke-direct {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;-><init>()V

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isLoading:Z

    .line 64
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inFullscreen:Z

    const/high16 p7, 0x3f800000    # 1.0f

    .line 65
    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->zoomScale:F

    .line 66
    new-instance p7, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    invoke-direct {p7}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    const/4 p7, 0x0

    .line 67
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 68
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 69
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 70
    new-instance p7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getWebViewLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    const/16 p7, 0x64

    .line 71
    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckScrollStoppedTask:I

    .line 72
    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 73
    new-instance p7, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    invoke-direct {p7, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;-><init>(Landroid/webkit/WebView;)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 74
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->callAsyncJavaScriptCallbacks:Ljava/util/Map;

    .line 75
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavaScriptContentWorldCallbacks:Ljava/util/Map;

    .line 76
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 77
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageListeners:Ljava/util/List;

    .line 78
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->initialUserOnlyScripts:Ljava/util/List;

    .line 79
    new-instance p7, Landroid/graphics/Point;

    invoke-direct {p7, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 80
    new-instance p7, Landroid/graphics/Point;

    invoke-direct {p7, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->lastTouch:Landroid/graphics/Point;

    .line 81
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 82
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->id:Ljava/lang/Object;

    .line 83
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    iget-object p7, p2, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.pichillilorenzo/flutter_inappwebview_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p7, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 84
    new-instance p3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    invoke-direct {p3, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Lio/flutter/plugin/common/MethodChannel;)V

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 85
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->windowId:Ljava/lang/Integer;

    .line 86
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 87
    iput-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 88
    iput-object p8, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->initialUserOnlyScripts:Ljava/util/List;

    .line 89
    iget-object p1, p2, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object p0
.end method

.method private clearCookies()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$7;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$7;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private sendOnCreateContextMenuEvent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;->fromWebViewHitTestResult(Landroid/webkit/WebView$HitTestResult;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->onCreateContextMenu(Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public addWebMessageListener(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;)V
    .locals 3

    .line 1
    const-string v0, "WEB_MESSAGE_LISTENER"

    .line 2
    .line 3
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;->jsObjectName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;->allowedOriginRules:Ljava/util/Set;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;->listener:Lo1/s$b;

    .line 14
    .line 15
    invoke-static {p0, v0, v1, v2}, Lo1/s;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Lo1/s$b;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageListeners:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public adjustFloatingContextMenuPosition()V
    .locals 2

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$16;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$16;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "(function(){  var selection = window.getSelection();  var rangeY = null;  if (selection != null && selection.rangeCount > 0) {    var range = selection.getRangeAt(0);    var clientRect = range.getClientRects();    if (clientRect.length > 0) {      rangeY = clientRect[0].y;    } else if (document.activeElement != null && document.activeElement.tagName.toLowerCase() !== \'iframe\') {      var boundingClientRect = document.activeElement.getBoundingClientRect();      rangeY = boundingClientRect.y;    }  }  return rangeY;})();"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public callAsyncJavaScript(Ljava/lang/String;Ljava/util/Map;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Landroid/webkit/ValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->callAsyncJavaScriptCallbacks:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p4, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v5, "obj."

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string p4, ", "

    .line 72
    .line 73
    invoke-static {p4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-static {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->JSONStringify(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string v2, "(function(obj) {  (async function($IN_APP_WEBVIEW_FUNCTION_ARGUMENT_NAMES) {    \n$IN_APP_WEBVIEW_FUNCTION_BODY\n  })($IN_APP_WEBVIEW_FUNCTION_ARGUMENT_VALUES).then(function(value) {    window.flutter_inappwebview.callHandler(\'callAsyncJavaScript\', {\'value\': value, \'error\': null, \'resultUuid\': \'$IN_APP_WEBVIEW_RESULT_UUID\'});  }).catch(function(error) {    window.flutter_inappwebview.callHandler(\'callAsyncJavaScript\', {\'value\': null, \'error\': error + \'\', \'resultUuid\': \'$IN_APP_WEBVIEW_RESULT_UUID\'});  });  return null;})($IN_APP_WEBVIEW_FUNCTION_ARGUMENTS_OBJ);"

    .line 86
    .line 87
    const-string v3, "$IN_APP_WEBVIEW_FUNCTION_ARGUMENT_NAMES"

    .line 88
    .line 89
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "$IN_APP_WEBVIEW_FUNCTION_ARGUMENT_VALUES"

    .line 94
    .line 95
    invoke-virtual {v1, v2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    const-string v1, "$IN_APP_WEBVIEW_FUNCTION_ARGUMENTS_OBJ"

    .line 100
    .line 101
    invoke-virtual {p4, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string p4, "$IN_APP_WEBVIEW_FUNCTION_BODY"

    .line 106
    .line 107
    invoke-virtual {p2, p4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "$IN_APP_WEBVIEW_RESULT_UUID"

    .line 112
    .line 113
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 122
    .line 123
    invoke-virtual {p2, p1, p3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generateCodeForScriptEvaluation(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 p2, 0x0

    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public clearAllCache()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->clearCookies()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public createCompatWebMessageChannel()Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 10
    .line 11
    invoke-direct {v1, v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;-><init>(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method public createWebMessageChannel(Landroid/webkit/ValueCallback;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->createCompatWebMessageChannel()Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public createWebViewClient(Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;)Landroid/webkit/WebViewClient;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lo1/s;->f(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Using InAppWebViewClient implementation"

    .line 10
    .line 11
    const-string v2, "InAppWebView"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    const-string v3, "com.android.webview"

    .line 25
    .line 26
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    const-string v3, "com.google.android.webview"

    .line 37
    .line 38
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    const-string v3, "com.android.chrome"

    .line 47
    .line 48
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v3, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    move v3, v4

    .line 60
    :goto_1
    if-eqz v3, :cond_6

    .line 61
    .line 62
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const-string v0, ""

    .line 68
    .line 69
    :goto_2
    :try_start_0
    const-string v6, "."

    .line 70
    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    const-string v6, "\\."

    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    aget-object v0, v0, v5

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move v0, v5

    .line 91
    :goto_3
    const/16 v6, 0x49

    .line 92
    .line 93
    if-lt v0, v6, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v4, v5

    .line 97
    :goto_4
    move v5, v4

    .line 98
    :catch_0
    :cond_6
    if-nez v5, :cond_8

    .line 99
    .line 100
    if-nez v3, :cond_7

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_8
    :goto_5
    const-string v0, "Using InAppWebViewClientCompat implementation"

    .line 113
    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;

    .line 118
    .line 119
    invoke-direct {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->dispose()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;->dispose()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "flutter_inappwebview"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1d

    .line 30
    .line 31
    if-lt v0, v2, :cond_1

    .line 32
    .line 33
    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 34
    .line 35
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-static {p0, v1}, Lo1/s;->q(Landroid/webkit/WebView;Lo1/v;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    new-instance v0, Landroid/webkit/WebChromeClient;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$20;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$20;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->interceptOnlyAsyncAjaxRequestsPluginScript:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->dispose()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->dispose()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webViewAssetLoaderExt:Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->dispose()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webViewAssetLoaderExt:Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->windowId:Ljava/lang/Integer;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->inAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewManager;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewManager;->windowWebViewMessages:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mHandler:Landroid/os/Handler;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->disposeWebMessageChannels()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->disposeWebMessageListeners()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->checkScrollStoppedTask:Ljava/lang/Runnable;

    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->callAsyncJavaScriptCallbacks:Ljava/util/Map;

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavaScriptContentWorldCallbacks:Ljava/util/Map;

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    .line 144
    .line 145
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppBrowserDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewRenderProcessClient;

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewRenderProcessClient;->dispose()V

    .line 152
    .line 153
    .line 154
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewRenderProcessClient;

    .line 155
    .line 156
    :cond_7
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewChromeClient;

    .line 157
    .line 158
    if-eqz v0, :cond_8

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewChromeClient;->dispose()V

    .line 161
    .line 162
    .line 163
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewChromeClient;

    .line 164
    .line 165
    :cond_8
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewClientCompat:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;

    .line 166
    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;->dispose()V

    .line 170
    .line 171
    .line 172
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewClientCompat:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;

    .line 173
    .line 174
    :cond_9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

    .line 175
    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;->dispose()V

    .line 179
    .line 180
    .line 181
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

    .line 182
    .line 183
    :cond_a
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    .line 184
    .line 185
    if-eqz v0, :cond_b

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;->dispose()V

    .line 188
    .line 189
    .line 190
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    .line 191
    .line 192
    :cond_b
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 193
    .line 194
    const-string v0, "about:blank"

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public disposeWebMessageChannels()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;->dispose()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public disposeWebMessageListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;->dispose()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageListeners:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public enablePluginScriptAtRuntime(Ljava/lang/String;ZLcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "window."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$9;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$9;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Ljava/lang/String;ZLcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v0, p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavascript(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Landroid/webkit/ValueCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->injectDeferredObject(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getChannelDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentHeight(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getContentWidth(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$19;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$19;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/webkit/ValueCallback;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "document.documentElement.scrollWidth;"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getContextMenu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCopyBackForwardList()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v6, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const-string v8, "originalUrl"

    .line 35
    .line 36
    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v7, "title"

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v7, "url"

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "list"

    .line 69
    .line 70
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v1, "currentIndex"

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public getCustomSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->getRealSettings(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getHitTestResult(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;->fromWebViewHitTestResult(Landroid/webkit/WebView$HitTestResult;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppBrowserDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin()Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedText(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$17;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$17;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/webkit/ValueCallback;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }  return txt;})();"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebMessageChannels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebViewLooper()Landroid/os/Looper;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/webkit/WebView;->getWebViewLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getZoomScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->zoomScale:F

    return v0
.end method

.method public getZoomScale(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->zoomScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public hideContextMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->onHideContextMenu()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public injectCSSCode(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "(function(d) { var style = d.createElement(\'style\'); style.innerHTML = %s; if (d.head != null) { d.head.appendChild(style); } })(document);"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->injectDeferredObject(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public injectCSSFileFromUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    const-string v1, "id"

    .line 6
    .line 7
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "\'; "

    .line 14
    .line 15
    const-string v3, "\\\\\'"

    .line 16
    .line 17
    const-string v4, "\'"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, " link.id = \'"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v1, v0

    .line 50
    :goto_0
    const-string v5, "media"

    .line 51
    .line 52
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " link.media = \'"

    .line 69
    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :cond_1
    const-string v5, "crossOrigin"

    .line 88
    .line 89
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, " link.crossOrigin = \'"

    .line 106
    .line 107
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_2
    const-string v5, "integrity"

    .line 125
    .line 126
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, " link.integrity = \'"

    .line 143
    .line 144
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :cond_3
    const-string v5, "referrerPolicy"

    .line 162
    .line 163
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v5, :cond_4

    .line 170
    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, " link.referrerPolicy = \'"

    .line 180
    .line 181
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :cond_4
    const-string v5, "disabled"

    .line 199
    .line 200
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Ljava/lang/Boolean;

    .line 205
    .line 206
    if-eqz v5, :cond_5

    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_5

    .line 213
    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, " link.disabled = true; "

    .line 223
    .line 224
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    :cond_5
    const-string v5, "alternate"

    .line 232
    .line 233
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Ljava/lang/Boolean;

    .line 238
    .line 239
    if-eqz v5, :cond_6

    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_6

    .line 246
    .line 247
    const-string v0, "alternate "

    .line 248
    .line 249
    :cond_6
    const-string v5, "title"

    .line 250
    .line 251
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    check-cast p2, Ljava/lang/String;

    .line 256
    .line 257
    if-eqz p2, :cond_7

    .line 258
    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, " link.title = \'"

    .line 268
    .line 269
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    goto :goto_1

    .line 287
    :cond_7
    move-object p2, v1

    .line 288
    goto :goto_1

    .line 289
    :cond_8
    move-object p2, v0

    .line 290
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v2, "(function(d) { var link = d.createElement(\'link\'); link.rel=\'"

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v0, "stylesheet\'; link.type=\'text/css\'; "

    .line 304
    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string p2, " link.href = %s; if (d.head != null) { d.head.appendChild(link); } })(document);"

    .line 312
    .line 313
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->injectDeferredObject(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method public injectDeferredObject(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->PAGE:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    move-object v6, v0

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    new-instance v0, Lorg/json/JSONArray;

    .line 25
    .line 26
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x1

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object p3, p1

    .line 56
    :goto_1
    if-eqz v6, :cond_2

    .line 57
    .line 58
    if-eqz p4, :cond_2

    .line 59
    .line 60
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavaScriptContentWorldCallbacks:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p3, v6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v0, "_flutter_inappwebview_"

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    mul-double/2addr v0, v2

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    const-string v0, "var $IN_APP_WEBVIEW_VARIABLE_RANDOM_NAME = null;try {  $IN_APP_WEBVIEW_VARIABLE_RANDOM_NAME = eval($IN_APP_WEBVIEW_PLACEHOLDER_VALUE);} catch(e) {  console.error(e);}window.flutter_inappwebview.callHandler(\'evaluateJavaScriptWithContentWorld\', {\'value\': $IN_APP_WEBVIEW_VARIABLE_RANDOM_NAME, \'resultUuid\': \'$IN_APP_WEBVIEW_RESULT_UUID\'});"

    .line 97
    .line 98
    const-string v1, "$IN_APP_WEBVIEW_VARIABLE_RANDOM_NAME"

    .line 99
    .line 100
    invoke-static {v0, v1, p3}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const-string v0, "$IN_APP_WEBVIEW_PLACEHOLDER_VALUE"

    .line 105
    .line 106
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->escapeCode(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string p3, "$IN_APP_WEBVIEW_RESULT_UUID"

    .line 115
    .line 116
    invoke-virtual {p1, p3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    move-object v3, p1

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    move-object v3, p3

    .line 123
    :goto_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    .line 124
    .line 125
    new-instance p3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$10;

    .line 126
    .line 127
    move-object v1, p3

    .line 128
    move-object v2, p0

    .line 129
    move-object v4, p2

    .line 130
    move-object v5, p4

    .line 131
    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$10;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public injectJavascriptFileFromUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "\'; "

    .line 14
    .line 15
    const-string v3, "\\\\\'"

    .line 16
    .line 17
    const-string v4, "\'"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " script.type = \'"

    .line 30
    .line 31
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_0
    const-string v1, "id"

    .line 49
    .line 50
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " script.id = \'"

    .line 71
    .line 72
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " script.onload = function() {  if (window.flutter_inappwebview != null) {    window.flutter_inappwebview.callHandler(\'onInjectedScriptLoaded\', \'"

    .line 94
    .line 95
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, "\');  }};"

    .line 102
    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v5, " script.onerror = function() {  if (window.flutter_inappwebview != null) {    window.flutter_inappwebview.callHandler(\'onInjectedScriptError\', \'"

    .line 119
    .line 120
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_1
    const-string v1, "async"

    .line 134
    .line 135
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/lang/Boolean;

    .line 140
    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, " script.async = true; "

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :cond_2
    const-string v1, "defer"

    .line 167
    .line 168
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/Boolean;

    .line 173
    .line 174
    if-eqz v1, :cond_3

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_3

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v0, " script.defer = true; "

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :cond_3
    const-string v1, "crossOrigin"

    .line 200
    .line 201
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v1, :cond_4

    .line 208
    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v0, " script.crossOrigin = \'"

    .line 218
    .line 219
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :cond_4
    const-string v1, "integrity"

    .line 237
    .line 238
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/String;

    .line 243
    .line 244
    if-eqz v1, :cond_5

    .line 245
    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v0, " script.integrity = \'"

    .line 255
    .line 256
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    :cond_5
    const-string v1, "noModule"

    .line 274
    .line 275
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Ljava/lang/Boolean;

    .line 280
    .line 281
    if-eqz v1, :cond_6

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_6

    .line 288
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v0, " script.noModule = true; "

    .line 298
    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    :cond_6
    const-string v1, "nonce"

    .line 307
    .line 308
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Ljava/lang/String;

    .line 313
    .line 314
    if-eqz v1, :cond_7

    .line 315
    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v0, " script.nonce = \'"

    .line 325
    .line 326
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    :cond_7
    const-string v1, "referrerPolicy"

    .line 344
    .line 345
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    check-cast p2, Ljava/lang/String;

    .line 350
    .line 351
    if-eqz p2, :cond_8

    .line 352
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v0, " script.referrerPolicy = \'"

    .line 362
    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v1, "(function(d) { var script = d.createElement(\'script\'); "

    .line 386
    .line 387
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v0, " script.src = %s; if (d.body != null) { d.body.appendChild(script); } })(document);"

    .line 394
    .line 395
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->injectDeferredObject(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 404
    .line 405
    .line 406
    return-void
.end method

.method public isInFullscreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inFullscreen:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isLoading:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSecureContext(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$18;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$18;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/webkit/ValueCallback;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "window.isSecureContext"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->getUrlAsset(Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public loadUrl(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;->getMethod()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v2, "POST"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;->getBody()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;->getHeaders()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->sendOnCreateContextMenuEvent()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;->containerView:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$11;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$11;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, 0x80

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object p1
.end method

.method public onFloatingActionGlobalLayout(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    div-int/lit8 v3, v1, 0x2

    .line 21
    .line 22
    sub-int/2addr p1, v3

    .line 23
    if-gez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int v3, p1, v1

    .line 28
    .line 29
    if-le v3, v0, :cond_1

    .line 30
    .line 31
    sub-int p1, v0, v1

    .line 32
    .line 33
    :cond_1
    :goto_0
    int-to-float v0, p2

    .line 34
    int-to-float v1, v2

    .line 35
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 36
    .line 37
    mul-float/2addr v1, v3

    .line 38
    sub-float/2addr v0, v1

    .line 39
    const/4 v1, 0x0

    .line 40
    cmpg-float v1, v0, v1

    .line 41
    .line 42
    if-gez v1, :cond_2

    .line 43
    .line 44
    add-int/2addr p2, v2

    .line 45
    int-to-float v0, p2

    .line 46
    :cond_2
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/2addr p1, v2

    .line 55
    float-to-int v0, v0

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/2addr v0, v2

    .line 61
    const/4 v2, -0x2

    .line 62
    invoke-direct {v1, v2, v2, p1, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    .line 69
    .line 70
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$15;

    .line 71
    .line 72
    invoke-direct {p2, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$15;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->canScrollHorizontally()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    move p3, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p3, v2

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->canScrollVertically()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-eqz p4, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, v2

    .line 27
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    instance-of v0, p4, Lcom/pichillilorenzo/flutter_inappwebview_android/pull_to_refresh/PullToRefreshLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    if-gt p2, v0, :cond_2

    .line 40
    .line 41
    check-cast p4, Lcom/pichillilorenzo/flutter_inappwebview_android/pull_to_refresh/PullToRefreshLayout;

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p4, Lcom/pichillilorenzo/flutter_inappwebview_android/pull_to_refresh/PullToRefreshLayout;->settings:Lcom/pichillilorenzo/flutter_inappwebview_android/pull_to_refresh/PullToRefreshSettings;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/pull_to_refresh/PullToRefreshSettings;->enabled:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p4, v0}, Landroidx/swiperefreshlayout/widget/c;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 59
    .line 60
    iget-object p4, p4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->overScrollMode:Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    invoke-virtual {p0, p4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    if-nez p3, :cond_3

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    :cond_3
    iget-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 74
    .line 75
    if-eqz p4, :cond_4

    .line 76
    .line 77
    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->onOverScrolled(IIZZ)V

    .line 78
    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 p4, 0x8

    .line 15
    .line 16
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->onScrollChanged(II)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onScrollStopped()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->adjustFloatingContextMenuPosition()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->lastTouch:Landroid/graphics/Point;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/pull_to_refresh/PullToRefreshLayout;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/pull_to_refresh/PullToRefreshLayout;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/c;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowBackgroundAudioPlaying:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public postWebMessage(Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessage;Landroid/net/Uri;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessage;",
            "Landroid/net/Uri;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public prepare()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->webViewAssetLoader:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->fromMap(Ljava/util/Map;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webViewAssetLoaderExt:Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    .line 25
    .line 26
    const-string v1, "flutter_inappwebview"

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewChromeClient;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppBrowserDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 36
    .line 37
    invoke-direct {v0, v1, p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewChromeClient;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewChromeClient;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppBrowserDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->createWebViewClient(Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;)Landroid/webkit/WebViewClient;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    instance-of v1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewClientCompat:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClientCompat;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    instance-of v1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewClient;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v1, 0x1d

    .line 77
    .line 78
    if-lt v0, v1, :cond_3

    .line 79
    .line 80
    const-string v2, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 81
    .line 82
    invoke-static {v2}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewRenderProcessClient;

    .line 89
    .line 90
    invoke-direct {v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewRenderProcessClient;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewRenderProcessClient;

    .line 94
    .line 95
    invoke-static {p0, v2}, Lo1/s;->q(Landroid/webkit/WebView;Lo1/v;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->windowId:Ljava/lang/Integer;

    .line 99
    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    const-string v2, "DOCUMENT_START_SCRIPT"

    .line 103
    .line 104
    invoke-static {v2}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_5

    .line 109
    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->prepareAndAddUserScripts()V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 114
    .line 115
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useOnDownloadStart:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$DownloadStartListener;

    .line 124
    .line 125
    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$DownloadStartListener;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 136
    .line 137
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->javaScriptEnabled:Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 147
    .line 148
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 155
    .line 156
    .line 157
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 158
    .line 159
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->builtInZoomControls:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 169
    .line 170
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->displayZoomControls:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 180
    .line 181
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->supportMultipleWindows:Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 188
    .line 189
    .line 190
    const-string v3, "SAFE_BROWSING_ENABLE"

    .line 191
    .line 192
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    const/16 v4, 0x1a

    .line 197
    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 201
    .line 202
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->safeBrowsingEnabled:Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-static {v2, v3}, Lo1/q;->q(Landroid/webkit/WebSettings;Z)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_7
    if-lt v0, v4, :cond_8

    .line 213
    .line 214
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 215
    .line 216
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->safeBrowsingEnabled:Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-static {v2, v3}, Landroidx/webkit/internal/h;->a(Landroid/webkit/WebSettings;Z)V

    .line 223
    .line 224
    .line 225
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 226
    .line 227
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 234
    .line 235
    .line 236
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 237
    .line 238
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->databaseEnabled:Ljava/lang/Boolean;

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 245
    .line 246
    .line 247
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 248
    .line 249
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->domStorageEnabled:Ljava/lang/Boolean;

    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 256
    .line 257
    .line 258
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 259
    .line 260
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 261
    .line 262
    if-eqz v3, :cond_9

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-nez v3, :cond_9

    .line 269
    .line 270
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 271
    .line 272
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :goto_2
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 290
    .line 291
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->applicationNameForUserAgent:Ljava/lang/String;

    .line 292
    .line 293
    if-eqz v3, :cond_b

    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-nez v3, :cond_b

    .line 300
    .line 301
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 302
    .line 303
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 304
    .line 305
    if-eqz v3, :cond_a

    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_a

    .line 312
    .line 313
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 314
    .line 315
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v3, " "

    .line 335
    .line 336
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 340
    .line 341
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->applicationNameForUserAgent:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_b
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 354
    .line 355
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->clearCache:Ljava/lang/Boolean;

    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_c

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->clearAllCache()V

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_c
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 368
    .line 369
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->clearSessionCache:Ljava/lang/Boolean;

    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_d

    .line 376
    .line 377
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 382
    .line 383
    .line 384
    :cond_d
    :goto_4
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 389
    .line 390
    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    .line 391
    .line 392
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    invoke-virtual {v3, p0, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 397
    .line 398
    .line 399
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 400
    .line 401
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->loadWithOverviewMode:Ljava/lang/Boolean;

    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 408
    .line 409
    .line 410
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 411
    .line 412
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useWideViewPort:Ljava/lang/Boolean;

    .line 413
    .line 414
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 419
    .line 420
    .line 421
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 422
    .line 423
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->supportZoom:Ljava/lang/Boolean;

    .line 424
    .line 425
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 430
    .line 431
    .line 432
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 433
    .line 434
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->textZoom:Ljava/lang/Integer;

    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 441
    .line 442
    .line 443
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 444
    .line 445
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableVerticalScroll:Ljava/lang/Boolean;

    .line 446
    .line 447
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    const/4 v5, 0x1

    .line 452
    const/4 v6, 0x0

    .line 453
    if-nez v3, :cond_e

    .line 454
    .line 455
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 456
    .line 457
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    .line 458
    .line 459
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_e

    .line 464
    .line 465
    move v3, v5

    .line 466
    goto :goto_5

    .line 467
    :cond_e
    move v3, v6

    .line 468
    :goto_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 469
    .line 470
    .line 471
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 472
    .line 473
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableHorizontalScroll:Ljava/lang/Boolean;

    .line 474
    .line 475
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    if-nez v3, :cond_f

    .line 480
    .line 481
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 482
    .line 483
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    .line 484
    .line 485
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    if-eqz v3, :cond_f

    .line 490
    .line 491
    move v3, v5

    .line 492
    goto :goto_6

    .line 493
    :cond_f
    move v3, v6

    .line 494
    :goto_6
    invoke-virtual {p0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 495
    .line 496
    .line 497
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 498
    .line 499
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->transparentBackground:Ljava/lang/Boolean;

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-eqz v3, :cond_10

    .line 506
    .line 507
    invoke-virtual {p0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 508
    .line 509
    .line 510
    :cond_10
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 511
    .line 512
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->mixedContentMode:Ljava/lang/Integer;

    .line 513
    .line 514
    if-eqz v3, :cond_11

    .line 515
    .line 516
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 521
    .line 522
    .line 523
    :cond_11
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 524
    .line 525
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowContentAccess:Ljava/lang/Boolean;

    .line 526
    .line 527
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 532
    .line 533
    .line 534
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 535
    .line 536
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowFileAccess:Ljava/lang/Boolean;

    .line 537
    .line 538
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 543
    .line 544
    .line 545
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 546
    .line 547
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    .line 548
    .line 549
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 554
    .line 555
    .line 556
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 557
    .line 558
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    .line 559
    .line 560
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 565
    .line 566
    .line 567
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 568
    .line 569
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheEnabled:Ljava/lang/Boolean;

    .line 570
    .line 571
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    invoke-virtual {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setCacheEnabled(Z)V

    .line 576
    .line 577
    .line 578
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 579
    .line 580
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->appCachePath:Ljava/lang/String;

    .line 581
    .line 582
    if-eqz v3, :cond_12

    .line 583
    .line 584
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-nez v3, :cond_12

    .line 589
    .line 590
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 591
    .line 592
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheEnabled:Ljava/lang/Boolean;

    .line 593
    .line 594
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-eqz v3, :cond_12

    .line 599
    .line 600
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 601
    .line 602
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->appCachePath:Ljava/lang/String;

    .line 603
    .line 604
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    const-string v7, "setAppCachePath"

    .line 609
    .line 610
    invoke-static {v2, v7, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodIfExists(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    :cond_12
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 614
    .line 615
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->blockNetworkImage:Ljava/lang/Boolean;

    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 622
    .line 623
    .line 624
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 625
    .line 626
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->blockNetworkLoads:Ljava/lang/Boolean;

    .line 627
    .line 628
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 633
    .line 634
    .line 635
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 636
    .line 637
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheMode:Ljava/lang/Integer;

    .line 638
    .line 639
    if-eqz v3, :cond_13

    .line 640
    .line 641
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 642
    .line 643
    .line 644
    move-result v3

    .line 645
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 646
    .line 647
    .line 648
    :cond_13
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 649
    .line 650
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cursiveFontFamily:Ljava/lang/String;

    .line 651
    .line 652
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 656
    .line 657
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFixedFontSize:Ljava/lang/Integer;

    .line 658
    .line 659
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 664
    .line 665
    .line 666
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 667
    .line 668
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFontSize:Ljava/lang/Integer;

    .line 669
    .line 670
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 671
    .line 672
    .line 673
    move-result v3

    .line 674
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 675
    .line 676
    .line 677
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 678
    .line 679
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 680
    .line 681
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 685
    .line 686
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 687
    .line 688
    if-eqz v3, :cond_15

    .line 689
    .line 690
    const-string v3, "DISABLED_ACTION_MODE_MENU_ITEMS"

    .line 691
    .line 692
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-eqz v3, :cond_14

    .line 697
    .line 698
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 699
    .line 700
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 701
    .line 702
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 703
    .line 704
    .line 705
    move-result v3

    .line 706
    invoke-static {v2, v3}, Lo1/q;->k(Landroid/webkit/WebSettings;I)V

    .line 707
    .line 708
    .line 709
    goto :goto_7

    .line 710
    :cond_14
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 711
    .line 712
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 713
    .line 714
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisabledActionModeMenuItems(I)V

    .line 719
    .line 720
    .line 721
    :cond_15
    :goto_7
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 722
    .line 723
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fantasyFontFamily:Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 729
    .line 730
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fixedFontFamily:Ljava/lang/String;

    .line 731
    .line 732
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 736
    .line 737
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDark:Ljava/lang/Integer;

    .line 738
    .line 739
    if-eqz v3, :cond_17

    .line 740
    .line 741
    const-string v3, "FORCE_DARK"

    .line 742
    .line 743
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 744
    .line 745
    .line 746
    move-result v3

    .line 747
    if-eqz v3, :cond_16

    .line 748
    .line 749
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 750
    .line 751
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDark:Ljava/lang/Integer;

    .line 752
    .line 753
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 754
    .line 755
    .line 756
    move-result v3

    .line 757
    invoke-static {v2, v3}, Lo1/q;->m(Landroid/webkit/WebSettings;I)V

    .line 758
    .line 759
    .line 760
    goto :goto_8

    .line 761
    :cond_16
    if-lt v0, v1, :cond_17

    .line 762
    .line 763
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 764
    .line 765
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDark:Ljava/lang/Integer;

    .line 766
    .line 767
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    invoke-static {v2, v3}, Landroidx/webkit/internal/f0;->a(Landroid/webkit/WebSettings;I)V

    .line 772
    .line 773
    .line 774
    :cond_17
    :goto_8
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 775
    .line 776
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDarkStrategy:Ljava/lang/Integer;

    .line 777
    .line 778
    if-eqz v3, :cond_18

    .line 779
    .line 780
    const-string v3, "FORCE_DARK_STRATEGY"

    .line 781
    .line 782
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    if-eqz v3, :cond_18

    .line 787
    .line 788
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 789
    .line 790
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDarkStrategy:Ljava/lang/Integer;

    .line 791
    .line 792
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    invoke-static {v2, v3}, Lo1/q;->n(Landroid/webkit/WebSettings;I)V

    .line 797
    .line 798
    .line 799
    :cond_18
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 800
    .line 801
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->geolocationEnabled:Ljava/lang/Boolean;

    .line 802
    .line 803
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 808
    .line 809
    .line 810
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 811
    .line 812
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 813
    .line 814
    if-eqz v3, :cond_1a

    .line 815
    .line 816
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 817
    .line 818
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    if-eqz v3, :cond_19

    .line 823
    .line 824
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 825
    .line 826
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 827
    .line 828
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 829
    .line 830
    .line 831
    goto :goto_9

    .line 832
    :cond_19
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 833
    .line 834
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 835
    .line 836
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 837
    .line 838
    .line 839
    :cond_1a
    :goto_9
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 840
    .line 841
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->loadsImagesAutomatically:Ljava/lang/Boolean;

    .line 842
    .line 843
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 844
    .line 845
    .line 846
    move-result v3

    .line 847
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 848
    .line 849
    .line 850
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 851
    .line 852
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumFontSize:Ljava/lang/Integer;

    .line 853
    .line 854
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 859
    .line 860
    .line 861
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 862
    .line 863
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumLogicalFontSize:Ljava/lang/Integer;

    .line 864
    .line 865
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 866
    .line 867
    .line 868
    move-result v3

    .line 869
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 870
    .line 871
    .line 872
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 873
    .line 874
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->initialScale:Ljava/lang/Integer;

    .line 875
    .line 876
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 881
    .line 882
    .line 883
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 884
    .line 885
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->needInitialFocus:Ljava/lang/Boolean;

    .line 886
    .line 887
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 888
    .line 889
    .line 890
    move-result v3

    .line 891
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 892
    .line 893
    .line 894
    const-string v3, "OFF_SCREEN_PRERASTER"

    .line 895
    .line 896
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 897
    .line 898
    .line 899
    move-result v3

    .line 900
    if-eqz v3, :cond_1b

    .line 901
    .line 902
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 903
    .line 904
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->offscreenPreRaster:Ljava/lang/Boolean;

    .line 905
    .line 906
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    invoke-static {v2, v3}, Lo1/q;->o(Landroid/webkit/WebSettings;Z)V

    .line 911
    .line 912
    .line 913
    goto :goto_a

    .line 914
    :cond_1b
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 915
    .line 916
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->offscreenPreRaster:Ljava/lang/Boolean;

    .line 917
    .line 918
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 919
    .line 920
    .line 921
    move-result v3

    .line 922
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    .line 923
    .line 924
    .line 925
    :goto_a
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 926
    .line 927
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->sansSerifFontFamily:Ljava/lang/String;

    .line 928
    .line 929
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 933
    .line 934
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->serifFontFamily:Ljava/lang/String;

    .line 935
    .line 936
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 940
    .line 941
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->standardFontFamily:Ljava/lang/String;

    .line 942
    .line 943
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 947
    .line 948
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->preferredContentMode:Ljava/lang/Integer;

    .line 949
    .line 950
    if-eqz v3, :cond_1c

    .line 951
    .line 952
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 953
    .line 954
    .line 955
    move-result v3

    .line 956
    sget-object v7, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 957
    .line 958
    invoke-virtual {v7}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->toValue()I

    .line 959
    .line 960
    .line 961
    move-result v7

    .line 962
    if-ne v3, v7, :cond_1c

    .line 963
    .line 964
    invoke-virtual {p0, v5}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setDesktopMode(Z)V

    .line 965
    .line 966
    .line 967
    :cond_1c
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 968
    .line 969
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->saveFormData:Ljava/lang/Boolean;

    .line 970
    .line 971
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 972
    .line 973
    .line 974
    move-result v3

    .line 975
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 976
    .line 977
    .line 978
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 979
    .line 980
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->incognito:Ljava/lang/Boolean;

    .line 981
    .line 982
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-eqz v3, :cond_1d

    .line 987
    .line 988
    invoke-virtual {p0, v5}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setIncognito(Z)V

    .line 989
    .line 990
    .line 991
    :cond_1d
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 992
    .line 993
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    .line 994
    .line 995
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 996
    .line 997
    .line 998
    move-result v3

    .line 999
    if-eqz v3, :cond_1f

    .line 1000
    .line 1001
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1002
    .line 1003
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->hardwareAcceleration:Ljava/lang/Boolean;

    .line 1004
    .line 1005
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1006
    .line 1007
    .line 1008
    move-result v3

    .line 1009
    const/4 v5, 0x0

    .line 1010
    if-eqz v3, :cond_1e

    .line 1011
    .line 1012
    const/4 v3, 0x2

    .line 1013
    invoke-virtual {p0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_b

    .line 1017
    :cond_1e
    invoke-virtual {p0, v6, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1018
    .line 1019
    .line 1020
    :cond_1f
    :goto_b
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1021
    .line 1022
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->regexToCancelSubFramesLoading:Ljava/lang/String;

    .line 1023
    .line 1024
    if-eqz v3, :cond_20

    .line 1025
    .line 1026
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    .line 1031
    .line 1032
    :cond_20
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1033
    .line 1034
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarStyle:Ljava/lang/Integer;

    .line 1035
    .line 1036
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    invoke-virtual {p0, v3}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 1041
    .line 1042
    .line 1043
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1044
    .line 1045
    iget-object v5, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 1046
    .line 1047
    if-eqz v5, :cond_21

    .line 1048
    .line 1049
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    invoke-virtual {p0, v3}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_c

    .line 1057
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    .line 1058
    .line 1059
    .line 1060
    move-result v5

    .line 1061
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v5

    .line 1065
    iput-object v5, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 1066
    .line 1067
    :goto_c
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1068
    .line 1069
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    .line 1070
    .line 1071
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    invoke-virtual {p0, v3}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 1076
    .line 1077
    .line 1078
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1079
    .line 1080
    iget-object v5, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 1081
    .line 1082
    if-eqz v5, :cond_22

    .line 1083
    .line 1084
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1085
    .line 1086
    .line 1087
    move-result v3

    .line 1088
    invoke-virtual {p0, v3}, Landroid/view/View;->setScrollBarFadeDuration(I)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_d

    .line 1092
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getScrollBarFadeDuration()I

    .line 1093
    .line 1094
    .line 1095
    move-result v5

    .line 1096
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v5

    .line 1100
    iput-object v5, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 1101
    .line 1102
    :goto_d
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1103
    .line 1104
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarPosition:Ljava/lang/Integer;

    .line 1105
    .line 1106
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1107
    .line 1108
    .line 1109
    move-result v3

    .line 1110
    invoke-virtual {p0, v3}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 1111
    .line 1112
    .line 1113
    if-lt v0, v1, :cond_26

    .line 1114
    .line 1115
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1116
    .line 1117
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarThumbColor:Ljava/lang/String;

    .line 1118
    .line 1119
    if-eqz v3, :cond_23

    .line 1120
    .line 1121
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 1122
    .line 1123
    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1124
    .line 1125
    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarThumbColor:Ljava/lang/String;

    .line 1126
    .line 1127
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1128
    .line 1129
    .line 1130
    move-result v5

    .line 1131
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1132
    .line 1133
    .line 1134
    invoke-static {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/a;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 1135
    .line 1136
    .line 1137
    :cond_23
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1138
    .line 1139
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarTrackColor:Ljava/lang/String;

    .line 1140
    .line 1141
    if-eqz v3, :cond_24

    .line 1142
    .line 1143
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 1144
    .line 1145
    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1146
    .line 1147
    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarTrackColor:Ljava/lang/String;

    .line 1148
    .line 1149
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1150
    .line 1151
    .line 1152
    move-result v5

    .line 1153
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1154
    .line 1155
    .line 1156
    invoke-static {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/b;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 1157
    .line 1158
    .line 1159
    :cond_24
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1160
    .line 1161
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarThumbColor:Ljava/lang/String;

    .line 1162
    .line 1163
    if-eqz v3, :cond_25

    .line 1164
    .line 1165
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 1166
    .line 1167
    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1168
    .line 1169
    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarThumbColor:Ljava/lang/String;

    .line 1170
    .line 1171
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1172
    .line 1173
    .line 1174
    move-result v5

    .line 1175
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1176
    .line 1177
    .line 1178
    invoke-static {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/c;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 1179
    .line 1180
    .line 1181
    :cond_25
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1182
    .line 1183
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarTrackColor:Ljava/lang/String;

    .line 1184
    .line 1185
    if-eqz v3, :cond_26

    .line 1186
    .line 1187
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 1188
    .line 1189
    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1190
    .line 1191
    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarTrackColor:Ljava/lang/String;

    .line 1192
    .line 1193
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1194
    .line 1195
    .line 1196
    move-result v5

    .line 1197
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1198
    .line 1199
    .line 1200
    invoke-static {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/d;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 1201
    .line 1202
    .line 1203
    :cond_26
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1204
    .line 1205
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->overScrollMode:Ljava/lang/Integer;

    .line 1206
    .line 1207
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1208
    .line 1209
    .line 1210
    move-result v3

    .line 1211
    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1212
    .line 1213
    .line 1214
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1215
    .line 1216
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->networkAvailable:Ljava/lang/Boolean;

    .line 1217
    .line 1218
    if-eqz v3, :cond_27

    .line 1219
    .line 1220
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1221
    .line 1222
    .line 1223
    move-result v3

    .line 1224
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 1225
    .line 1226
    .line 1227
    :cond_27
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1228
    .line 1229
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 1230
    .line 1231
    if-eqz v3, :cond_28

    .line 1232
    .line 1233
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 1234
    .line 1235
    .line 1236
    move-result v3

    .line 1237
    if-nez v3, :cond_28

    .line 1238
    .line 1239
    if-lt v0, v4, :cond_28

    .line 1240
    .line 1241
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1242
    .line 1243
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 1244
    .line 1245
    const-string v4, "rendererRequestedPriority"

    .line 1246
    .line 1247
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    check-cast v3, Ljava/lang/Integer;

    .line 1252
    .line 1253
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1254
    .line 1255
    .line 1256
    move-result v3

    .line 1257
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1258
    .line 1259
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 1260
    .line 1261
    const-string v5, "waivedWhenNotVisible"

    .line 1262
    .line 1263
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v4

    .line 1267
    check-cast v4, Ljava/lang/Boolean;

    .line 1268
    .line 1269
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v4

    .line 1273
    invoke-static {p0, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/e;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;IZ)V

    .line 1274
    .line 1275
    .line 1276
    :cond_28
    const-string v3, "ALGORITHMIC_DARKENING"

    .line 1277
    .line 1278
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v3

    .line 1282
    if-eqz v3, :cond_29

    .line 1283
    .line 1284
    if-lt v0, v1, :cond_29

    .line 1285
    .line 1286
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1287
    .line 1288
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->algorithmicDarkeningAllowed:Ljava/lang/Boolean;

    .line 1289
    .line 1290
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1291
    .line 1292
    .line 1293
    move-result v0

    .line 1294
    invoke-static {v2, v0}, Lo1/q;->j(Landroid/webkit/WebSettings;Z)V

    .line 1295
    .line 1296
    .line 1297
    :cond_29
    const-string v0, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    .line 1298
    .line 1299
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v0

    .line 1303
    if-eqz v0, :cond_2a

    .line 1304
    .line 1305
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1306
    .line 1307
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->enterpriseAuthenticationAppLinkPolicyEnabled:Ljava/lang/Boolean;

    .line 1308
    .line 1309
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1310
    .line 1311
    .line 1312
    move-result v0

    .line 1313
    invoke-static {v2, v0}, Lo1/q;->l(Landroid/webkit/WebSettings;Z)V

    .line 1314
    .line 1315
    .line 1316
    :cond_2a
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1317
    .line 1318
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->requestedWithHeaderOriginAllowList:Ljava/util/Set;

    .line 1319
    .line 1320
    if-eqz v0, :cond_2b

    .line 1321
    .line 1322
    const-string v0, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    .line 1323
    .line 1324
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v0

    .line 1328
    if-eqz v0, :cond_2b

    .line 1329
    .line 1330
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1331
    .line 1332
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->requestedWithHeaderOriginAllowList:Ljava/util/Set;

    .line 1333
    .line 1334
    invoke-static {v2, v0}, Lo1/q;->p(Landroid/webkit/WebSettings;Ljava/util/Set;)V

    .line 1335
    .line 1336
    .line 1337
    :cond_2b
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    .line 1338
    .line 1339
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v0

    .line 1343
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1344
    .line 1345
    .line 1346
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1347
    .line 1348
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->contentBlockers:Ljava/util/List;

    .line 1349
    .line 1350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1355
    .line 1356
    .line 1357
    move-result v1

    .line 1358
    if-eqz v1, :cond_2c

    .line 1359
    .line 1360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v1

    .line 1364
    check-cast v1, Ljava/util/Map;

    .line 1365
    .line 1366
    const-string v2, "trigger"

    .line 1367
    .line 1368
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v2

    .line 1372
    check-cast v2, Ljava/util/Map;

    .line 1373
    .line 1374
    invoke-static {v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v2

    .line 1378
    const-string v3, "action"

    .line 1379
    .line 1380
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v1

    .line 1384
    check-cast v1, Ljava/util/Map;

    .line 1385
    .line 1386
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v1

    .line 1390
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    .line 1391
    .line 1392
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v3

    .line 1396
    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;

    .line 1397
    .line 1398
    invoke-direct {v4, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    .line 1403
    .line 1404
    goto :goto_e

    .line 1405
    :cond_2c
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$1;

    .line 1406
    .line 1407
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 1411
    .line 1412
    .line 1413
    new-instance v0, Landroid/view/GestureDetector;

    .line 1414
    .line 1415
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v1

    .line 1419
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$2;

    .line 1420
    .line 1421
    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 1422
    .line 1423
    .line 1424
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1425
    .line 1426
    .line 1427
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 1428
    .line 1429
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$3;

    .line 1430
    .line 1431
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 1432
    .line 1433
    .line 1434
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->checkScrollStoppedTask:Ljava/lang/Runnable;

    .line 1435
    .line 1436
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1437
    .line 1438
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    .line 1439
    .line 1440
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1441
    .line 1442
    .line 1443
    move-result v0

    .line 1444
    if-nez v0, :cond_2d

    .line 1445
    .line 1446
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$4;

    .line 1447
    .line 1448
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$4;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 1449
    .line 1450
    .line 1451
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    .line 1452
    .line 1453
    :cond_2d
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$5;

    .line 1454
    .line 1455
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$5;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1459
    .line 1460
    .line 1461
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$6;

    .line 1462
    .line 1463
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$6;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1467
    .line 1468
    .line 1469
    return-void
.end method

.method public prepareAndAddUserScripts()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 2
    .line 3
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/PromisePolyfillJS;->PROMISE_POLYFILL_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 9
    .line 10
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/JavaScriptBridgeJS;->JAVASCRIPT_BRIDGE_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 16
    .line 17
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/PrintJS;->PRINT_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 23
    .line 24
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/OnWindowBlurEventJS;->ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 30
    .line 31
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/OnWindowFocusEventJS;->ON_WINDOW_FOCUS_EVENT_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->interceptOnlyAsyncAjaxRequests:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/InterceptAjaxRequestJS;->createInterceptOnlyAsyncAjaxRequestsPluginScript(Z)Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->interceptOnlyAsyncAjaxRequestsPluginScript:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->interceptOnlyAsyncAjaxRequestsPluginScript:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 68
    .line 69
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/InterceptAjaxRequestJS;->INTERCEPT_AJAX_REQUEST_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 85
    .line 86
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/InterceptFetchRequestJS;->INTERCEPT_FETCH_REQUEST_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useOnLoadResource:Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 102
    .line 103
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/OnLoadResourceJS;->ON_LOAD_RESOURCE_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 119
    .line 120
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/PluginScriptsUtil;->CHECK_GLOBAL_KEY_DOWN_EVENT_TO_HIDE_CONTEXT_MENU_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->initialUserOnlyScripts:Ljava/util/List;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addUserOnlyScripts(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public printCurrentPage(Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->activity:Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const-string v1, "print"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/print/PrintManager;

    .line 16
    .line 17
    if-eqz v0, :cond_9

    .line 18
    .line 19
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " Document"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz p1, :cond_8

    .line 57
    .line 58
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->jobName:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->jobName:Ljava/lang/String;

    .line 69
    .line 70
    :cond_1
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->orientation:Ljava/lang/Integer;

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    if-eq v3, v4, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_1
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->mediaSize:Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;

    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;->toMediaSize()Landroid/print/PrintAttributes$MediaSize;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->colorMode:Ljava/lang/Integer;

    .line 107
    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 115
    .line 116
    .line 117
    :cond_6
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->duplexMode:Ljava/lang/Integer;

    .line 118
    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->resolution:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;

    .line 129
    .line 130
    if-eqz v3, :cond_8

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;->toResolution()Landroid/print/PrintAttributes$Resolution;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    .line 137
    .line 138
    .line 139
    :cond_8
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v2, v3, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->handledByClient:Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_a

    .line 160
    .line 161
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 162
    .line 163
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->printJobManager:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;

    .line 164
    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;

    .line 176
    .line 177
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 178
    .line 179
    invoke-direct {v2, v1, v0, p1, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;-><init>(Ljava/lang/String;Landroid/print/PrintJob;Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 183
    .line 184
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->printJobManager:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;->jobs:Ljava/util/Map;

    .line 187
    .line 188
    iget-object v0, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->id:Ljava/lang/String;

    .line 189
    .line 190
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    return-object v1

    .line 194
    :cond_9
    const-string p1, "InAppWebView"

    .line 195
    .line 196
    const-string v0, "No PrintManager available"

    .line 197
    .line 198
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_a
    const/4 p1, 0x0

    .line 202
    return-object p1
.end method

.method public rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;->containerView:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v7, v0}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->hideContextMenu()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    move v10, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v10, v9

    .line 38
    :goto_0
    if-nez v8, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    return-object v0

    .line 42
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-wide/16 v1, 0xbb8

    .line 47
    .line 48
    invoke-virtual {v8, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    move v2, v9

    .line 57
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-ge v2, v3, :cond_3

    .line 62
    .line 63
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    .line 77
    .line 78
    .line 79
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableContextMenu:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    return-object v8

    .line 90
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget v2, Lcom/pichillilorenzo/flutter_inappwebview_android/R$layout;->floating_action_mode:I

    .line 99
    .line 100
    invoke-virtual {v0, v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    iput-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 113
    .line 114
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    move-object v11, v0

    .line 119
    check-cast v11, Landroid/widget/LinearLayout;

    .line 120
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/ContextMenuSettings;

    .line 127
    .line 128
    invoke-direct {v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/ContextMenuSettings;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v3, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    const-string v0, "menuItems"

    .line 136
    .line 137
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/util/List;

    .line 142
    .line 143
    iget-object v3, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 144
    .line 145
    const-string v4, "settings"

    .line 146
    .line 147
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/util/Map;

    .line 152
    .line 153
    if-eqz v3, :cond_5

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/ContextMenuSettings;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/ContextMenuSettings;

    .line 156
    .line 157
    .line 158
    :cond_5
    if-nez v0, :cond_6

    .line 159
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    :cond_6
    move-object v12, v0

    .line 166
    iget-object v0, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/ContextMenuSettings;->hideDefaultSystemContextMenuItems:Ljava/lang/Boolean;

    .line 167
    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_9

    .line 175
    .line 176
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_9

    .line 185
    .line 186
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object v4, v0

    .line 191
    check-cast v4, Landroid/view/MenuItem;

    .line 192
    .line 193
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sget v1, Lcom/pichillilorenzo/flutter_inappwebview_android/R$layout;->floating_action_mode_item:I

    .line 214
    .line 215
    invoke-virtual {v0, v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    move-object v14, v0

    .line 220
    check-cast v14, Landroid/widget/TextView;

    .line 221
    .line 222
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    new-instance v15, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$12;

    .line 226
    .line 227
    move-object v0, v15

    .line 228
    move-object/from16 v1, p0

    .line 229
    .line 230
    move-object/from16 v2, p2

    .line 231
    .line 232
    move-object/from16 v3, p1

    .line 233
    .line 234
    invoke-direct/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$12;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/view/ActionMode$Callback;Landroid/view/ActionMode;Landroid/view/MenuItem;ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 241
    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Ljava/util/Map;

    .line 263
    .line 264
    const-string v2, "id"

    .line 265
    .line 266
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Ljava/lang/Integer;

    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    const-string v3, "title"

    .line 277
    .line 278
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    sget v4, Lcom/pichillilorenzo/flutter_inappwebview_android/R$layout;->floating_action_mode_item:I

    .line 293
    .line 294
    invoke-virtual {v3, v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$13;

    .line 304
    .line 305
    invoke-direct {v4, v7, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$13;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 312
    .line 313
    if-eqz v1, :cond_a

    .line 314
    .line 315
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_b
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->lastTouch:Landroid/graphics/Point;

    .line 320
    .line 321
    if-eqz v0, :cond_c

    .line 322
    .line 323
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_c
    move v1, v9

    .line 327
    :goto_4
    if-eqz v0, :cond_d

    .line 328
    .line 329
    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 330
    .line 331
    :cond_d
    new-instance v0, Landroid/graphics/Point;

    .line 332
    .line 333
    invoke-direct {v0, v1, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 334
    .line 335
    .line 336
    iput-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenuPoint:Landroid/graphics/Point;

    .line 337
    .line 338
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 339
    .line 340
    if-eqz v0, :cond_f

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$14;

    .line 347
    .line 348
    invoke-direct {v2, v7, v1, v9}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$14;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;II)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 355
    .line 356
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 357
    .line 358
    const/4 v3, -0x2

    .line 359
    invoke-direct {v2, v3, v3, v1, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    .line 364
    .line 365
    if-eqz v10, :cond_e

    .line 366
    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->sendOnCreateContextMenuEvent()V

    .line 368
    .line 369
    .line 370
    :cond_e
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    .line 371
    .line 372
    if-eqz v0, :cond_f

    .line 373
    .line 374
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 375
    .line 376
    .line 377
    :cond_f
    return-object v8
.end method

.method public requestFocusNodeHref()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "src"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v2, "url"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string v2, "title"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public requestImageRef()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestImageRef(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "url"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/2addr p3, p1

    .line 16
    filled-new-array {p3}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p3, "scrollX"

    .line 21
    .line 22
    invoke-static {p3, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    add-int/2addr p3, p2

    .line 35
    filled-new-array {p3}, [I

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string p3, "scrollY"

    .line 40
    .line 41
    invoke-static {p3, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    filled-new-array {p1, p2}, [Landroid/animation/PropertyValuesHolder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-wide/16 p2, 0x12c

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    filled-new-array {p1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p3, "scrollX"

    .line 16
    .line 17
    invoke-static {p3, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    filled-new-array {p2}, [I

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string p3, "scrollY"

    .line 30
    .line 31
    invoke-static {p3, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    filled-new-array {p1, p2}, [Landroid/animation/PropertyValuesHolder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-wide/16 p2, 0x12c

    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public setCacheEnabled(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "setAppCacheEnabled"

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "setAppCachePath"

    .line 28
    .line 29
    invoke-static {v0, v2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodIfExists(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodIfExists(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x2

    .line 47
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodIfExists(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public setChannelDelegate(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;

    .line 2
    .line 3
    return-void
.end method

.method public setContextMenu(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Android"

    .line 6
    .line 7
    const-string v2, "diordnA"

    .line 8
    .line 9
    const-string v3, "Mobile"

    .line 10
    .line 11
    const-string v4, "eliboM"

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setInAppBrowserDelegate(Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inAppBrowserDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 2
    .line 3
    return-void
.end method

.method public setInFullscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->inFullscreen:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIncognito(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "setAppCacheEnabled"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v3}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodIfExists(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, -0x1

    .line 49
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodIfExists(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public setPlugin(Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 2
    .line 3
    return-void
.end method

.method public setSettings(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;Ljava/util/HashMap;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "javaScriptEnabled"

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->javaScriptEnabled:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->javaScriptEnabled:Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v1, "useShouldInterceptAjaxRequest"

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    .line 39
    .line 40
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    .line 41
    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/InterceptAjaxRequestJS;->INTERCEPT_AJAX_REQUEST_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 49
    .line 50
    const-string v3, "flutter_inappwebview._useShouldInterceptAjaxRequest"

    .line 51
    .line 52
    invoke-virtual {p0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->enablePluginScriptAtRuntime(Ljava/lang/String;ZLcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string v1, "interceptOnlyAsyncAjaxRequests"

    .line 56
    .line 57
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->interceptOnlyAsyncAjaxRequests:Ljava/lang/Boolean;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->interceptOnlyAsyncAjaxRequests:Ljava/lang/Boolean;

    .line 68
    .line 69
    if-eq v1, v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->interceptOnlyAsyncAjaxRequestsPluginScript:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 76
    .line 77
    const-string v3, "flutter_inappwebview._interceptOnlyAsyncAjaxRequests"

    .line 78
    .line 79
    invoke-virtual {p0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->enablePluginScriptAtRuntime(Ljava/lang/String;ZLcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    const-string v1, "useShouldInterceptFetchRequest"

    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    .line 93
    .line 94
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    .line 95
    .line 96
    if-eq v1, v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/InterceptFetchRequestJS;->INTERCEPT_FETCH_REQUEST_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 103
    .line 104
    const-string v3, "flutter_inappwebview._useShouldInterceptFetchRequest"

    .line 105
    .line 106
    invoke-virtual {p0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->enablePluginScriptAtRuntime(Ljava/lang/String;ZLcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    const-string v1, "useOnLoadResource"

    .line 110
    .line 111
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useOnLoadResource:Ljava/lang/Boolean;

    .line 120
    .line 121
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useOnLoadResource:Ljava/lang/Boolean;

    .line 122
    .line 123
    if-eq v1, v2, :cond_4

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/OnLoadResourceJS;->ON_LOAD_RESOURCE_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 130
    .line 131
    const-string v3, "flutter_inappwebview._useOnLoadResource"

    .line 132
    .line 133
    invoke-virtual {p0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->enablePluginScriptAtRuntime(Ljava/lang/String;ZLcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    const-string v1, "javaScriptCanOpenWindowsAutomatically"

    .line 137
    .line 138
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    .line 147
    .line 148
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    .line 149
    .line 150
    if-eq v1, v2, :cond_5

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 157
    .line 158
    .line 159
    :cond_5
    const-string v1, "builtInZoomControls"

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 168
    .line 169
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->builtInZoomControls:Ljava/lang/Boolean;

    .line 170
    .line 171
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->builtInZoomControls:Ljava/lang/Boolean;

    .line 172
    .line 173
    if-eq v1, v2, :cond_6

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 180
    .line 181
    .line 182
    :cond_6
    const-string v1, "displayZoomControls"

    .line 183
    .line 184
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-eqz v1, :cond_7

    .line 189
    .line 190
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->displayZoomControls:Ljava/lang/Boolean;

    .line 193
    .line 194
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->displayZoomControls:Ljava/lang/Boolean;

    .line 195
    .line 196
    if-eq v1, v2, :cond_7

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 203
    .line 204
    .line 205
    :cond_7
    const-string v1, "safeBrowsingEnabled"

    .line 206
    .line 207
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const/16 v2, 0x1a

    .line 212
    .line 213
    if-eqz v1, :cond_9

    .line 214
    .line 215
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 216
    .line 217
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->safeBrowsingEnabled:Ljava/lang/Boolean;

    .line 218
    .line 219
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->safeBrowsingEnabled:Ljava/lang/Boolean;

    .line 220
    .line 221
    if-eq v1, v3, :cond_9

    .line 222
    .line 223
    const-string v1, "SAFE_BROWSING_ENABLE"

    .line 224
    .line 225
    invoke-static {v1}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_8

    .line 230
    .line 231
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->safeBrowsingEnabled:Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-static {v0, v1}, Lo1/q;->q(Landroid/webkit/WebSettings;Z)V

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 242
    .line 243
    if-lt v1, v2, :cond_9

    .line 244
    .line 245
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->safeBrowsingEnabled:Ljava/lang/Boolean;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-static {v0, v1}, Landroidx/webkit/internal/h;->a(Landroid/webkit/WebSettings;Z)V

    .line 252
    .line 253
    .line 254
    :cond_9
    :goto_0
    const-string v1, "mediaPlaybackRequiresUserGesture"

    .line 255
    .line 256
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 263
    .line 264
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    .line 265
    .line 266
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    .line 267
    .line 268
    if-eq v1, v3, :cond_a

    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 275
    .line 276
    .line 277
    :cond_a
    const-string v1, "databaseEnabled"

    .line 278
    .line 279
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-eqz v1, :cond_b

    .line 284
    .line 285
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 286
    .line 287
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->databaseEnabled:Ljava/lang/Boolean;

    .line 288
    .line 289
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->databaseEnabled:Ljava/lang/Boolean;

    .line 290
    .line 291
    if-eq v1, v3, :cond_b

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 298
    .line 299
    .line 300
    :cond_b
    const-string v1, "domStorageEnabled"

    .line 301
    .line 302
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    if-eqz v1, :cond_c

    .line 307
    .line 308
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 309
    .line 310
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->domStorageEnabled:Ljava/lang/Boolean;

    .line 311
    .line 312
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->domStorageEnabled:Ljava/lang/Boolean;

    .line 313
    .line 314
    if-eq v1, v3, :cond_c

    .line 315
    .line 316
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 321
    .line 322
    .line 323
    :cond_c
    const-string v1, "userAgent"

    .line 324
    .line 325
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-eqz v1, :cond_d

    .line 330
    .line 331
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 332
    .line 333
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 334
    .line 335
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-nez v1, :cond_d

    .line 342
    .line 343
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_d

    .line 350
    .line 351
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_d
    const-string v1, "applicationNameForUserAgent"

    .line 357
    .line 358
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-eqz v1, :cond_f

    .line 363
    .line 364
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->applicationNameForUserAgent:Ljava/lang/String;

    .line 367
    .line 368
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->applicationNameForUserAgent:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-nez v1, :cond_f

    .line 375
    .line 376
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->applicationNameForUserAgent:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-nez v1, :cond_f

    .line 383
    .line 384
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 385
    .line 386
    if-eqz v1, :cond_e

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_e

    .line 393
    .line 394
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->userAgent:Ljava/lang/String;

    .line 395
    .line 396
    goto :goto_1

    .line 397
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v1, " "

    .line 414
    .line 415
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 419
    .line 420
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->applicationNameForUserAgent:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    :cond_f
    const-string v1, "clearCache"

    .line 433
    .line 434
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-eqz v1, :cond_10

    .line 439
    .line 440
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->clearCache:Ljava/lang/Boolean;

    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_10

    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->clearAllCache()V

    .line 449
    .line 450
    .line 451
    goto :goto_2

    .line 452
    :cond_10
    const-string v1, "clearSessionCache"

    .line 453
    .line 454
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    if-eqz v1, :cond_11

    .line 459
    .line 460
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->clearSessionCache:Ljava/lang/Boolean;

    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_11

    .line 467
    .line 468
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 473
    .line 474
    .line 475
    :cond_11
    :goto_2
    const-string v1, "thirdPartyCookiesEnabled"

    .line 476
    .line 477
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    if-eqz v1, :cond_12

    .line 482
    .line 483
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 484
    .line 485
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    .line 486
    .line 487
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    .line 488
    .line 489
    if-eq v1, v3, :cond_12

    .line 490
    .line 491
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    .line 496
    .line 497
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    invoke-virtual {v1, p0, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 502
    .line 503
    .line 504
    :cond_12
    const-string v1, "useWideViewPort"

    .line 505
    .line 506
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    if-eqz v1, :cond_13

    .line 511
    .line 512
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 513
    .line 514
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useWideViewPort:Ljava/lang/Boolean;

    .line 515
    .line 516
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useWideViewPort:Ljava/lang/Boolean;

    .line 517
    .line 518
    if-eq v1, v3, :cond_13

    .line 519
    .line 520
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 525
    .line 526
    .line 527
    :cond_13
    const-string v1, "supportZoom"

    .line 528
    .line 529
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    if-eqz v1, :cond_14

    .line 534
    .line 535
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 536
    .line 537
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->supportZoom:Ljava/lang/Boolean;

    .line 538
    .line 539
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->supportZoom:Ljava/lang/Boolean;

    .line 540
    .line 541
    if-eq v1, v3, :cond_14

    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 548
    .line 549
    .line 550
    :cond_14
    const-string v1, "textZoom"

    .line 551
    .line 552
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    if-eqz v1, :cond_15

    .line 557
    .line 558
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 559
    .line 560
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->textZoom:Ljava/lang/Integer;

    .line 561
    .line 562
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->textZoom:Ljava/lang/Integer;

    .line 563
    .line 564
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-nez v1, :cond_15

    .line 569
    .line 570
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->textZoom:Ljava/lang/Integer;

    .line 571
    .line 572
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 577
    .line 578
    .line 579
    :cond_15
    const-string v1, "verticalScrollBarEnabled"

    .line 580
    .line 581
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    if-eqz v1, :cond_16

    .line 586
    .line 587
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 588
    .line 589
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    .line 590
    .line 591
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    .line 592
    .line 593
    if-eq v1, v3, :cond_16

    .line 594
    .line 595
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 600
    .line 601
    .line 602
    :cond_16
    const-string v1, "horizontalScrollBarEnabled"

    .line 603
    .line 604
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    if-eqz v1, :cond_17

    .line 609
    .line 610
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 611
    .line 612
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    .line 613
    .line 614
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    .line 615
    .line 616
    if-eq v1, v3, :cond_17

    .line 617
    .line 618
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 623
    .line 624
    .line 625
    :cond_17
    const-string v1, "transparentBackground"

    .line 626
    .line 627
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    const/4 v3, 0x0

    .line 632
    if-eqz v1, :cond_19

    .line 633
    .line 634
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 635
    .line 636
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->transparentBackground:Ljava/lang/Boolean;

    .line 637
    .line 638
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->transparentBackground:Ljava/lang/Boolean;

    .line 639
    .line 640
    if-eq v1, v4, :cond_19

    .line 641
    .line 642
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-eqz v1, :cond_18

    .line 647
    .line 648
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 649
    .line 650
    .line 651
    goto :goto_3

    .line 652
    :cond_18
    const-string v1, "#FFFFFF"

    .line 653
    .line 654
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 659
    .line 660
    .line 661
    :cond_19
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 662
    .line 663
    const-string v4, "mixedContentMode"

    .line 664
    .line 665
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    if-eqz v4, :cond_1b

    .line 670
    .line 671
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 672
    .line 673
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->mixedContentMode:Ljava/lang/Integer;

    .line 674
    .line 675
    if-eqz v4, :cond_1a

    .line 676
    .line 677
    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->mixedContentMode:Ljava/lang/Integer;

    .line 678
    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v4

    .line 683
    if-nez v4, :cond_1b

    .line 684
    .line 685
    :cond_1a
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->mixedContentMode:Ljava/lang/Integer;

    .line 686
    .line 687
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 688
    .line 689
    .line 690
    move-result v4

    .line 691
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 692
    .line 693
    .line 694
    :cond_1b
    const-string v4, "supportMultipleWindows"

    .line 695
    .line 696
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    if-eqz v4, :cond_1c

    .line 701
    .line 702
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 703
    .line 704
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->supportMultipleWindows:Ljava/lang/Boolean;

    .line 705
    .line 706
    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->supportMultipleWindows:Ljava/lang/Boolean;

    .line 707
    .line 708
    if-eq v4, v5, :cond_1c

    .line 709
    .line 710
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 715
    .line 716
    .line 717
    :cond_1c
    const-string v4, "useOnDownloadStart"

    .line 718
    .line 719
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    const/4 v5, 0x0

    .line 724
    if-eqz v4, :cond_1e

    .line 725
    .line 726
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 727
    .line 728
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useOnDownloadStart:Ljava/lang/Boolean;

    .line 729
    .line 730
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useOnDownloadStart:Ljava/lang/Boolean;

    .line 731
    .line 732
    if-eq v4, v6, :cond_1e

    .line 733
    .line 734
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    if-eqz v4, :cond_1d

    .line 739
    .line 740
    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$DownloadStartListener;

    .line 741
    .line 742
    invoke-direct {v4, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$DownloadStartListener;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 746
    .line 747
    .line 748
    goto :goto_4

    .line 749
    :cond_1d
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 750
    .line 751
    .line 752
    :cond_1e
    :goto_4
    const-string v4, "allowContentAccess"

    .line 753
    .line 754
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v4

    .line 758
    if-eqz v4, :cond_1f

    .line 759
    .line 760
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 761
    .line 762
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowContentAccess:Ljava/lang/Boolean;

    .line 763
    .line 764
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowContentAccess:Ljava/lang/Boolean;

    .line 765
    .line 766
    if-eq v4, v6, :cond_1f

    .line 767
    .line 768
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 773
    .line 774
    .line 775
    :cond_1f
    const-string v4, "allowFileAccess"

    .line 776
    .line 777
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    if-eqz v4, :cond_20

    .line 782
    .line 783
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 784
    .line 785
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowFileAccess:Ljava/lang/Boolean;

    .line 786
    .line 787
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowFileAccess:Ljava/lang/Boolean;

    .line 788
    .line 789
    if-eq v4, v6, :cond_20

    .line 790
    .line 791
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 792
    .line 793
    .line 794
    move-result v4

    .line 795
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 796
    .line 797
    .line 798
    :cond_20
    const-string v4, "allowFileAccessFromFileURLs"

    .line 799
    .line 800
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    if-eqz v4, :cond_21

    .line 805
    .line 806
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 807
    .line 808
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    .line 809
    .line 810
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    .line 811
    .line 812
    if-eq v4, v6, :cond_21

    .line 813
    .line 814
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 815
    .line 816
    .line 817
    move-result v4

    .line 818
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 819
    .line 820
    .line 821
    :cond_21
    const-string v4, "allowUniversalAccessFromFileURLs"

    .line 822
    .line 823
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    if-eqz v4, :cond_22

    .line 828
    .line 829
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 830
    .line 831
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    .line 832
    .line 833
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    .line 834
    .line 835
    if-eq v4, v6, :cond_22

    .line 836
    .line 837
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 838
    .line 839
    .line 840
    move-result v4

    .line 841
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 842
    .line 843
    .line 844
    :cond_22
    const-string v4, "cacheEnabled"

    .line 845
    .line 846
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    if-eqz v4, :cond_23

    .line 851
    .line 852
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 853
    .line 854
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheEnabled:Ljava/lang/Boolean;

    .line 855
    .line 856
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheEnabled:Ljava/lang/Boolean;

    .line 857
    .line 858
    if-eq v4, v6, :cond_23

    .line 859
    .line 860
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    invoke-virtual {p0, v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setCacheEnabled(Z)V

    .line 865
    .line 866
    .line 867
    :cond_23
    const-string v4, "appCachePath"

    .line 868
    .line 869
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    if-eqz v4, :cond_25

    .line 874
    .line 875
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 876
    .line 877
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->appCachePath:Ljava/lang/String;

    .line 878
    .line 879
    if-eqz v4, :cond_24

    .line 880
    .line 881
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->appCachePath:Ljava/lang/String;

    .line 882
    .line 883
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v4

    .line 887
    if-nez v4, :cond_25

    .line 888
    .line 889
    :cond_24
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->appCachePath:Ljava/lang/String;

    .line 890
    .line 891
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v4

    .line 895
    const-string v6, "setAppCachePath"

    .line 896
    .line 897
    invoke-static {v0, v6, v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodIfExists(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    :cond_25
    const-string v4, "blockNetworkImage"

    .line 901
    .line 902
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    if-eqz v4, :cond_26

    .line 907
    .line 908
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 909
    .line 910
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->blockNetworkImage:Ljava/lang/Boolean;

    .line 911
    .line 912
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->blockNetworkImage:Ljava/lang/Boolean;

    .line 913
    .line 914
    if-eq v4, v6, :cond_26

    .line 915
    .line 916
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 921
    .line 922
    .line 923
    :cond_26
    const-string v4, "blockNetworkLoads"

    .line 924
    .line 925
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v4

    .line 929
    if-eqz v4, :cond_27

    .line 930
    .line 931
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 932
    .line 933
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->blockNetworkLoads:Ljava/lang/Boolean;

    .line 934
    .line 935
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->blockNetworkLoads:Ljava/lang/Boolean;

    .line 936
    .line 937
    if-eq v4, v6, :cond_27

    .line 938
    .line 939
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 940
    .line 941
    .line 942
    move-result v4

    .line 943
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 944
    .line 945
    .line 946
    :cond_27
    const-string v4, "cacheMode"

    .line 947
    .line 948
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v4

    .line 952
    if-eqz v4, :cond_28

    .line 953
    .line 954
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 955
    .line 956
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheMode:Ljava/lang/Integer;

    .line 957
    .line 958
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheMode:Ljava/lang/Integer;

    .line 959
    .line 960
    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v4

    .line 964
    if-nez v4, :cond_28

    .line 965
    .line 966
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cacheMode:Ljava/lang/Integer;

    .line 967
    .line 968
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 969
    .line 970
    .line 971
    move-result v4

    .line 972
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 973
    .line 974
    .line 975
    :cond_28
    const-string v4, "cursiveFontFamily"

    .line 976
    .line 977
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    if-eqz v4, :cond_29

    .line 982
    .line 983
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 984
    .line 985
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cursiveFontFamily:Ljava/lang/String;

    .line 986
    .line 987
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cursiveFontFamily:Ljava/lang/String;

    .line 988
    .line 989
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v4

    .line 993
    if-nez v4, :cond_29

    .line 994
    .line 995
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->cursiveFontFamily:Ljava/lang/String;

    .line 996
    .line 997
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    :cond_29
    const-string v4, "defaultFixedFontSize"

    .line 1001
    .line 1002
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    if-eqz v4, :cond_2a

    .line 1007
    .line 1008
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1009
    .line 1010
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFixedFontSize:Ljava/lang/Integer;

    .line 1011
    .line 1012
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFixedFontSize:Ljava/lang/Integer;

    .line 1013
    .line 1014
    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v4

    .line 1018
    if-nez v4, :cond_2a

    .line 1019
    .line 1020
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFixedFontSize:Ljava/lang/Integer;

    .line 1021
    .line 1022
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1023
    .line 1024
    .line 1025
    move-result v4

    .line 1026
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 1027
    .line 1028
    .line 1029
    :cond_2a
    const-string v4, "defaultFontSize"

    .line 1030
    .line 1031
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    if-eqz v4, :cond_2b

    .line 1036
    .line 1037
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1038
    .line 1039
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFontSize:Ljava/lang/Integer;

    .line 1040
    .line 1041
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFontSize:Ljava/lang/Integer;

    .line 1042
    .line 1043
    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v4

    .line 1047
    if-nez v4, :cond_2b

    .line 1048
    .line 1049
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultFontSize:Ljava/lang/Integer;

    .line 1050
    .line 1051
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1052
    .line 1053
    .line 1054
    move-result v4

    .line 1055
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 1056
    .line 1057
    .line 1058
    :cond_2b
    const-string v4, "defaultTextEncodingName"

    .line 1059
    .line 1060
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v4

    .line 1064
    if-eqz v4, :cond_2c

    .line 1065
    .line 1066
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1067
    .line 1068
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 1069
    .line 1070
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 1071
    .line 1072
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v4

    .line 1076
    if-nez v4, :cond_2c

    .line 1077
    .line 1078
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 1079
    .line 1080
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    :cond_2c
    const-string v4, "disabledActionModeMenuItems"

    .line 1084
    .line 1085
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v4

    .line 1089
    if-eqz v4, :cond_2f

    .line 1090
    .line 1091
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1092
    .line 1093
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 1094
    .line 1095
    if-eqz v4, :cond_2d

    .line 1096
    .line 1097
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 1098
    .line 1099
    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v4

    .line 1103
    if-nez v4, :cond_2f

    .line 1104
    .line 1105
    :cond_2d
    const-string v4, "DISABLED_ACTION_MODE_MENU_ITEMS"

    .line 1106
    .line 1107
    invoke-static {v4}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v4

    .line 1111
    if-eqz v4, :cond_2e

    .line 1112
    .line 1113
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 1114
    .line 1115
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1116
    .line 1117
    .line 1118
    move-result v4

    .line 1119
    invoke-static {v0, v4}, Lo1/q;->k(Landroid/webkit/WebSettings;I)V

    .line 1120
    .line 1121
    .line 1122
    goto :goto_5

    .line 1123
    :cond_2e
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disabledActionModeMenuItems:Ljava/lang/Integer;

    .line 1124
    .line 1125
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1126
    .line 1127
    .line 1128
    move-result v4

    .line 1129
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisabledActionModeMenuItems(I)V

    .line 1130
    .line 1131
    .line 1132
    :cond_2f
    :goto_5
    const-string v4, "fantasyFontFamily"

    .line 1133
    .line 1134
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v4

    .line 1138
    if-eqz v4, :cond_30

    .line 1139
    .line 1140
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1141
    .line 1142
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fantasyFontFamily:Ljava/lang/String;

    .line 1143
    .line 1144
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fantasyFontFamily:Ljava/lang/String;

    .line 1145
    .line 1146
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v4

    .line 1150
    if-nez v4, :cond_30

    .line 1151
    .line 1152
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fantasyFontFamily:Ljava/lang/String;

    .line 1153
    .line 1154
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    :cond_30
    const-string v4, "fixedFontFamily"

    .line 1158
    .line 1159
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v4

    .line 1163
    if-eqz v4, :cond_31

    .line 1164
    .line 1165
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1166
    .line 1167
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fixedFontFamily:Ljava/lang/String;

    .line 1168
    .line 1169
    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fixedFontFamily:Ljava/lang/String;

    .line 1170
    .line 1171
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v4

    .line 1175
    if-nez v4, :cond_31

    .line 1176
    .line 1177
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->fixedFontFamily:Ljava/lang/String;

    .line 1178
    .line 1179
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    :cond_31
    const-string v4, "forceDark"

    .line 1183
    .line 1184
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v4

    .line 1188
    const/16 v6, 0x1d

    .line 1189
    .line 1190
    if-eqz v4, :cond_33

    .line 1191
    .line 1192
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1193
    .line 1194
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDark:Ljava/lang/Integer;

    .line 1195
    .line 1196
    iget-object v7, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDark:Ljava/lang/Integer;

    .line 1197
    .line 1198
    invoke-virtual {v4, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1199
    .line 1200
    .line 1201
    move-result v4

    .line 1202
    if-nez v4, :cond_33

    .line 1203
    .line 1204
    const-string v4, "FORCE_DARK"

    .line 1205
    .line 1206
    invoke-static {v4}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v4

    .line 1210
    if-eqz v4, :cond_32

    .line 1211
    .line 1212
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDark:Ljava/lang/Integer;

    .line 1213
    .line 1214
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1215
    .line 1216
    .line 1217
    move-result v1

    .line 1218
    invoke-static {v0, v1}, Lo1/q;->m(Landroid/webkit/WebSettings;I)V

    .line 1219
    .line 1220
    .line 1221
    goto :goto_6

    .line 1222
    :cond_32
    if-lt v1, v6, :cond_33

    .line 1223
    .line 1224
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDark:Ljava/lang/Integer;

    .line 1225
    .line 1226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1227
    .line 1228
    .line 1229
    move-result v1

    .line 1230
    invoke-static {v0, v1}, Landroidx/webkit/internal/f0;->a(Landroid/webkit/WebSettings;I)V

    .line 1231
    .line 1232
    .line 1233
    :cond_33
    :goto_6
    const-string v1, "forceDarkStrategy"

    .line 1234
    .line 1235
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v1

    .line 1239
    if-eqz v1, :cond_34

    .line 1240
    .line 1241
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1242
    .line 1243
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDarkStrategy:Ljava/lang/Integer;

    .line 1244
    .line 1245
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDarkStrategy:Ljava/lang/Integer;

    .line 1246
    .line 1247
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v1

    .line 1251
    if-nez v1, :cond_34

    .line 1252
    .line 1253
    const-string v1, "FORCE_DARK_STRATEGY"

    .line 1254
    .line 1255
    invoke-static {v1}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v1

    .line 1259
    if-eqz v1, :cond_34

    .line 1260
    .line 1261
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->forceDarkStrategy:Ljava/lang/Integer;

    .line 1262
    .line 1263
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1264
    .line 1265
    .line 1266
    move-result v1

    .line 1267
    invoke-static {v0, v1}, Lo1/q;->n(Landroid/webkit/WebSettings;I)V

    .line 1268
    .line 1269
    .line 1270
    :cond_34
    const-string v1, "geolocationEnabled"

    .line 1271
    .line 1272
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    if-eqz v1, :cond_35

    .line 1277
    .line 1278
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1279
    .line 1280
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->geolocationEnabled:Ljava/lang/Boolean;

    .line 1281
    .line 1282
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->geolocationEnabled:Ljava/lang/Boolean;

    .line 1283
    .line 1284
    if-eq v1, v4, :cond_35

    .line 1285
    .line 1286
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v1

    .line 1290
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 1291
    .line 1292
    .line 1293
    :cond_35
    const-string v1, "layoutAlgorithm"

    .line 1294
    .line 1295
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v1

    .line 1299
    if-eqz v1, :cond_37

    .line 1300
    .line 1301
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1302
    .line 1303
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1304
    .line 1305
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1306
    .line 1307
    if-eq v1, v4, :cond_37

    .line 1308
    .line 1309
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1310
    .line 1311
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1312
    .line 1313
    .line 1314
    move-result v1

    .line 1315
    if-eqz v1, :cond_36

    .line 1316
    .line 1317
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1318
    .line 1319
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1320
    .line 1321
    .line 1322
    goto :goto_7

    .line 1323
    :cond_36
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1324
    .line 1325
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1326
    .line 1327
    .line 1328
    :cond_37
    :goto_7
    const-string v1, "loadWithOverviewMode"

    .line 1329
    .line 1330
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v1

    .line 1334
    if-eqz v1, :cond_38

    .line 1335
    .line 1336
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1337
    .line 1338
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->loadWithOverviewMode:Ljava/lang/Boolean;

    .line 1339
    .line 1340
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->loadWithOverviewMode:Ljava/lang/Boolean;

    .line 1341
    .line 1342
    if-eq v1, v4, :cond_38

    .line 1343
    .line 1344
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1345
    .line 1346
    .line 1347
    move-result v1

    .line 1348
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1349
    .line 1350
    .line 1351
    :cond_38
    const-string v1, "loadsImagesAutomatically"

    .line 1352
    .line 1353
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v1

    .line 1357
    if-eqz v1, :cond_39

    .line 1358
    .line 1359
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1360
    .line 1361
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->loadsImagesAutomatically:Ljava/lang/Boolean;

    .line 1362
    .line 1363
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->loadsImagesAutomatically:Ljava/lang/Boolean;

    .line 1364
    .line 1365
    if-eq v1, v4, :cond_39

    .line 1366
    .line 1367
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1368
    .line 1369
    .line 1370
    move-result v1

    .line 1371
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 1372
    .line 1373
    .line 1374
    :cond_39
    const-string v1, "minimumFontSize"

    .line 1375
    .line 1376
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v1

    .line 1380
    if-eqz v1, :cond_3a

    .line 1381
    .line 1382
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1383
    .line 1384
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumFontSize:Ljava/lang/Integer;

    .line 1385
    .line 1386
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumFontSize:Ljava/lang/Integer;

    .line 1387
    .line 1388
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v1

    .line 1392
    if-nez v1, :cond_3a

    .line 1393
    .line 1394
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumFontSize:Ljava/lang/Integer;

    .line 1395
    .line 1396
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1397
    .line 1398
    .line 1399
    move-result v1

    .line 1400
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 1401
    .line 1402
    .line 1403
    :cond_3a
    const-string v1, "minimumLogicalFontSize"

    .line 1404
    .line 1405
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v1

    .line 1409
    if-eqz v1, :cond_3b

    .line 1410
    .line 1411
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1412
    .line 1413
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumLogicalFontSize:Ljava/lang/Integer;

    .line 1414
    .line 1415
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumLogicalFontSize:Ljava/lang/Integer;

    .line 1416
    .line 1417
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v1

    .line 1421
    if-nez v1, :cond_3b

    .line 1422
    .line 1423
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->minimumLogicalFontSize:Ljava/lang/Integer;

    .line 1424
    .line 1425
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1426
    .line 1427
    .line 1428
    move-result v1

    .line 1429
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 1430
    .line 1431
    .line 1432
    :cond_3b
    const-string v1, "initialScale"

    .line 1433
    .line 1434
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v1

    .line 1438
    if-eqz v1, :cond_3c

    .line 1439
    .line 1440
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1441
    .line 1442
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->initialScale:Ljava/lang/Integer;

    .line 1443
    .line 1444
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->initialScale:Ljava/lang/Integer;

    .line 1445
    .line 1446
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v1

    .line 1450
    if-nez v1, :cond_3c

    .line 1451
    .line 1452
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->initialScale:Ljava/lang/Integer;

    .line 1453
    .line 1454
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1455
    .line 1456
    .line 1457
    move-result v1

    .line 1458
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 1459
    .line 1460
    .line 1461
    :cond_3c
    const-string v1, "needInitialFocus"

    .line 1462
    .line 1463
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v1

    .line 1467
    if-eqz v1, :cond_3d

    .line 1468
    .line 1469
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1470
    .line 1471
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->needInitialFocus:Ljava/lang/Boolean;

    .line 1472
    .line 1473
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->needInitialFocus:Ljava/lang/Boolean;

    .line 1474
    .line 1475
    if-eq v1, v4, :cond_3d

    .line 1476
    .line 1477
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1478
    .line 1479
    .line 1480
    move-result v1

    .line 1481
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 1482
    .line 1483
    .line 1484
    :cond_3d
    const-string v1, "offscreenPreRaster"

    .line 1485
    .line 1486
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v1

    .line 1490
    if-eqz v1, :cond_3f

    .line 1491
    .line 1492
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1493
    .line 1494
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->offscreenPreRaster:Ljava/lang/Boolean;

    .line 1495
    .line 1496
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->offscreenPreRaster:Ljava/lang/Boolean;

    .line 1497
    .line 1498
    if-eq v1, v4, :cond_3f

    .line 1499
    .line 1500
    const-string v1, "OFF_SCREEN_PRERASTER"

    .line 1501
    .line 1502
    invoke-static {v1}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v1

    .line 1506
    if-eqz v1, :cond_3e

    .line 1507
    .line 1508
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->offscreenPreRaster:Ljava/lang/Boolean;

    .line 1509
    .line 1510
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1511
    .line 1512
    .line 1513
    move-result v1

    .line 1514
    invoke-static {v0, v1}, Lo1/q;->o(Landroid/webkit/WebSettings;Z)V

    .line 1515
    .line 1516
    .line 1517
    goto :goto_8

    .line 1518
    :cond_3e
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->offscreenPreRaster:Ljava/lang/Boolean;

    .line 1519
    .line 1520
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1521
    .line 1522
    .line 1523
    move-result v1

    .line 1524
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    .line 1525
    .line 1526
    .line 1527
    :cond_3f
    :goto_8
    const-string v1, "sansSerifFontFamily"

    .line 1528
    .line 1529
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v1

    .line 1533
    if-eqz v1, :cond_40

    .line 1534
    .line 1535
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1536
    .line 1537
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->sansSerifFontFamily:Ljava/lang/String;

    .line 1538
    .line 1539
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->sansSerifFontFamily:Ljava/lang/String;

    .line 1540
    .line 1541
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v1

    .line 1545
    if-nez v1, :cond_40

    .line 1546
    .line 1547
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->sansSerifFontFamily:Ljava/lang/String;

    .line 1548
    .line 1549
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    :cond_40
    const-string v1, "serifFontFamily"

    .line 1553
    .line 1554
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    if-eqz v1, :cond_41

    .line 1559
    .line 1560
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1561
    .line 1562
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->serifFontFamily:Ljava/lang/String;

    .line 1563
    .line 1564
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->serifFontFamily:Ljava/lang/String;

    .line 1565
    .line 1566
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v1

    .line 1570
    if-nez v1, :cond_41

    .line 1571
    .line 1572
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->serifFontFamily:Ljava/lang/String;

    .line 1573
    .line 1574
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 1575
    .line 1576
    .line 1577
    :cond_41
    const-string v1, "standardFontFamily"

    .line 1578
    .line 1579
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v1

    .line 1583
    if-eqz v1, :cond_42

    .line 1584
    .line 1585
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1586
    .line 1587
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->standardFontFamily:Ljava/lang/String;

    .line 1588
    .line 1589
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->standardFontFamily:Ljava/lang/String;

    .line 1590
    .line 1591
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1592
    .line 1593
    .line 1594
    move-result v1

    .line 1595
    if-nez v1, :cond_42

    .line 1596
    .line 1597
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->standardFontFamily:Ljava/lang/String;

    .line 1598
    .line 1599
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 1600
    .line 1601
    .line 1602
    :cond_42
    const-string v1, "preferredContentMode"

    .line 1603
    .line 1604
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v1

    .line 1608
    const/4 v4, 0x2

    .line 1609
    const/4 v7, 0x1

    .line 1610
    if-eqz v1, :cond_45

    .line 1611
    .line 1612
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1613
    .line 1614
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->preferredContentMode:Ljava/lang/Integer;

    .line 1615
    .line 1616
    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->preferredContentMode:Ljava/lang/Integer;

    .line 1617
    .line 1618
    invoke-virtual {v1, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v1

    .line 1622
    if-nez v1, :cond_45

    .line 1623
    .line 1624
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$21;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$types$PreferredContentModeOptionType:[I

    .line 1625
    .line 1626
    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->preferredContentMode:Ljava/lang/Integer;

    .line 1627
    .line 1628
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1629
    .line 1630
    .line 1631
    move-result v8

    .line 1632
    invoke-static {v8}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->fromValue(I)Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v8

    .line 1636
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 1637
    .line 1638
    .line 1639
    move-result v8

    .line 1640
    aget v1, v1, v8

    .line 1641
    .line 1642
    if-eq v1, v7, :cond_44

    .line 1643
    .line 1644
    if-eq v1, v4, :cond_43

    .line 1645
    .line 1646
    const/4 v8, 0x3

    .line 1647
    if-eq v1, v8, :cond_43

    .line 1648
    .line 1649
    goto :goto_9

    .line 1650
    :cond_43
    invoke-virtual {p0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setDesktopMode(Z)V

    .line 1651
    .line 1652
    .line 1653
    goto :goto_9

    .line 1654
    :cond_44
    invoke-virtual {p0, v7}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setDesktopMode(Z)V

    .line 1655
    .line 1656
    .line 1657
    :cond_45
    :goto_9
    const-string v1, "saveFormData"

    .line 1658
    .line 1659
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v1

    .line 1663
    if-eqz v1, :cond_46

    .line 1664
    .line 1665
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1666
    .line 1667
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->saveFormData:Ljava/lang/Boolean;

    .line 1668
    .line 1669
    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->saveFormData:Ljava/lang/Boolean;

    .line 1670
    .line 1671
    if-eq v1, v8, :cond_46

    .line 1672
    .line 1673
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1674
    .line 1675
    .line 1676
    move-result v1

    .line 1677
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1678
    .line 1679
    .line 1680
    :cond_46
    const-string v1, "incognito"

    .line 1681
    .line 1682
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v1

    .line 1686
    if-eqz v1, :cond_47

    .line 1687
    .line 1688
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1689
    .line 1690
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->incognito:Ljava/lang/Boolean;

    .line 1691
    .line 1692
    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->incognito:Ljava/lang/Boolean;

    .line 1693
    .line 1694
    if-eq v1, v8, :cond_47

    .line 1695
    .line 1696
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1697
    .line 1698
    .line 1699
    move-result v1

    .line 1700
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setIncognito(Z)V

    .line 1701
    .line 1702
    .line 1703
    :cond_47
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1704
    .line 1705
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    .line 1706
    .line 1707
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1708
    .line 1709
    .line 1710
    move-result v1

    .line 1711
    if-eqz v1, :cond_49

    .line 1712
    .line 1713
    const-string v1, "hardwareAcceleration"

    .line 1714
    .line 1715
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v1

    .line 1719
    if-eqz v1, :cond_49

    .line 1720
    .line 1721
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1722
    .line 1723
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->hardwareAcceleration:Ljava/lang/Boolean;

    .line 1724
    .line 1725
    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->hardwareAcceleration:Ljava/lang/Boolean;

    .line 1726
    .line 1727
    if-eq v1, v8, :cond_49

    .line 1728
    .line 1729
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1730
    .line 1731
    .line 1732
    move-result v1

    .line 1733
    if-eqz v1, :cond_48

    .line 1734
    .line 1735
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1736
    .line 1737
    .line 1738
    goto :goto_a

    .line 1739
    :cond_48
    invoke-virtual {p0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1740
    .line 1741
    .line 1742
    :cond_49
    :goto_a
    const-string v1, "regexToCancelSubFramesLoading"

    .line 1743
    .line 1744
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v1

    .line 1748
    if-eqz v1, :cond_4c

    .line 1749
    .line 1750
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1751
    .line 1752
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->regexToCancelSubFramesLoading:Ljava/lang/String;

    .line 1753
    .line 1754
    if-eqz v1, :cond_4a

    .line 1755
    .line 1756
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->regexToCancelSubFramesLoading:Ljava/lang/String;

    .line 1757
    .line 1758
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1759
    .line 1760
    .line 1761
    move-result v1

    .line 1762
    if-nez v1, :cond_4c

    .line 1763
    .line 1764
    :cond_4a
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->regexToCancelSubFramesLoading:Ljava/lang/String;

    .line 1765
    .line 1766
    if-nez v1, :cond_4b

    .line 1767
    .line 1768
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    .line 1769
    .line 1770
    goto :goto_b

    .line 1771
    :cond_4b
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1772
    .line 1773
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->regexToCancelSubFramesLoading:Ljava/lang/String;

    .line 1774
    .line 1775
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v1

    .line 1779
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    .line 1780
    .line 1781
    :cond_4c
    :goto_b
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->contentBlockers:Ljava/util/List;

    .line 1782
    .line 1783
    if-eqz v1, :cond_4d

    .line 1784
    .line 1785
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    .line 1786
    .line 1787
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v1

    .line 1791
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1792
    .line 1793
    .line 1794
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->contentBlockers:Ljava/util/List;

    .line 1795
    .line 1796
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v1

    .line 1800
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1801
    .line 1802
    .line 1803
    move-result v4

    .line 1804
    if-eqz v4, :cond_4d

    .line 1805
    .line 1806
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v4

    .line 1810
    check-cast v4, Ljava/util/Map;

    .line 1811
    .line 1812
    const-string v5, "trigger"

    .line 1813
    .line 1814
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v5

    .line 1818
    check-cast v5, Ljava/util/Map;

    .line 1819
    .line 1820
    invoke-static {v5}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v5

    .line 1824
    const-string v8, "action"

    .line 1825
    .line 1826
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v4

    .line 1830
    check-cast v4, Ljava/util/Map;

    .line 1831
    .line 1832
    invoke-static {v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v4

    .line 1836
    iget-object v8, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;

    .line 1837
    .line 1838
    invoke-virtual {v8}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerHandler;->getRuleList()Ljava/util/List;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v8

    .line 1842
    new-instance v9, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;

    .line 1843
    .line 1844
    invoke-direct {v9, v5, v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;)V

    .line 1845
    .line 1846
    .line 1847
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1848
    .line 1849
    .line 1850
    goto :goto_c

    .line 1851
    :cond_4d
    const-string v1, "scrollBarStyle"

    .line 1852
    .line 1853
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v1

    .line 1857
    if-eqz v1, :cond_4e

    .line 1858
    .line 1859
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1860
    .line 1861
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarStyle:Ljava/lang/Integer;

    .line 1862
    .line 1863
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarStyle:Ljava/lang/Integer;

    .line 1864
    .line 1865
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1866
    .line 1867
    .line 1868
    move-result v1

    .line 1869
    if-nez v1, :cond_4e

    .line 1870
    .line 1871
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarStyle:Ljava/lang/Integer;

    .line 1872
    .line 1873
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1874
    .line 1875
    .line 1876
    move-result v1

    .line 1877
    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 1878
    .line 1879
    .line 1880
    :cond_4e
    const-string v1, "scrollBarDefaultDelayBeforeFade"

    .line 1881
    .line 1882
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v1

    .line 1886
    if-eqz v1, :cond_50

    .line 1887
    .line 1888
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1889
    .line 1890
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 1891
    .line 1892
    if-eqz v1, :cond_4f

    .line 1893
    .line 1894
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 1895
    .line 1896
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1897
    .line 1898
    .line 1899
    move-result v1

    .line 1900
    if-nez v1, :cond_50

    .line 1901
    .line 1902
    :cond_4f
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 1903
    .line 1904
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1905
    .line 1906
    .line 1907
    move-result v1

    .line 1908
    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 1909
    .line 1910
    .line 1911
    :cond_50
    const-string v1, "scrollbarFadingEnabled"

    .line 1912
    .line 1913
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v1

    .line 1917
    if-eqz v1, :cond_51

    .line 1918
    .line 1919
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1920
    .line 1921
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    .line 1922
    .line 1923
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    .line 1924
    .line 1925
    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1926
    .line 1927
    .line 1928
    move-result v1

    .line 1929
    if-nez v1, :cond_51

    .line 1930
    .line 1931
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    .line 1932
    .line 1933
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1934
    .line 1935
    .line 1936
    move-result v1

    .line 1937
    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 1938
    .line 1939
    .line 1940
    :cond_51
    const-string v1, "scrollBarFadeDuration"

    .line 1941
    .line 1942
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v1

    .line 1946
    if-eqz v1, :cond_53

    .line 1947
    .line 1948
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1949
    .line 1950
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 1951
    .line 1952
    if-eqz v1, :cond_52

    .line 1953
    .line 1954
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 1955
    .line 1956
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1957
    .line 1958
    .line 1959
    move-result v1

    .line 1960
    if-nez v1, :cond_53

    .line 1961
    .line 1962
    :cond_52
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 1963
    .line 1964
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1965
    .line 1966
    .line 1967
    move-result v1

    .line 1968
    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollBarFadeDuration(I)V

    .line 1969
    .line 1970
    .line 1971
    :cond_53
    const-string v1, "verticalScrollbarPosition"

    .line 1972
    .line 1973
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v1

    .line 1977
    if-eqz v1, :cond_54

    .line 1978
    .line 1979
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1980
    .line 1981
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarPosition:Ljava/lang/Integer;

    .line 1982
    .line 1983
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarPosition:Ljava/lang/Integer;

    .line 1984
    .line 1985
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v1

    .line 1989
    if-nez v1, :cond_54

    .line 1990
    .line 1991
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarPosition:Ljava/lang/Integer;

    .line 1992
    .line 1993
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1994
    .line 1995
    .line 1996
    move-result v1

    .line 1997
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 1998
    .line 1999
    .line 2000
    :cond_54
    const-string v1, "disableVerticalScroll"

    .line 2001
    .line 2002
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v1

    .line 2006
    if-eqz v1, :cond_56

    .line 2007
    .line 2008
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2009
    .line 2010
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableVerticalScroll:Ljava/lang/Boolean;

    .line 2011
    .line 2012
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableVerticalScroll:Ljava/lang/Boolean;

    .line 2013
    .line 2014
    if-eq v1, v4, :cond_56

    .line 2015
    .line 2016
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2017
    .line 2018
    .line 2019
    move-result v1

    .line 2020
    if-nez v1, :cond_55

    .line 2021
    .line 2022
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    .line 2023
    .line 2024
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2025
    .line 2026
    .line 2027
    move-result v1

    .line 2028
    if-eqz v1, :cond_55

    .line 2029
    .line 2030
    move v1, v7

    .line 2031
    goto :goto_d

    .line 2032
    :cond_55
    move v1, v3

    .line 2033
    :goto_d
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 2034
    .line 2035
    .line 2036
    :cond_56
    const-string v1, "disableHorizontalScroll"

    .line 2037
    .line 2038
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v1

    .line 2042
    if-eqz v1, :cond_58

    .line 2043
    .line 2044
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2045
    .line 2046
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableHorizontalScroll:Ljava/lang/Boolean;

    .line 2047
    .line 2048
    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableHorizontalScroll:Ljava/lang/Boolean;

    .line 2049
    .line 2050
    if-eq v1, v4, :cond_58

    .line 2051
    .line 2052
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2053
    .line 2054
    .line 2055
    move-result v1

    .line 2056
    if-nez v1, :cond_57

    .line 2057
    .line 2058
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    .line 2059
    .line 2060
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2061
    .line 2062
    .line 2063
    move-result v1

    .line 2064
    if-eqz v1, :cond_57

    .line 2065
    .line 2066
    move v3, v7

    .line 2067
    :cond_57
    invoke-virtual {p0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 2068
    .line 2069
    .line 2070
    :cond_58
    const-string v1, "overScrollMode"

    .line 2071
    .line 2072
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v1

    .line 2076
    if-eqz v1, :cond_59

    .line 2077
    .line 2078
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2079
    .line 2080
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->overScrollMode:Ljava/lang/Integer;

    .line 2081
    .line 2082
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->overScrollMode:Ljava/lang/Integer;

    .line 2083
    .line 2084
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 2085
    .line 2086
    .line 2087
    move-result v1

    .line 2088
    if-nez v1, :cond_59

    .line 2089
    .line 2090
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->overScrollMode:Ljava/lang/Integer;

    .line 2091
    .line 2092
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2093
    .line 2094
    .line 2095
    move-result v1

    .line 2096
    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2097
    .line 2098
    .line 2099
    :cond_59
    const-string v1, "networkAvailable"

    .line 2100
    .line 2101
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v1

    .line 2105
    if-eqz v1, :cond_5a

    .line 2106
    .line 2107
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2108
    .line 2109
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->networkAvailable:Ljava/lang/Boolean;

    .line 2110
    .line 2111
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->networkAvailable:Ljava/lang/Boolean;

    .line 2112
    .line 2113
    if-eq v1, v3, :cond_5a

    .line 2114
    .line 2115
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2116
    .line 2117
    .line 2118
    move-result v1

    .line 2119
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 2120
    .line 2121
    .line 2122
    :cond_5a
    const-string v1, "rendererPriorityPolicy"

    .line 2123
    .line 2124
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v1

    .line 2128
    if-eqz v1, :cond_5c

    .line 2129
    .line 2130
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2131
    .line 2132
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 2133
    .line 2134
    const-string v3, "waivedWhenNotVisible"

    .line 2135
    .line 2136
    const-string v4, "rendererRequestedPriority"

    .line 2137
    .line 2138
    if-eqz v1, :cond_5b

    .line 2139
    .line 2140
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v1

    .line 2144
    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 2145
    .line 2146
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v5

    .line 2150
    if-ne v1, v5, :cond_5b

    .line 2151
    .line 2152
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2153
    .line 2154
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 2155
    .line 2156
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v1

    .line 2160
    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 2161
    .line 2162
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v5

    .line 2166
    if-eq v1, v5, :cond_5c

    .line 2167
    .line 2168
    :cond_5b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2169
    .line 2170
    if-lt v1, v2, :cond_5c

    .line 2171
    .line 2172
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 2173
    .line 2174
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    .line 2176
    .line 2177
    move-result-object v1

    .line 2178
    check-cast v1, Ljava/lang/Integer;

    .line 2179
    .line 2180
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2181
    .line 2182
    .line 2183
    move-result v1

    .line 2184
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->rendererPriorityPolicy:Ljava/util/Map;

    .line 2185
    .line 2186
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v2

    .line 2190
    check-cast v2, Ljava/lang/Boolean;

    .line 2191
    .line 2192
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2193
    .line 2194
    .line 2195
    move-result v2

    .line 2196
    invoke-static {p0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/e;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;IZ)V

    .line 2197
    .line 2198
    .line 2199
    :cond_5c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2200
    .line 2201
    if-lt v1, v6, :cond_60

    .line 2202
    .line 2203
    const-string v2, "verticalScrollbarThumbColor"

    .line 2204
    .line 2205
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v2

    .line 2209
    if-eqz v2, :cond_5d

    .line 2210
    .line 2211
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2212
    .line 2213
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarThumbColor:Ljava/lang/String;

    .line 2214
    .line 2215
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarThumbColor:Ljava/lang/String;

    .line 2216
    .line 2217
    invoke-static {v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2218
    .line 2219
    .line 2220
    move-result v2

    .line 2221
    if-nez v2, :cond_5d

    .line 2222
    .line 2223
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 2224
    .line 2225
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarThumbColor:Ljava/lang/String;

    .line 2226
    .line 2227
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2228
    .line 2229
    .line 2230
    move-result v3

    .line 2231
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2232
    .line 2233
    .line 2234
    invoke-static {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/a;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 2235
    .line 2236
    .line 2237
    :cond_5d
    const-string v2, "verticalScrollbarTrackColor"

    .line 2238
    .line 2239
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v2

    .line 2243
    if-eqz v2, :cond_5e

    .line 2244
    .line 2245
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2246
    .line 2247
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarTrackColor:Ljava/lang/String;

    .line 2248
    .line 2249
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarTrackColor:Ljava/lang/String;

    .line 2250
    .line 2251
    invoke-static {v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2252
    .line 2253
    .line 2254
    move-result v2

    .line 2255
    if-nez v2, :cond_5e

    .line 2256
    .line 2257
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 2258
    .line 2259
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->verticalScrollbarTrackColor:Ljava/lang/String;

    .line 2260
    .line 2261
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2262
    .line 2263
    .line 2264
    move-result v3

    .line 2265
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2266
    .line 2267
    .line 2268
    invoke-static {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/b;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 2269
    .line 2270
    .line 2271
    :cond_5e
    const-string v2, "horizontalScrollbarThumbColor"

    .line 2272
    .line 2273
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v2

    .line 2277
    if-eqz v2, :cond_5f

    .line 2278
    .line 2279
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2280
    .line 2281
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarThumbColor:Ljava/lang/String;

    .line 2282
    .line 2283
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarThumbColor:Ljava/lang/String;

    .line 2284
    .line 2285
    invoke-static {v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2286
    .line 2287
    .line 2288
    move-result v2

    .line 2289
    if-nez v2, :cond_5f

    .line 2290
    .line 2291
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 2292
    .line 2293
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarThumbColor:Ljava/lang/String;

    .line 2294
    .line 2295
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2296
    .line 2297
    .line 2298
    move-result v3

    .line 2299
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2300
    .line 2301
    .line 2302
    invoke-static {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/c;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 2303
    .line 2304
    .line 2305
    :cond_5f
    const-string v2, "horizontalScrollbarTrackColor"

    .line 2306
    .line 2307
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v2

    .line 2311
    if-eqz v2, :cond_60

    .line 2312
    .line 2313
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2314
    .line 2315
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarTrackColor:Ljava/lang/String;

    .line 2316
    .line 2317
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarTrackColor:Ljava/lang/String;

    .line 2318
    .line 2319
    invoke-static {v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2320
    .line 2321
    .line 2322
    move-result v2

    .line 2323
    if-nez v2, :cond_60

    .line 2324
    .line 2325
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 2326
    .line 2327
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->horizontalScrollbarTrackColor:Ljava/lang/String;

    .line 2328
    .line 2329
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2330
    .line 2331
    .line 2332
    move-result v3

    .line 2333
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2334
    .line 2335
    .line 2336
    invoke-static {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/d;->a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Landroid/graphics/drawable/Drawable;)V

    .line 2337
    .line 2338
    .line 2339
    :cond_60
    const-string v2, "algorithmicDarkeningAllowed"

    .line 2340
    .line 2341
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v2

    .line 2345
    if-eqz v2, :cond_61

    .line 2346
    .line 2347
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2348
    .line 2349
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->algorithmicDarkeningAllowed:Ljava/lang/Boolean;

    .line 2350
    .line 2351
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->algorithmicDarkeningAllowed:Ljava/lang/Boolean;

    .line 2352
    .line 2353
    invoke-static {v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2354
    .line 2355
    .line 2356
    move-result v2

    .line 2357
    if-nez v2, :cond_61

    .line 2358
    .line 2359
    const-string v2, "ALGORITHMIC_DARKENING"

    .line 2360
    .line 2361
    invoke-static {v2}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 2362
    .line 2363
    .line 2364
    move-result v2

    .line 2365
    if-eqz v2, :cond_61

    .line 2366
    .line 2367
    if-lt v1, v6, :cond_61

    .line 2368
    .line 2369
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->algorithmicDarkeningAllowed:Ljava/lang/Boolean;

    .line 2370
    .line 2371
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2372
    .line 2373
    .line 2374
    move-result v1

    .line 2375
    invoke-static {v0, v1}, Lo1/q;->j(Landroid/webkit/WebSettings;Z)V

    .line 2376
    .line 2377
    .line 2378
    :cond_61
    const-string v1, "enterpriseAuthenticationAppLinkPolicyEnabled"

    .line 2379
    .line 2380
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v1

    .line 2384
    if-eqz v1, :cond_62

    .line 2385
    .line 2386
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2387
    .line 2388
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->enterpriseAuthenticationAppLinkPolicyEnabled:Ljava/lang/Boolean;

    .line 2389
    .line 2390
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->enterpriseAuthenticationAppLinkPolicyEnabled:Ljava/lang/Boolean;

    .line 2391
    .line 2392
    invoke-static {v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2393
    .line 2394
    .line 2395
    move-result v1

    .line 2396
    if-nez v1, :cond_62

    .line 2397
    .line 2398
    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    .line 2399
    .line 2400
    invoke-static {v1}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 2401
    .line 2402
    .line 2403
    move-result v1

    .line 2404
    if-eqz v1, :cond_62

    .line 2405
    .line 2406
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->enterpriseAuthenticationAppLinkPolicyEnabled:Ljava/lang/Boolean;

    .line 2407
    .line 2408
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2409
    .line 2410
    .line 2411
    move-result v1

    .line 2412
    invoke-static {v0, v1}, Lo1/q;->l(Landroid/webkit/WebSettings;Z)V

    .line 2413
    .line 2414
    .line 2415
    :cond_62
    const-string v1, "requestedWithHeaderOriginAllowList"

    .line 2416
    .line 2417
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    .line 2419
    .line 2420
    move-result-object p2

    .line 2421
    if-eqz p2, :cond_63

    .line 2422
    .line 2423
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2424
    .line 2425
    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->requestedWithHeaderOriginAllowList:Ljava/util/Set;

    .line 2426
    .line 2427
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->requestedWithHeaderOriginAllowList:Ljava/util/Set;

    .line 2428
    .line 2429
    invoke-static {p2, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2430
    .line 2431
    .line 2432
    move-result p2

    .line 2433
    if-nez p2, :cond_63

    .line 2434
    .line 2435
    const-string p2, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    .line 2436
    .line 2437
    invoke-static {p2}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 2438
    .line 2439
    .line 2440
    move-result p2

    .line 2441
    if-eqz p2, :cond_63

    .line 2442
    .line 2443
    iget-object p2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->requestedWithHeaderOriginAllowList:Ljava/util/Set;

    .line 2444
    .line 2445
    invoke-static {v0, p2}, Lo1/q;->p(Landroid/webkit/WebSettings;Ljava/util/Set;)V

    .line 2446
    .line 2447
    .line 2448
    :cond_63
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 2449
    .line 2450
    if-eqz p2, :cond_65

    .line 2451
    .line 2452
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webViewAssetLoaderExt:Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 2453
    .line 2454
    if-eqz p2, :cond_64

    .line 2455
    .line 2456
    invoke-virtual {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->dispose()V

    .line 2457
    .line 2458
    .line 2459
    :cond_64
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2460
    .line 2461
    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->webViewAssetLoader:Ljava/util/Map;

    .line 2462
    .line 2463
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 2464
    .line 2465
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v1

    .line 2469
    invoke-static {p2, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->fromMap(Ljava/util/Map;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 2470
    .line 2471
    .line 2472
    move-result-object p2

    .line 2473
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webViewAssetLoaderExt:Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 2474
    .line 2475
    :cond_65
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 2476
    .line 2477
    return-void
.end method

.method public setUserContentController(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->userContentController:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 2
    .line 3
    return-void
.end method

.method public setWebMessageChannels(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->webMessageChannels:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableContextMenu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->useHybridComposition:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->customSettings:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->disableContextMenu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->contextMenu:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public takeScreenshot(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->getPixelDensity(Landroid/content/Context;)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->mainLooperHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Ljava/util/Map;FLio/flutter/plugin/common/MethodChannel$Result;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
