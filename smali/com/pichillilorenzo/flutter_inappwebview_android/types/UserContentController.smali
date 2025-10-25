.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview_android/types/Disposable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field private static final CONTENT_WORLDS_GENERATOR_JS_SOURCE:Ljava/lang/String; = "(function() {  var interval = setInterval(function() {    if (document.body == null) {return;}    var contentWorldNames = [$IN_APP_WEBVIEW_CONTENT_WORLD_NAME_ARRAY];    for (var contentWorldName of contentWorldNames) {      var iframeId = \'flutter_inappwebview_\' + contentWorldName;      var iframe = document.getElementById(iframeId);      if (iframe == null) {        iframe = document.createElement(\'iframe\');        iframe.id = iframeId;        iframe.style = \'display: none; z-index: 0; position: absolute; width: 0px; height: 0px\';        document.body.append(iframe);      }      if (iframe.contentWindow.document.getElementById(\'flutter_inappwebview_plugin_scripts\') == null) {        var script = iframe.contentWindow.document.createElement(\'script\');        script.id = \'flutter_inappwebview_plugin_scripts\';        script.innerHTML = $IN_APP_WEBVIEW_JSON_SOURCE_ENCODED;        iframe.contentWindow.document.body.append(script);      }    }    clearInterval(interval);  });})();"

.field private static final CONTENT_WORLD_WRAPPER_JS_SOURCE:Ljava/lang/String; = "(function() {  var interval = setInterval(function() {    if (document.body == null) {return;}    var iframeId = \'flutter_inappwebview_$IN_APP_WEBVIEW_CONTENT_WORLD_NAME\';    var iframe = document.getElementById(iframeId);    if (iframe == null) {      iframe = document.createElement(\'iframe\');      iframe.id = iframeId;      iframe.style = \'display: none; z-index: 0; position: absolute; width: 0px; height: 0px\';      document.body.append(iframe);    }    if (iframe.contentWindow.document.querySelector(\'#flutter_inappwebview_plugin_scripts\') == null) {      return;    }    var script = iframe.contentWindow.document.createElement(\'script\');    script.innerHTML = $IN_APP_WEBVIEW_JSON_SOURCE_ENCODED;    iframe.contentWindow.document.body.append(script);    clearInterval(interval);  });})();"

.field private static final DOCUMENT_READY_WRAPPER_JS_SOURCE:Ljava/lang/String; = "if (document.readyState === \'interactive\' || document.readyState === \'complete\') {   $IN_APP_WEBVIEW_PLACEHOLDER_VALUE}"

.field protected static final LOG_TAG:Ljava/lang/String; = "UserContentController"

.field private static final USER_SCRIPTS_AT_DOCUMENT_END_WRAPPER_JS_SOURCE:Ljava/lang/String; = "if (window.flutter_inappwebview != null && (window.flutter_inappwebview._userScriptsAtDocumentEndLoaded == null || !window.flutter_inappwebview._userScriptsAtDocumentEndLoaded)) {  window.flutter_inappwebview._userScriptsAtDocumentEndLoaded = true;  $IN_APP_WEBVIEW_PLACEHOLDER_VALUE}"

.field private static final USER_SCRIPTS_AT_DOCUMENT_START_WRAPPER_JS_SOURCE:Ljava/lang/String; = "if (window.flutter_inappwebview != null && (window.flutter_inappwebview._userScriptsAtDocumentStartLoaded == null || !window.flutter_inappwebview._userScriptsAtDocumentStartLoaded)) {  window.flutter_inappwebview._userScriptsAtDocumentStartLoaded = true;  $IN_APP_WEBVIEW_PLACEHOLDER_VALUE}"


# instance fields
.field private final contentWorlds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;",
            ">;"
        }
    .end annotation
.end field

.field private contentWorldsCreatorScript:Lo1/g;

.field private final pluginScripts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scriptHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;",
            "Lo1/g;",
            ">;"
        }
    .end annotation
.end field

.field private final userOnlyScripts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;",
            ">;>;"
        }
    .end annotation
.end field

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->webView:Landroid/webkit/WebView;

    .line 33
    .line 34
    return-void
.end method

.method public static escapeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static escapeContentWorldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "\\\\\'"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private updateContentWorldsCreatorScript()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generateContentWorldsCreatorCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "DOCUMENT_START_SCRIPT"

    .line 6
    .line 7
    invoke-static {v1}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorldsCreatorScript:Lo1/g;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Lo1/g;->remove()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->webView:Landroid/webkit/WebView;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$4;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController$4;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Lo1/s;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Lo1/g;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorldsCreatorScript:Lo1/g;

    .line 40
    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->updateContentWorldsCreatorScript()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->webView:Landroid/webkit/WebView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getInjectionTime()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    const-string v0, "DOCUMENT_START_SCRIPT"

    .line 28
    .line 29
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->webView:Landroid/webkit/WebView;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getSource()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->wrapSourceCodeInContentWorld(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getAllowedOriginRules()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lo1/s;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Lo1/g;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getInjectionTime()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method public addPluginScripts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public addUserOnlyScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->updateContentWorldsCreatorScript()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->webView:Landroid/webkit/WebView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getInjectionTime()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    const-string v0, "DOCUMENT_START_SCRIPT"

    .line 28
    .line 29
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->webView:Landroid/webkit/WebView;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getSource()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->wrapSourceCodeInContentWorld(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getAllowedOriginRules()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lo1/s;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Lo1/g;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getInjectionTime()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method public addUserOnlyScripts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addUserOnlyScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public containsPluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptAsList()Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public containsPluginScriptByGroupName(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptAsList()Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getGroupName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public containsUserOnlyScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getUserOnlyScriptAsList()Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public containsUserOnlyScriptByGroupName(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getUserOnlyScriptAsList()Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getGroupName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    const-string v0, "DOCUMENT_START_SCRIPT"

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
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorldsCreatorScript:Lo1/g;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lo1/g;->remove()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removeAllUserOnlyScripts()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removeAllPluginScripts()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->webView:Landroid/webkit/WebView;

    .line 24
    .line 25
    return-void
.end method

.method public generateCodeForDocumentStart()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generatePluginScriptsCodeAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generateContentWorldsCreatorCode()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generateUserOnlyScriptsCodeAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "if (window.flutter_inappwebview != null && (window.flutter_inappwebview._userScriptsAtDocumentStartLoaded == null || !window.flutter_inappwebview._userScriptsAtDocumentStartLoaded)) {  window.flutter_inappwebview._userScriptsAtDocumentStartLoaded = true;  $IN_APP_WEBVIEW_PLACEHOLDER_VALUE}"

    .line 63
    .line 64
    const-string v2, "$IN_APP_WEBVIEW_PLACEHOLDER_VALUE"

    .line 65
    .line 66
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public generateCodeForScriptEvaluation(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p2, :cond_2

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
    if-nez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptsRequiredInAllContentWorlds()Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getSource()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "\'"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->escapeContentWorldName(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "(function() {  var interval = setInterval(function() {    if (document.body == null) {return;}    var contentWorldNames = [$IN_APP_WEBVIEW_CONTENT_WORLD_NAME_ARRAY];    for (var contentWorldName of contentWorldNames) {      var iframeId = \'flutter_inappwebview_\' + contentWorldName;      var iframe = document.getElementById(iframeId);      if (iframe == null) {        iframe = document.createElement(\'iframe\');        iframe.id = iframeId;        iframe.style = \'display: none; z-index: 0; position: absolute; width: 0px; height: 0px\';        document.body.append(iframe);      }      if (iframe.contentWindow.document.getElementById(\'flutter_inappwebview_plugin_scripts\') == null) {        var script = iframe.contentWindow.document.createElement(\'script\');        script.id = \'flutter_inappwebview_plugin_scripts\';        script.innerHTML = $IN_APP_WEBVIEW_JSON_SOURCE_ENCODED;        iframe.contentWindow.document.body.append(script);      }    }    clearInterval(interval);  });})();"

    .line 91
    .line 92
    const-string v4, "$IN_APP_WEBVIEW_CONTENT_WORLD_NAME_ARRAY"

    .line 93
    .line 94
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->escapeCode(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v3, "$IN_APP_WEBVIEW_JSON_SOURCE_ENCODED"

    .line 107
    .line 108
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ";"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->wrapSourceCodeInContentWorld(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :cond_2
    return-object p1
.end method

.method public generateContentWorldsCreatorCode()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptsRequiredInAllContentWorlds()Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getSource()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 68
    .line 69
    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->PAGE:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "\'"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->escapeContentWorldName(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const-string v2, ", "

    .line 111
    .line 112
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v2, "(function() {  var interval = setInterval(function() {    if (document.body == null) {return;}    var contentWorldNames = [$IN_APP_WEBVIEW_CONTENT_WORLD_NAME_ARRAY];    for (var contentWorldName of contentWorldNames) {      var iframeId = \'flutter_inappwebview_\' + contentWorldName;      var iframe = document.getElementById(iframeId);      if (iframe == null) {        iframe = document.createElement(\'iframe\');        iframe.id = iframeId;        iframe.style = \'display: none; z-index: 0; position: absolute; width: 0px; height: 0px\';        document.body.append(iframe);      }      if (iframe.contentWindow.document.getElementById(\'flutter_inappwebview_plugin_scripts\') == null) {        var script = iframe.contentWindow.document.createElement(\'script\');        script.id = \'flutter_inappwebview_plugin_scripts\';        script.innerHTML = $IN_APP_WEBVIEW_JSON_SOURCE_ENCODED;        iframe.contentWindow.document.body.append(script);      }    }    clearInterval(interval);  });})();"

    .line 117
    .line 118
    const-string v3, "$IN_APP_WEBVIEW_CONTENT_WORLD_NAME_ARRAY"

    .line 119
    .line 120
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->escapeCode(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v2, "$IN_APP_WEBVIEW_JSON_SOURCE_ENCODED"

    .line 133
    .line 134
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    return-object v0
.end method

.method public generatePluginScriptsCodeAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptsAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, ";"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getSource()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->wrapSourceCodeInContentWorld(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public generateUserOnlyScriptsCodeAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getUserOnlyScriptsAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, ";"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getSource()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->wrapSourceCodeInContentWorld(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public generateWrappedCodeForDocumentEnd()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_END:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 2
    .line 3
    const-string v1, "DOCUMENT_START_SCRIPT"

    .line 4
    .line 5
    invoke-static {v1}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generateCodeForDocumentStart()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generatePluginScriptsCodeAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generateUserOnlyScriptsCodeAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "if (window.flutter_inappwebview != null && (window.flutter_inappwebview._userScriptsAtDocumentEndLoaded == null || !window.flutter_inappwebview._userScriptsAtDocumentEndLoaded)) {  window.flutter_inappwebview._userScriptsAtDocumentEndLoaded = true;  $IN_APP_WEBVIEW_PLACEHOLDER_VALUE}"

    .line 71
    .line 72
    const-string v2, "$IN_APP_WEBVIEW_PLACEHOLDER_VALUE"

    .line 73
    .line 74
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public generateWrappedCodeForDocumentStart()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "$IN_APP_WEBVIEW_PLACEHOLDER_VALUE"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->generateCodeForDocumentStart()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "if (document.readyState === \'interactive\' || document.readyState === \'complete\') {   $IN_APP_WEBVIEW_PLACEHOLDER_VALUE}"

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getContentWorlds()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getPluginScriptAsList()Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method public getPluginScriptsAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getPluginScriptsRequiredInAllContentWorlds()Ljava/util/LinkedHashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptsAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;->isRequiredInAllContentWorlds()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method public getUserOnlyScriptAsList()Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method public getUserOnlyScriptsAt(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public removeAllPluginScripts()V
    .locals 3

    .line 1
    const-string v0, "DOCUMENT_START_SCRIPT"

    .line 2
    .line 3
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lo1/g;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Lo1/g;->remove()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 55
    .line 56
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 68
    .line 69
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_END:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public removeAllUserOnlyScripts()V
    .locals 3

    .line 1
    const-string v0, "DOCUMENT_START_SCRIPT"

    .line 2
    .line 3
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lo1/g;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Lo1/g;->remove()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 55
    .line 56
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_START:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 68
    .line 69
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;->AT_DOCUMENT_END:Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public removePluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z
    .locals 2

    .line 1
    const-string v0, "DOCUMENT_START_SCRIPT"

    .line 2
    .line 3
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lo1/g;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lo1/g;->remove()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->updateContentWorldsCreatorScript()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->pluginScripts:Ljava/util/Map;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getInjectionTime()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public removePluginScriptsByGroupName(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptAsList()Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getGroupName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removePluginScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public removeUserOnlyScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;)Z
    .locals 2

    .line 1
    const-string v0, "DOCUMENT_START_SCRIPT"

    .line 2
    .line 3
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lo1/g;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lo1/g;->remove()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->scriptHandlerMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->updateContentWorldsCreatorScript()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getInjectionTime()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public removeUserOnlyScriptAt(ILcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->userOnlyScripts:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removeUserOnlyScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public removeUserOnlyScriptsByGroupName(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getUserOnlyScriptAsList()Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getGroupName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removeUserOnlyScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public resetContentWorlds()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 7
    .line 8
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->PAGE:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getPluginScriptAsList()Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PluginScript;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->getUserOnlyScriptAsList()Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getContentWorld()Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->contentWorlds:Ljava/util/Set;

    .line 68
    .line 69
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    return-void
.end method

.method public wrapSourceCodeInContentWorld(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->PAGE:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->escapeContentWorldName(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "(function() {  var interval = setInterval(function() {    if (document.body == null) {return;}    var iframeId = \'flutter_inappwebview_$IN_APP_WEBVIEW_CONTENT_WORLD_NAME\';    var iframe = document.getElementById(iframeId);    if (iframe == null) {      iframe = document.createElement(\'iframe\');      iframe.id = iframeId;      iframe.style = \'display: none; z-index: 0; position: absolute; width: 0px; height: 0px\';      document.body.append(iframe);    }    if (iframe.contentWindow.document.querySelector(\'#flutter_inappwebview_plugin_scripts\') == null) {      return;    }    var script = iframe.contentWindow.document.createElement(\'script\');    script.innerHTML = $IN_APP_WEBVIEW_JSON_SOURCE_ENCODED;    iframe.contentWindow.document.body.append(script);    clearInterval(interval);  });})();"

    .line 21
    .line 22
    const-string v1, "$IN_APP_WEBVIEW_CONTENT_WORLD_NAME"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "$IN_APP_WEBVIEW_JSON_SOURCE_ENCODED"

    .line 29
    .line 30
    invoke-static {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->escapeCode(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :cond_1
    :goto_0
    return-object p2
.end method
