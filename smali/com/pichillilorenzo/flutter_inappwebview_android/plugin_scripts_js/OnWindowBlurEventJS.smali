.class public Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/OnWindowBlurEventJS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

.field public static final ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT_GROUP_NAME:Ljava/lang/String; = "IN_APP_WEBVIEW_ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT"

.field public static final ON_WINDOW_BLUR_EVENT_JS_SOURCE:Ljava/lang/String; = "(function(){  window.addEventListener(\'blur\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowBlur\');  });})();"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 2
    .line 3
    const-string v1, "IN_APP_WEBVIEW_ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT"

    .line 4
    .line 5
    const-string v2, "(function(){  window.addEventListener(\'blur\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowBlur\');  });})();"

    .line 6
    .line 7
    sget-object v3, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;ZLjava/util/Set;)V

    .line 14
    .line 15
    .line 16
    sput-object v7, Lcom/pichillilorenzo/flutter_inappwebview_android/plugin_scripts_js/OnWindowBlurEventJS;->ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
