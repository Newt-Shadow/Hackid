.class public Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

.field private javaScriptChannelHostApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;

.field private pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private webViewHostApi:Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/common/BinaryMessenger;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->lambda$setUp$1(Lio/flutter/plugin/common/BinaryMessenger;J)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->lambda$setUp$2()V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->lambda$setUp$0(Ljava/lang/Void;)V

    return-void
.end method

.method private static synthetic lambda$setUp$0(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$setUp$1(Lio/flutter/plugin/common/BinaryMessenger;J)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectFlutterApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lio/flutter/plugins/webviewflutter/w4;

    .line 11
    .line 12
    invoke-direct {p1}, Lio/flutter/plugins/webviewflutter/w4;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectFlutterApi;->dispose(Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectFlutterApi$Reply;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private synthetic lambda$setUp$2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugin/platform/PlatformViewRegistry;Landroid/content/Context;Lio/flutter/plugins/webviewflutter/FlutterAssetManager;)V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/x4;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/flutter/plugins/webviewflutter/x4;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->create(Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;)Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 11
    .line 12
    new-instance v0, Lio/flutter/plugins/webviewflutter/y4;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/y4;-><init>(Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$InstanceManagerHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$InstanceManagerHostApi;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lio/flutter/plugins/webviewflutter/FlutterViewFactory;

    .line 21
    .line 22
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lio/flutter/plugins/webviewflutter/FlutterViewFactory;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "plugins.flutter.io/webview"

    .line 28
    .line 29
    invoke-interface {p2, v1, v0}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 30
    .line 31
    .line 32
    new-instance p2, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;

    .line 33
    .line 34
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 35
    .line 36
    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewProxy;

    .line 37
    .line 38
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewProxy;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0, p1, v1, p3}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewProxy;Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->webViewHostApi:Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;

    .line 45
    .line 46
    new-instance p2, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;

    .line 47
    .line 48
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 49
    .line 50
    new-instance v1, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;

    .line 51
    .line 52
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;

    .line 56
    .line 57
    iget-object v3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 58
    .line 59
    invoke-direct {v2, p1, v3}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-direct {v3, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v0, v1, v2, v3}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;Landroid/os/Handler;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->javaScriptChannelHostApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;

    .line 75
    .line 76
    new-instance p2, Lio/flutter/plugins/webviewflutter/JavaObjectHostApiImpl;

    .line 77
    .line 78
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 79
    .line 80
    invoke-direct {p2, p3}, Lio/flutter/plugins/webviewflutter/JavaObjectHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->webViewHostApi:Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;

    .line 87
    .line 88
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->javaScriptChannelHostApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;

    .line 92
    .line 93
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;)V

    .line 94
    .line 95
    .line 96
    new-instance p2, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;

    .line 97
    .line 98
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 99
    .line 100
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;

    .line 101
    .line 102
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 106
    .line 107
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 108
    .line 109
    invoke-direct {v1, p1, v2}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p2, p3, v0, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;

    .line 119
    .line 120
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 121
    .line 122
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;

    .line 123
    .line 124
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v1, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 128
    .line 129
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 130
    .line 131
    invoke-direct {v1, p1, v2}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, p3, v0, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientHostApi;)V

    .line 138
    .line 139
    .line 140
    new-instance p2, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;

    .line 141
    .line 142
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 143
    .line 144
    new-instance v0, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;

    .line 145
    .line 146
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;

    .line 150
    .line 151
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 152
    .line 153
    invoke-direct {v1, p1, v2}, Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p2, p3, v0, v1}, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerHostApi;)V

    .line 160
    .line 161
    .line 162
    new-instance p2, Lio/flutter/plugins/webviewflutter/WebSettingsHostApiImpl;

    .line 163
    .line 164
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 165
    .line 166
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebSettingsHostApiImpl$WebSettingsCreator;

    .line 167
    .line 168
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/WebSettingsHostApiImpl$WebSettingsCreator;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-direct {p2, p3, v0}, Lio/flutter/plugins/webviewflutter/WebSettingsHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebSettingsHostApiImpl$WebSettingsCreator;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebSettingsHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebSettingsHostApi;)V

    .line 175
    .line 176
    .line 177
    new-instance p2, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerHostApiImpl;

    .line 178
    .line 179
    invoke-direct {p2, p4}, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/FlutterAssetManager;)V

    .line 180
    .line 181
    .line 182
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;)V

    .line 183
    .line 184
    .line 185
    new-instance p2, Lio/flutter/plugins/webviewflutter/CookieManagerHostApiImpl;

    .line 186
    .line 187
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 188
    .line 189
    invoke-direct {p2, p1, p3}, Lio/flutter/plugins/webviewflutter/CookieManagerHostApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CookieManagerHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CookieManagerHostApi;)V

    .line 193
    .line 194
    .line 195
    new-instance p2, Lio/flutter/plugins/webviewflutter/WebStorageHostApiImpl;

    .line 196
    .line 197
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 198
    .line 199
    new-instance p4, Lio/flutter/plugins/webviewflutter/WebStorageHostApiImpl$WebStorageCreator;

    .line 200
    .line 201
    invoke-direct {p4}, Lio/flutter/plugins/webviewflutter/WebStorageHostApiImpl$WebStorageCreator;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-direct {p2, p3, p4}, Lio/flutter/plugins/webviewflutter/WebStorageHostApiImpl;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebStorageHostApiImpl$WebStorageCreator;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebStorageHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebStorageHostApi;)V

    .line 208
    .line 209
    .line 210
    new-instance p2, Lio/flutter/plugins/webviewflutter/PermissionRequestHostApiImpl;

    .line 211
    .line 212
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 213
    .line 214
    invoke-direct {p2, p1, p3}, Lio/flutter/plugins/webviewflutter/PermissionRequestHostApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestHostApi;)V

    .line 218
    .line 219
    .line 220
    new-instance p2, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackHostApiImpl;

    .line 221
    .line 222
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 223
    .line 224
    invoke-direct {p2, p1, p3}, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackHostApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$GeolocationPermissionsCallbackHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$GeolocationPermissionsCallbackHostApi;)V

    .line 228
    .line 229
    .line 230
    new-instance p2, Lio/flutter/plugins/webviewflutter/CustomViewCallbackHostApiImpl;

    .line 231
    .line 232
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 233
    .line 234
    invoke-direct {p2, p1, p3}, Lio/flutter/plugins/webviewflutter/CustomViewCallbackHostApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CustomViewCallbackHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CustomViewCallbackHostApi;)V

    .line 238
    .line 239
    .line 240
    new-instance p2, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;

    .line 241
    .line 242
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 243
    .line 244
    invoke-direct {p2, p1, p3}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 245
    .line 246
    .line 247
    invoke-static {p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method private updateContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->webViewHostApi:Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;->setContext(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->javaScriptChannelHostApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;

    .line 7
    .line 8
    new-instance v1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->setPlatformThreadHandler(Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getInstanceManager()Lio/flutter/plugins/webviewflutter/InstanceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->updateContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v3, v4, p1}, Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;-><init>(Landroid/content/res/AssetManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, v1, v2, v3}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugin/platform/PlatformViewRegistry;Landroid/content/Context;Lio/flutter/plugins/webviewflutter/FlutterAssetManager;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->updateContext(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->updateContext(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->stopFinalizationListener()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->updateContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
