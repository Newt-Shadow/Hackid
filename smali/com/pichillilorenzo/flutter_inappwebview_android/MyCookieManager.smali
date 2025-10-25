.class public Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;
.super Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;
.source "SourceFile"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "MyCookieManager"

.field public static final METHOD_CHANNEL_NAME:Ljava/lang/String; = "com.pichillilorenzo/flutter_inappwebview_cookiemanager"

.field public static cookieManager:Landroid/webkit/CookieManager;


# instance fields
.field public plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;)V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    const-string v2, "com.pichillilorenzo/flutter_inappwebview_cookiemanager"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 14
    .line 15
    return-void
.end method

.method public static getCookieExpirationDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "EEE, dd MMM yyyy hh:mm:ss z"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "GMT"

    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/Date;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static getCookieManager()Landroid/webkit/CookieManager;
    .locals 4

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "android.webkit.WebViewFactory.MissingWebViewPackageException"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    throw v1

    .line 38
    :catch_1
    return-object v0

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 40
    .line 41
    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieManager()Landroid/webkit/CookieManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAllCookies(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieManager()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 16
    .line 17
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$3;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public deleteCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieManager()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p5, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, "=; Path="

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, "; Max-Age=-1"

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    new-instance p4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, "; Domain="

    .line 51
    .line 52
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, ";"

    .line 71
    .line 72
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    sget-object p3, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 80
    .line 81
    new-instance p4, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$2;

    .line 82
    .line 83
    invoke-direct {p4, p0, p5}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p1, p2, p4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieManager()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p4, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    const-string v1, ";"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    array-length v2, v0

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v2, :cond_2

    .line 31
    .line 32
    aget-object v5, v0, v4

    .line 33
    .line 34
    const-string v6, "="

    .line 35
    .line 36
    const/4 v7, 0x2

    .line 37
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    aget-object v5, v5, v3

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, "=; Path="

    .line 56
    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, "; Max-Age=-1"

    .line 64
    .line 65
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v5, "; Domain="

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    sget-object v6, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    invoke-virtual {v6, p1, v5, v7}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 121
    .line 122
    .line 123
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-interface {p4, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->dispose()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 6
    .line 7
    return-void
.end method

.method public getCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieManager()Landroid/webkit/CookieManager;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sput-object v2, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "GET_COOKIE_INFO"

    .line 23
    .line 24
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const-string v5, ";"

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 33
    .line 34
    invoke-static {v2, v0}, Lo1/a;->b(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_e

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    array-length v0, v4

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v6, 0x0

    .line 80
    aget-object v0, v4, v6

    .line 81
    .line 82
    const-string v7, "="

    .line 83
    .line 84
    const/4 v8, 0x2

    .line 85
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aget-object v9, v0, v6

    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    array-length v10, v0

    .line 96
    const-string v11, ""

    .line 97
    .line 98
    const/4 v12, 0x1

    .line 99
    if-le v10, v12, :cond_4

    .line 100
    .line 101
    aget-object v0, v0, v12

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v0, v11

    .line 109
    :goto_2
    new-instance v10, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v13, "name"

    .line 115
    .line 116
    invoke-interface {v10, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v9, "value"

    .line 120
    .line 121
    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    const-string v9, "expiresDate"

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v13, "isSessionOnly"

    .line 131
    .line 132
    invoke-interface {v10, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    const-string v13, "domain"

    .line 136
    .line 137
    invoke-interface {v10, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string v14, "sameSite"

    .line 141
    .line 142
    invoke-interface {v10, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const-string v15, "isSecure"

    .line 146
    .line 147
    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const-string v12, "isHttpOnly"

    .line 151
    .line 152
    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    const-string v6, "path"

    .line 156
    .line 157
    invoke-interface {v10, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_d

    .line 165
    .line 166
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    const/4 v8, 0x1

    .line 175
    :goto_3
    array-length v0, v4

    .line 176
    if-ge v8, v0, :cond_d

    .line 177
    .line 178
    aget-object v0, v4, v8

    .line 179
    .line 180
    move-object/from16 v18, v2

    .line 181
    .line 182
    const/4 v2, 0x2

    .line 183
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    aget-object v17, v0, v16

    .line 190
    .line 191
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    move-object/from16 v17, v3

    .line 196
    .line 197
    array-length v3, v0

    .line 198
    move-object/from16 v19, v4

    .line 199
    .line 200
    const/4 v4, 0x1

    .line 201
    if-le v3, v4, :cond_5

    .line 202
    .line 203
    aget-object v0, v0, v4

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_4

    .line 210
    :cond_5
    move-object v0, v11

    .line 211
    :goto_4
    const-string v3, "Expires"

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    const-string v4, "MyCookieManager"

    .line 218
    .line 219
    if-eqz v3, :cond_6

    .line 220
    .line 221
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 222
    .line 223
    const-string v3, "EEE, dd MMM yyyy hh:mm:ss z"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .line 225
    move-object/from16 v20, v5

    .line 226
    .line 227
    :try_start_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 228
    .line 229
    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v0, :cond_c

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    .line 248
    .line 249
    goto/16 :goto_6

    .line 250
    .line 251
    :catch_0
    move-exception v0

    .line 252
    goto :goto_5

    .line 253
    :catch_1
    move-exception v0

    .line 254
    move-object/from16 v20, v5

    .line 255
    .line 256
    :goto_5
    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_6
    move-object/from16 v20, v5

    .line 261
    .line 262
    const-string v3, "Max-Age"

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_7

    .line 269
    .line 270
    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 275
    .line 276
    .line 277
    move-result-wide v21

    .line 278
    add-long v21, v21, v2

    .line 279
    .line 280
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :catch_2
    move-exception v0

    .line 289
    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_7
    const-string v3, "Domain"

    .line 294
    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_8

    .line 300
    .line 301
    invoke-interface {v10, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_8
    const-string v3, "SameSite"

    .line 306
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_9

    .line 312
    .line 313
    invoke-interface {v10, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_9
    const-string v3, "Secure"

    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_a

    .line 324
    .line 325
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 326
    .line 327
    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_a
    const-string v3, "HttpOnly"

    .line 332
    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_b

    .line 338
    .line 339
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_b
    const-string v3, "Path"

    .line 346
    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_c

    .line 352
    .line 353
    invoke-interface {v10, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 357
    .line 358
    move-object/from16 v3, v17

    .line 359
    .line 360
    move-object/from16 v2, v18

    .line 361
    .line 362
    move-object/from16 v4, v19

    .line 363
    .line 364
    move-object/from16 v5, v20

    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_d
    move-object/from16 v18, v2

    .line 369
    .line 370
    move-object/from16 v17, v3

    .line 371
    .line 372
    move-object/from16 v20, v5

    .line 373
    .line 374
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-object/from16 v3, v17

    .line 378
    .line 379
    move-object/from16 v2, v18

    .line 380
    .line 381
    move-object/from16 v5, v20

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :cond_e
    return-object v1
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 15

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v11, p2

    .line 5
    .line 6
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->init()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    sparse-switch v2, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    const-string v2, "getCookies"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x5

    .line 33
    goto :goto_0

    .line 34
    :sswitch_1
    const-string v2, "deleteAllCookies"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x4

    .line 44
    goto :goto_0

    .line 45
    :sswitch_2
    const-string v2, "deleteCookies"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v3, 0x3

    .line 55
    goto :goto_0

    .line 56
    :sswitch_3
    const-string v2, "setCookie"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v3, 0x2

    .line 66
    goto :goto_0

    .line 67
    :sswitch_4
    const-string v2, "removeSessionCookies"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/4 v3, 0x1

    .line 77
    goto :goto_0

    .line 78
    :sswitch_5
    const-string v2, "deleteCookie"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    const/4 v3, 0x0

    .line 88
    :goto_0
    const-string v1, "name"

    .line 89
    .line 90
    const-string v2, "path"

    .line 91
    .line 92
    const-string v4, "domain"

    .line 93
    .line 94
    const-string v5, "url"

    .line 95
    .line 96
    packed-switch v3, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :pswitch_0
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookies(Ljava/lang/String;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v11, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :pswitch_1
    invoke-virtual {p0, v11}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->deleteAllCookies(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :pswitch_2
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p0, v1, v3, v0, v11}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :pswitch_3
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object v5, v1

    .line 158
    check-cast v5, Ljava/lang/String;

    .line 159
    .line 160
    const-string v1, "value"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    move-object v6, v1

    .line 167
    check-cast v6, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    move-object v4, v1

    .line 174
    check-cast v4, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    move-object v7, v1

    .line 181
    check-cast v7, Ljava/lang/String;

    .line 182
    .line 183
    const-string v1, "expiresDate"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v1, :cond_6

    .line 192
    .line 193
    new-instance v2, Ljava/lang/Long;

    .line 194
    .line 195
    invoke-direct {v2, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    move-object v8, v2

    .line 199
    goto :goto_1

    .line 200
    :cond_6
    const/4 v1, 0x0

    .line 201
    move-object v8, v1

    .line 202
    :goto_1
    const-string v1, "maxAge"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    move-object v9, v1

    .line 209
    check-cast v9, Ljava/lang/Integer;

    .line 210
    .line 211
    const-string v1, "isSecure"

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    move-object v10, v1

    .line 218
    check-cast v10, Ljava/lang/Boolean;

    .line 219
    .line 220
    const-string v1, "isHttpOnly"

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object v13, v1

    .line 227
    check-cast v13, Ljava/lang/Boolean;

    .line 228
    .line 229
    const-string v1, "sameSite"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    move-object v14, v0

    .line 236
    check-cast v14, Ljava/lang/String;

    .line 237
    .line 238
    move-object v0, p0

    .line 239
    move-object v1, v3

    .line 240
    move-object v2, v5

    .line 241
    move-object v3, v6

    .line 242
    move-object v5, v7

    .line 243
    move-object v6, v8

    .line 244
    move-object v7, v9

    .line 245
    move-object v8, v10

    .line 246
    move-object v9, v13

    .line 247
    move-object v10, v14

    .line 248
    move-object/from16 v11, p2

    .line 249
    .line 250
    invoke-virtual/range {v0 .. v11}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :pswitch_4
    invoke-virtual {p0, v11}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->removeSessionCookies(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :pswitch_5
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    move-object v5, v1

    .line 269
    check-cast v5, Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    move-object v4, v1

    .line 276
    check-cast v4, Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    move-object v6, v0

    .line 283
    check-cast v6, Ljava/lang/String;

    .line 284
    .line 285
    move-object v0, p0

    .line 286
    move-object v1, v3

    .line 287
    move-object v2, v5

    .line 288
    move-object v3, v4

    .line 289
    move-object v4, v6

    .line 290
    move-object/from16 v5, p2

    .line 291
    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->deleteCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 293
    .line 294
    .line 295
    :goto_2
    return-void

    .line 296
    nop

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x48e2b011 -> :sswitch_5
        -0x367a0f43 -> :sswitch_4
        0x78c6166 -> :sswitch_3
        0x2c8cae64 -> :sswitch_2
        0x310501b9 -> :sswitch_1
        0x768e7e59 -> :sswitch_0
    .end sparse-switch

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeSessionCookies(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieManager()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 16
    .line 17
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$4;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$4;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieManager()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p11, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, "="

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, "; Path="

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p4, :cond_1

    .line 44
    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, "; Domain="

    .line 54
    .line 55
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :cond_1
    if-eqz p6, :cond_2

    .line 66
    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, "; Expires="

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {p6}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->getCookieExpirationDate(Ljava/lang/Long;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :cond_2
    if-eqz p7, :cond_3

    .line 92
    .line 93
    new-instance p3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p2, "; Max-Age="

    .line 102
    .line 103
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    :cond_3
    if-eqz p8, :cond_4

    .line 118
    .line 119
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_4

    .line 124
    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, "; Secure"

    .line 134
    .line 135
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    :cond_4
    if-eqz p9, :cond_5

    .line 143
    .line 144
    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    if-eqz p3, :cond_5

    .line 149
    .line 150
    new-instance p3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p2, "; HttpOnly"

    .line 159
    .line 160
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :cond_5
    if-eqz p10, :cond_6

    .line 168
    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p2, "; SameSite="

    .line 178
    .line 179
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p2, ";"

    .line 198
    .line 199
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    sget-object p3, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 207
    .line 208
    new-instance p4, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$1;

    .line 209
    .line 210
    invoke-direct {p4, p0, p11}, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p1, p2, p4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 214
    .line 215
    .line 216
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview_android/MyCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 219
    .line 220
    .line 221
    return-void
.end method
